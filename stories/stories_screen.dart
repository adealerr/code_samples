import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:youz/app/navigation/app_navigator.dart';
import 'package:youz/app/navigation/navigation_action.dart';
import 'package:youz/app/resources/app_colors.dart';
import 'package:youz/app/resources/app_styles.dart';
import 'package:youz/app/widgets/lists/story_card.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/core/ui/widgets/base_bloc_state.dart';
import 'package:youz/app/widgets/indicators/stories_step_indicator.dart';
import 'package:youz/core/ui/widgets/loader_dialog.dart';
import 'package:youz/domain/entities/story_entity.dart';
import 'package:youz/domain/enums/story_type.dart';

import 'bloc/stories_bloc.dart';

class StoriesScreen extends StatefulWidget {
  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends BaseBlocState<StoriesScreen, StoriesBloc> with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animController;
  late VideoPlayerController _videoController;
  late StoriesIndicatorController _stepIndicatorController;
  var _operation;

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(AppStyles.splashStyle);
    _stepIndicatorController = StoriesIndicatorController();
    _pageController = PageController();
    _animController = AnimationController(vsync: this);
    _animController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animController.stop();
        _animController.reset();
        getBloc(context).add(StoriesEvent.storyCompleted());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _operation?.cancel();
    _pageController.dispose();
    _animController.dispose();
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<StoriesBloc, StoriesState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
          if (action is LoadStory) {
            _operation = CancelableOperation.fromFuture(
              _loadStory(
                story: action.story,
                needAnimate: action.needAnimate,
                needShowFirst: action.needShowFirst,
                indexPage: action.indexPage,
              ),
            );
          }
          if (action is ShowLoader) {
            LoaderDialog.show(context: context);
          }
          if (action is StoriesEnd) {
            setState(() {
              _videoController = null;
              // _videoController?.dispose();
              _stepIndicatorController.clear?.call();
            });
          }
          if (action is HideLoader) {
            Navigator.of(context).pop();
          }
          if (action is PauseStory) {
            _stepIndicatorController.stop?.call();
            _videoController?.pause();
            _animController.stop(canceled: false);
          }
          if (action is ContinueStory) {
            _stepIndicatorController.recovery?.call();
            _videoController?.play();
            _animController.forward();
          }
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.darkBlue,
              gradient: RadialGradient(
                  stops: [0.001, 1],
                  radius: 0.6,
                  colors: [
                    AppColors.startGradientSplashBackground,
                    AppColors.endGradientSplashBackground,
                  ]),
            ),
            child: Column(
                children: [
                  _buildStepProgress(),
                  Expanded(
                    child: _buildContent(),
                  ),
                ]),
          ),
        ),
      );

  Widget _buildStepProgress() => BlocBuilder<StoriesBloc, StoriesState>(
      buildWhen: (previous, current) =>
          previous.stories != current.stories || previous.currentStory != current.currentStory,
      builder: (context, state) {
        double widthOfStepWDivider = (MediaQuery.of(context).size.width - 32) / state.stories.length; // - paddings
        double widthOfDivider = widthOfStepWDivider / 5;
        if (widthOfDivider > 10) widthOfDivider = 10;
        double widthOfStep = widthOfStepWDivider - widthOfDivider;
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 16),
          child: StoriesStepIndicator(
            story: state.currentStory,
            stories: state.stories,
            controller: _stepIndicatorController,
            videoController: _videoController,
            widthOfStep: widthOfStep,
            widthOfDivider: widthOfDivider,
          ),
        );
      });

  Widget _buildContent() => BlocBuilder<StoriesBloc, StoriesState>(
        buildWhen: (previous, current) =>
            previous.stories != current.stories || previous.currentStory != current.currentStory
                || previous.videoLoading != current.videoLoading,
        builder: (context, state) => PageView.builder(
          controller: _pageController,
          itemCount: state.stories.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => StoryCard(
            story: state.stories[index],
            videoController: _videoController,
            videoLoading: (state.stories[index] == state.currentStory) ? state.videoLoading : false,
            onClosePressed: () {
              getBloc(context).add(StoriesEvent.onCloseClicked());
            },
            onPointerDown: () {
              getBloc(context).add(StoriesEvent.onLongPressed());
            },
            onPointerUp: () {
              getBloc(context).add(StoriesEvent.onLongPressCanceled());
            },
            onNextClicked: () {
              getBloc(context).add(StoriesEvent.onNextPressed());
            },
            onPreviousClicked: () {
              getBloc(context).add(StoriesEvent.onPreviousPressed());
            },
          ),
        ),
      );

  Future<void> _loadStory(
      {required StoryEntity story, bool needAnimate = true, int? indexPage, bool needShowFirst = false}) async {
    _animController.stop();
    _animController.reset();
    if (story.type == StoryType.image) {
      _stepIndicatorController.clear?.call();
      _animController.duration = Duration(microseconds: (story.durationInMillis * 1000).toInt());
      _stepIndicatorController.start?.call();
      _animController.forward();
      // _stepIndicatorController.start?.call();
    } else {
      getBloc(context).add(StoriesEvent.videoInitializing());
      _stepIndicatorController.clear?.call();
      _videoController = null;
      _videoController?.dispose();
      _videoController = VideoPlayerController.network(story.url)
      // ;
      // setState(() {
      //   _videoController?
    ..initialize().then((_) {
          if (_videoController!.value.isInitialized) {
            _animController.duration = _videoController?.value.duration;
            _videoController?.play().then((_) {
              getBloc(context).add(StoriesEvent.videoInitializing());
              _stepIndicatorController.start?.call();
              _animController.forward();
            });
            // if (_videoController!.value.isPlaying) {
            //
            // }
          }});
          setState(() {});
        // });
    }
    if (needAnimate) {
      _pageController.animateToPage(
        indexPage!,
        duration: needShowFirst ? const Duration(milliseconds: 1) : const Duration(milliseconds: 300),
        curve: needShowFirst ? Curves.linear : Curves.easeInOut,
      );
    }
  }
}
