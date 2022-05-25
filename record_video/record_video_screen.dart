import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:dating_app/app/presentation/screens/record_video/bloc/record_video_bloc.dart';
import 'package:dating_app/app/resources/app_colors.dart';
import 'package:dating_app/app/resources/app_icons.dart';
import 'package:dating_app/app/resources/app_styles.dart';
import 'package:dating_app/app/widgets/app_bars/record_video_appbar.dart';
import 'package:dating_app/app/widgets/buttons/default_button.dart';
import 'package:dating_app/core/bloc/bloc_action.dart';
import 'package:dating_app/core/ui/widgets/base_bloc_state.dart';
import 'package:dating_app/core/ui/widgets/dialogs.dart';
import 'package:dating_app/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class RecordVideoScreen extends StatefulWidget {
  const RecordVideoScreen(this.camera);

  final CameraDescription camera;

  @override
  _RecordVideoScreenState createState() => _RecordVideoScreenState();
}

class _RecordVideoScreenState extends BaseBlocState<RecordVideoScreen, RecordVideoBloc> with WidgetsBindingObserver {
  CameraController? _cameraController;
  late RecordVideoAppBarController _recordVideoController;
  VideoPlayerController? _videoPlayerController;

  @override
  void initState() {
    _recordVideoController = RecordVideoAppBarController();
    WidgetsBinding.instance?.addObserver(this);
    SystemChrome.setSystemUIOverlayStyle(AppStyles.cameraStyle);
    _selectCamera(widget.camera);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_cameraController == null || _cameraController!.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      _cameraController!.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _selectCamera(_cameraController!.description);
    }
  }

  // @override //
  // Future<void> dispose() async {
  //   WidgetsBinding.instance?.removeObserver(this);
  //   // SystemChrome.setSystemUIOverlayStyle(AppStyles.mainStyle);
  //   await _cameraController?.dispose();
  //   await _videoPlayerController?.dispose();
  //   _recordVideoController.dispose();
  //   super.dispose();
  // }

  @override
  void dispose() { // нужна проверка
    WidgetsBinding.instance?.removeObserver(this);
    // SystemChrome.setSystemUIOverlayStyle(AppStyles.mainStyle);
    _cameraController?.dispose();
    _videoPlayerController?.dispose();
    _recordVideoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColors.black,
        body:
            // SafeArea( child:
            _buildBody(context),
        // ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<RecordVideoBloc, RecordVideoState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          BlocAction? action = state.action;
          if (action is StartRecording) {
            _startVideoRecording();
          }
          if (action is StopRecording) {
            _stopVideoRecording(context, action.needReceiveVideoFile);
          }

          if (action is ShowMessage) {
            _showMessage(context, action);
          }

          if (action is PlayVideo) {
            _playVideo(action);
          }

          if (action is StopVideo) {
            _stopVideo(action);
          }

          if (action is PrepareVideoPlayer) {
            _prepareVideoPlayer(action);
          }

          if (action is ReturnVideoFile) {
            SystemChrome.setSystemUIOverlayStyle(AppStyles.mainStyle);
            Navigator.pop(context, action.videoFile);
          }
        },
        child: Stack(
          children: [
            Positioned.fill(
              child: _buildCameraPreview(),
            ),
            Column(
              children: [
                Container(height: 44, color: AppColors.black),
                _buildAppBar(),
                _buildMainContent(),
                _buildFooter(),
              ],
            ),
          ],
        ),
      );

  Widget _buildAppBar() => BlocBuilder<RecordVideoBloc, RecordVideoState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          switch (state.status) {
            case RecordVideoStatus.initial:
              return RecordVideoAppBar(
                _recordVideoController,
                needShowStopWatch: true,
                onCancelPressed: () {
                  Navigator.pop(context);
                },
              );
            case RecordVideoStatus.recording:
              return RecordVideoAppBar(
                _recordVideoController,
                needShowStopWatch: true,
                onCancelPressed: () {
                  Navigator.pop(context);
                },
              );
            case RecordVideoStatus.finishRecord:
              return RecordVideoAppBar(
                _recordVideoController,
                needShowStopWatch: false,
                onCancelPressed: () {
                  Navigator.pop(context);
                },
              );
            case RecordVideoStatus.prepareVideoPlayer:
              return RecordVideoAppBar(
                _recordVideoController!,
                needShowStopWatch: false,
                onCancelPressed: () {
                  Navigator.pop(context);
                },
              );
            case RecordVideoStatus.videoPlayerReady:
              return RecordVideoAppBar(
                _recordVideoController!,
                needShowStopWatch: false,
                onCancelPressed: () {
                  Navigator.pop(context);
                },
              );
            case RecordVideoStatus.playingVideo:
              return RecordVideoAppBar(
                _recordVideoController,
                needShowStopWatch: false,
                onCancelPressed: () {
                  Navigator.pop(context);
                },
              );
            default:
              return RecordVideoAppBar(
                _recordVideoController,
                needShowStopWatch: true,
                onCancelPressed: () {
                  Navigator.pop(context);
                },
              );
          }
        },
      );

  Widget _buildFooter() => Container(
        color: AppColors.black,
        height: 190,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildFooterButtons(),
            _buildDescription(context),
          ],
        ),
      );

  double _getCameraScale(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double scale = screenSize.aspectRatio * _videoPlayerController!.value.aspectRatio;
    if (scale < 1) scale = 1 / scale;
    return scale;
  }

  double _getVideoPlayerScale(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double scale = screenSize.aspectRatio * _videoPlayerController!.value.aspectRatio;
    if (scale < 1) scale = 1 / scale;
    return scale;
  }

  Widget _buildCameraPreview() => BlocBuilder<RecordVideoBloc, RecordVideoState>(
        buildWhen: (previous, current) =>
            previous.cameraReady != current.cameraReady || previous.status != current.status,
        builder: (context, state) {
          if (state.cameraReady) {
            return Transform.scale(
              scale: _getCameraScale(context),
              child: Center(
                child: CameraPreview(_cameraController!),
              ),
            );
          } else {
            return Container();
          }
        },
      );

  Widget _buildDescription(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Text(
          AppLocalizations.of(context).recordVideoDescription,
          textAlign: TextAlign.center,
          style: const TextStyle(color: AppColors.grey40, fontWeight: FontWeight.w400, fontSize: 13),
        ),
      );

  Widget _buildFooterButtons() => BlocBuilder<RecordVideoBloc, RecordVideoState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          switch (state.status) {
            case RecordVideoStatus.initial:
              return _buildStartRecordButton(context);
            case RecordVideoStatus.recording:
              return _buildStopRecordButton(context);
            case RecordVideoStatus.finishRecord:
              return Spacer();
            case RecordVideoStatus.prepareVideoPlayer:
              return Spacer();
            case RecordVideoStatus.videoPlayerReady:
              return _buildReshootAndConfirmButtons(context);
            case RecordVideoStatus.playingVideo:
              return _buildReshootAndConfirmButtons(context);
            default:
              return Spacer();
          }
        },
      );

  Widget _buildStartRecordButton(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: GestureDetector(
          onTap: () {
            getBloc(context).add(RecordVideoEvent.startRecordClicked());
          },
          child: SvgPicture.asset(
            AppIcons.startRecord,
            width: 64,
            height: 64,
          ),
        ),
      );

  Widget _buildStopRecordButton(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: GestureDetector(
          onTap: () {
            getBloc(context).add(RecordVideoEvent.stopRecordClicked());
          },
          child: SvgPicture.asset(
            AppIcons.stopRecord,
            width: 64,
            height: 64,
          ),
        ),
      );

  Widget _buildReshootAndConfirmButtons(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Row(
          children: [
            Flexible(
              child: DefaultButton(
                text: AppLocalizations.of(context).reshoot,
                color: AppColors.grey80,
                textColor: AppColors.grey40,
                onPressed: () {
                  getBloc(context).add(RecordVideoEvent.reshootClicked());
                },
              ),
            ),
            const SizedBox(width: 9),
            Flexible(
              child: DefaultButton(
                text: AppLocalizations.of(context).use,
                onPressed: () {
                  getBloc(context).add(RecordVideoEvent.confirmClicked());
                },
              ),
            ),
          ],
        ),
      );

  Widget _buildMainContent() => BlocBuilder<RecordVideoBloc, RecordVideoState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          switch (state.status) {
            case RecordVideoStatus.initial:
              return Spacer();
            case RecordVideoStatus.recording:
              return Spacer();
            case RecordVideoStatus.finishRecord:
              return _buildLoader();
            case RecordVideoStatus.prepareVideoPlayer:
              return _buildLoader();
            case RecordVideoStatus.videoPlayerReady:
              return _buildVideoPlayer(state.status);
            case RecordVideoStatus.playingVideo:
              return _buildVideoPlayer(state.status);
            default:
              return Expanded(child: _buildCameraPreview());
          }
        },
      );

  Widget _buildLoader() => Expanded(
        child: Container(
          color: AppColors.black,
          child: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.accent),
            ),
          ),
        ),
      );

  Widget _buildVideoPlayer(RecordVideoStatus status) => Expanded(
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Transform.scale(
                scale: _getVideoPlayerScale(context),
                // alignment: Alignment.center,
                // transform: Matrix4.rotationY(pi),
                child: GestureDetector(
                    onTap: () {
                      getBloc(context).add(RecordVideoEvent.stopVideoClicked());
                    },
                    child: Center(
                        child: VideoPlayer(_videoPlayerController!))
                ),
              ),
            ),
            if (status == RecordVideoStatus.videoPlayerReady)
              Align(
                alignment: Alignment.center,
                child: _buildPlayVideoButton(),
              ),
          ],
        ),
      );

  Widget _buildPlayVideoButton() => GestureDetector(
        onTap: () {
          getBloc(context).add(RecordVideoEvent.playVideoClicked());
        },
        child: SvgPicture.asset(
          AppIcons.play,
          width: 80,
          height: 80,
        ),
      );

  void _showMessage(BuildContext context, ShowMessage action) {
    Dialogs.showMessageDialog(
      context: context,
      title: action.title,
      message: action.message!,
      buttonText: AppLocalizations.of(context).ok,
    );
  }

  void _startVideoRecording() async {
    try {
      await _cameraController!.startVideoRecording();
      _recordVideoController!.startStopWatch();
    } on CameraException catch (e) {
      print(e);
    }
  }

  void _stopVideoRecording(BuildContext context, bool needReceiveVideoFile) async {
    XFile? videoFile;
    try {
      _recordVideoController!.stopStopWatch();
      videoFile = await _cameraController!.stopVideoRecording();
    } on CameraException catch (e) {
      print(e);
    }
    if (videoFile != null && needReceiveVideoFile) {
      getBloc(context).add(RecordVideoEvent.videoRecorded(File(videoFile.path)));
    }
  }

  void _selectCamera(CameraDescription cameraDescription) async {
    if (_cameraController != null) {
      getBloc(context).add(RecordVideoEvent.cameraDisposed());
      await _cameraController!.dispose();
    }
    _cameraController = CameraController(cameraDescription, ResolutionPreset.high, enableAudio: false);

    _cameraController!.addListener(() {
      if (!_cameraController!.value.isInitialized) {
        getBloc(context).add(RecordVideoEvent.cameraDisposed());
      }
    });
    try {
      await _cameraController!.initialize();
      getBloc(context).add(RecordVideoEvent.cameraPrepared());
    } on CameraException catch (e) {}
  }

  void _playVideo(PlayVideo action) async {
    if (_videoPlayerController!.value.isInitialized) {
      _videoPlayerController!.play();
    }
  }

  void _stopVideo(StopVideo action) async {
    if (_videoPlayerController!.value.isInitialized) {
      _videoPlayerController!.pause();
      _videoPlayerController!.seekTo(Duration.zero);
    }
  }

  void _prepareVideoPlayer(PrepareVideoPlayer action) async {
    await _videoPlayerController?.dispose();
    // _videoPlayerController = VideoPlayerController.network(
    //   'https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4',
    // );
    _videoPlayerController = VideoPlayerController.file(action.videoFile);
    try {
      await _videoPlayerController!.initialize();
      getBloc(context).add(VideoPlayerPrepared());
    } catch (e) {}
  }
}
