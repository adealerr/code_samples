import 'dart:async';

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:video_player/video_player.dart';
import 'package:youz/app/resources/app_colors.dart';
import 'package:youz/domain/entities/story_entity.dart';
import 'package:youz/domain/enums/story_type.dart';

class StoriesStepIndicator extends StatefulWidget {
  const StoriesStepIndicator({
    required this.stories,
    required this.story,
    required this.widthOfStep,
    required this.widthOfDivider,
    this.controller,
    this.videoController,
    // this.onStoryChanged,
  });

  final List<StoryEntity> stories;
  final double widthOfDivider;
  final double widthOfStep;
  final VideoPlayerController? videoController;
  final StoriesIndicatorController? controller;
  final StoryEntity story;
  // final VoidCallback? onStoryChanged;

  @override
  _StoriesStepIndicatorState createState() => _StoriesStepIndicatorState();
}

class _StoriesStepIndicatorState extends State<StoriesStepIndicator> {
  // VideoPlayerController? _videoController = widget.videoController;
  Timer? _timer;
  int _currentProgress = 0;

  @override
  void initState() {
    super.initState();
    if (widget.story.type == StoryType.video) {
      widget.videoController?.initialize();
      setState(() {});
    }
    _setUpControllerListeners();
  }

  @override
  void didUpdateWidget(covariant StoriesStepIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    // if (widget.story.type == StoryType.video) {
    //   _videoController = VideoPlayerController.network(widget.story.url);
    //   _videoController?.initialize();
    //   setState(() {});
    // }
    _setUpControllerListeners();
  }

  @override
  void dispose() {
    // widget.videoController?.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        // width: MediaQuery.of(context).size.width,
        height: 4,
        child: ListView.separated(
          // Row(
          //   children: [
          //     for (int index = 0; index < widget.stories.length; index++) _buildBody(context, index),
          //   ],
          // ),
          // );
          physics: NeverScrollableScrollPhysics(),
          // shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: widget.stories.length,
          itemBuilder: (BuildContext context, int index) => Container(
            width: widget.widthOfStep,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.white15,
              borderRadius: BorderRadius.circular(3),
            ),
            child: (widget.stories.indexOf(widget.story) == index)
                ? _buildCurrentStep(context)
                : (widget.stories.indexOf(widget.story) > index)
                    ? _buildFinishedStep(context)
                    : SizedBox(),
          ),
          separatorBuilder: (BuildContext context, int index) => SizedBox(width: widget.widthOfDivider),
        ),
      );

  // StepProgressIndicator(
  //   size: 4,
  //   currentStep: widget.stories.indexOf(widget.story),
  //   totalSteps: widget.stories.length,
  //   padding: 5,
  //   customStep: (index, _, size) => LayoutBuilder(builder: (_, boxConstraints) {
  //     var x = boxConstraints.maxWidth;
  //     return Container(
  //       // height: 4,
  //       decoration: BoxDecoration(
  //         color: AppColors.white15,
  //         borderRadius: BorderRadius.circular(3),
  //       ),
  //       child: (widget.stories.indexOf(widget.story) == index)
  //           ? _buildCurrentStep(context, x)
  //           : (widget.stories.indexOf(widget.story) > index)
  //               ? _buildFinishedStep(context)
  //               : SizedBox(),
  //     );
  //   }),
  // );

  Widget _buildCurrentStep(context) => Align(
    alignment: Alignment.centerLeft,
    child: SizedBox(
          width: _currentProgress * widget.widthOfStep / 100,
          child: Container(
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.accent,
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
  );

  Widget _buildFinishedStep(BuildContext context) => Container(
        // height: 4,
        decoration: BoxDecoration(
          color: AppColors.accent,
          borderRadius: BorderRadius.circular(3),
        ),
      );

  void _setUpControllerListeners() {
    widget.controller?.start = () {
      if (widget.story.type == StoryType.video) {
        // widget.videoController != null ?
        _startTimer(widget.videoController!.value.duration.inMilliseconds.toDouble());
      // : null;
      } else
        _startTimer(widget.story.durationInMillis);
    };
    widget.controller?.recovery = () {
      if (widget.story.type == StoryType.video) {
        _recoveryTimer(widget.videoController!.value.duration.inMilliseconds.toDouble());
      } else
        _recoveryTimer(widget.story.durationInMillis);
    };
    widget.controller?.stop = () {
      _timer?.cancel();
    };
    widget.controller?.clear = () {
      _currentProgress = 0;
      _timer?.cancel();
    };
  }

  void _startTimer(double storyDuration) {
    _currentProgress = 0;
    _timer?.cancel();
    _timer = Timer.periodic(Duration(milliseconds: storyDuration ~/ 100), (timer) {
      if (_currentProgress < 100) {
        setState(() {
          _currentProgress += 1;
        });
      } else {
        _currentProgress = 0;
        _timer?.cancel();
      }
    });
  }

  void _recoveryTimer(double storyDuration) {
    _timer = Timer.periodic(Duration(milliseconds: storyDuration ~/ 100), (timer) {
      if (_currentProgress < 100) {
        setState(() {
          _currentProgress += 1;
        });
      } else {
        _currentProgress = 0;
        _timer?.cancel();
      }
    });
  }
}

class StoriesIndicatorController {
  StoriesIndicatorController({
    this.start,
    this.recovery,
    this.stop,
    this.clear,
  });

  VoidCallback? start;
  VoidCallback? recovery;
  VoidCallback? stop;
  VoidCallback? clear;
}
