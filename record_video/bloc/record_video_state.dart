part of 'record_video_bloc.dart';

@freezed
class RecordVideoState with _$RecordVideoState {
  factory RecordVideoState({
    BlocAction? action,
    @Default(RecordVideoStatus.initial) RecordVideoStatus status,
    @Default(false) bool cameraReady,
  }) = _RecordVideoState;
}

class ReturnVideoFile extends BlocAction {
  ReturnVideoFile(this.videoFile);

  File videoFile;
}

class ReturnInitialRecordingState extends BlocAction {}

class StartRecording extends BlocAction {}

class StopRecording extends BlocAction {
  StopRecording({required this.needReceiveVideoFile});
  bool needReceiveVideoFile;
}

class PrepareVideoPlayer extends BlocAction {
  PrepareVideoPlayer(this.videoFile);

  File videoFile;
}

class PlayVideo extends BlocAction {}

class StopVideo extends BlocAction {}

enum RecordVideoStatus {
  initial,
  recording,
  finishRecord,
  prepareVideoPlayer,
  videoPlayerReady,
  playingVideo,
}
