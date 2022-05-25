import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dating_app/core/bloc/bloc_action.dart';
import 'package:dating_app/core/enums/message_type.dart';
import 'package:dating_app/localization/app_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

part 'record_video_bloc.freezed.dart';
part 'record_video_event.dart';
part 'record_video_state.dart';

class RecordVideoBloc extends Bloc<RecordVideoEvent, RecordVideoState> {
  RecordVideoBloc({required this.appLocalizations}) : super(RecordVideoState());
  AppLocalizations appLocalizations;
  File? _recordedVideoFile;
  StopWatchTimer? _stopWatchTimer;
  int _recordedVideoDuration = 0;
  int _stopWatchValueInMillis = 0;

  @override
  Stream<RecordVideoState> mapEventToState(
    RecordVideoEvent event,
  ) async* {
    yield* event.map(
      cameraPrepared: cameraPrepared,
      cameraDisposed: cameraDisposed,
      startRecordClicked: startRecordClicked,
      stopRecordClicked: stopRecordClicked,
      stopVideoClicked: stopVideoClicked,
      playVideoClicked: playVideoClicked,
      reshootClicked: reshootClicked,
      confirmClicked: confirmClicked,
      videoRecorded: videoRecorded,
      videoPlayerPrepared: videoPlayerPrepared,
    );
  }

  Stream<RecordVideoState> startRecordClicked(StartRecordClicked value) async* {
    yield state.copyWith(action: StartRecording(), status: RecordVideoStatus.recording);
    _resetTimer();
  }

  Stream<RecordVideoState> stopRecordClicked(StopRecordClicked value) async* {
    if (Duration(milliseconds: _stopWatchValueInMillis).compareTo(Duration(seconds: 60)) < 0) {
      yield state.copyWith(
          action: ShowMessage(
        messageType: MessageType.customMessage,
        title: appLocalizations.attention,
        message: appLocalizations.recordVideoAlert,
      ));
      yield state.copyWith(action: StopRecording(needReceiveVideoFile: false), status: RecordVideoStatus.initial);
    } else {
      yield state.copyWith(action: StopRecording(needReceiveVideoFile: true), status: RecordVideoStatus.finishRecord);
    }
    _disposeTimer();
  }

  Stream<RecordVideoState> playVideoClicked(PlayVideoClicked value) async* {
    yield state.copyWith(action: PlayVideo(), status: RecordVideoStatus.playingVideo);
  }

  Stream<RecordVideoState> stopVideoClicked(StopVideoClicked value) async* {
    yield state.copyWith(action: StopVideo(), status: RecordVideoStatus.videoPlayerReady);
  }

  Stream<RecordVideoState> reshootClicked(ReshootClicked value) async* {
    yield state.copyWith(
        // action: StartRecording(),
        status: RecordVideoStatus.initial);
  }

  Stream<RecordVideoState> confirmClicked(ConfirmClicked value) async* {
    if (_recordedVideoFile != null) {
      yield state.copyWith(action: ReturnVideoFile(_recordedVideoFile!));
    }
  }

  Stream<RecordVideoState> videoRecorded(VideoRecorded value) async* {
    _recordedVideoFile = value.videoFile;
    _recordedVideoDuration = _stopWatchValueInMillis;
    yield state.copyWith(action: PrepareVideoPlayer(_recordedVideoFile!), status: RecordVideoStatus.prepareVideoPlayer);
  }

  Stream<RecordVideoState> cameraPrepared(CameraPrepared value) async* {
    yield state.copyWith(cameraReady: true);
  }

  Stream<RecordVideoState> cameraDisposed(CameraDisposed value) async* {
    yield state.copyWith(cameraReady: false);
  }

  Stream<RecordVideoState> videoPlayerPrepared(VideoPlayerPrepared value) async* {
    yield state.copyWith(status: RecordVideoStatus.videoPlayerReady);
  }

  _resetTimer() async {
    await _disposeTimer();
    _stopWatchValueInMillis = 0;
    _stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countUp,
      onChange: (value) {
        _stopWatchValueInMillis = value;
      },
    );
    _stopWatchTimer!.onExecute.add(StopWatchExecute.start);
  }

  _disposeTimer() async {
    await _stopWatchTimer?.dispose();
  }
}
