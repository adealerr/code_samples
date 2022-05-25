import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youz/app/resources/app_colors.dart';
import 'package:youz/app/widgets/buttons/circle_close_button.dart';
import 'package:youz/app/widgets/buttons/default_button.dart';
import 'package:youz/app/widgets/loaders/circular_progress.dart';
import 'package:youz/domain/entities/story_entity.dart';
import 'package:youz/domain/enums/story_button_type.dart';
import 'package:youz/domain/enums/story_type.dart';
import 'package:youz/localization/app_localizations.dart';

class StoryCard extends StatefulWidget {
  StoryCard({
    required this.story,
    this.videoController,
    this.onClosePressed,
    this.onPreviousClicked,
    this.onNextClicked,
    this.onPointerDown,
    this.onPointerUp,
    this.videoLoading = false,
    this.buttonText,
    this.onButtonPressed,
  });

  final StoryEntity story;
  final VideoPlayerController? videoController;
  final VoidCallback? onClosePressed;
  final VoidCallback? onPreviousClicked;
  final VoidCallback? onNextClicked;
  final VoidCallback? onPointerDown;
  final VoidCallback? onPointerUp;
  final VoidCallback? onButtonPressed;
  final bool videoLoading;
  final String? buttonText;

  @override
  State<StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  VideoPlayerController? _videoController = widget.videoController;
  bool _shortPressed = true;


  @override
  Widget build(BuildContext context) => Stack(
        children: [
          GestureDetector(
            onTap: () {
              _shortPressed = true;
            },
            onTapUp: (TapUpDetails) {
              _onTapDown(context, TapUpDetails);
            },
            onTapDown: (TapDownDetails) {
              widget.onPointerDown?.call();
            },
            onLongPressStart: (LongPressStartDetails) {
              _shortPressed = false;
            },
            onLongPressEnd: (LongPressEndDetails) {
              widget.onPointerUp?.call();
              _shortPressed = true;
            },
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(36),
                topLeft: Radius.circular(36),
              ),
              child: _buildBody(),
            ),
          ),
          Positioned(
            top: 24,
            right: 24,
            child: CircleCloseButton(
              onPressed: () {
                widget.onClosePressed?.call();
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 40,
                left: 16,
                right: 16,
              ),
              child: _buildButton(context),
            ),
          ),
        ],
      );

  void _onTapDown(context, TapUpDetails details) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double tapPosition = details.globalPosition.dx;

    if (_shortPressed) {
      if (tapPosition < screenWidth / 3) {
        return widget.onPreviousClicked?.call();
      } else {
        return widget.onNextClicked?.call();
      }
    }
  }

  Widget _buildBody() => SizedBox(
        height: MediaQuery.of(context).size.height -
            MediaQuery.of(context).viewInsets.bottom -
            MediaQuery.of(context).viewInsets.top -
            40,
        child: widget.videoLoading
            ? ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(36),
                  topLeft: Radius.circular(36),
                ),
                child: Container(
                  color: AppColors.white15,
                  child: Center(
                    child: CircularProgress(
                      size: 56,
                      primaryColor: AppColors.gray3,
                    ),
                  ),
                ),
              )
            : (widget.story.type == StoryType.image)
                ? CachedNetworkImage(
                    imageUrl: widget.story.url,
                    fit: BoxFit.cover,
                  )
                :
                FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height -
                          MediaQuery.of(context).viewInsets.bottom -
                          MediaQuery.of(context).viewInsets.top -
                          40,
                      child: AspectRatio(
                          aspectRatio: _videoController!.value.aspectRatio, // _getVideoPlayerScale(context),
                          child: VideoPlayer(_videoController!)),
                    ),
                  ),
      );

  Widget _buildButton(BuildContext context) => DefaultButton(
        text: (widget.story.buttonType == StoryButtonType.url)
            ? AppLocalizations.of(context).moreInfo
            : widget.buttonText ?? AppLocalizations.of(context).moreInfo,
        color: AppColors.white,
        textColor: AppColors.onAccent,
        onPressed: () {
          widget.onButtonPressed?.call();
        },
      );
}
