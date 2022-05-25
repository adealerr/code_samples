part of 'record_video_bloc.dart';

@freezed
class RecordVideoEvent with _$RecordVideoEvent {
  factory RecordVideoEvent.cameraPrepared() = CameraPrepared;
  factory RecordVideoEvent.cameraDisposed() = CameraDisposed;
  factory RecordVideoEvent.startRecordClicked() = StartRecordClicked;
  factory RecordVideoEvent.playVideoClicked() = PlayVideoClicked;
  factory RecordVideoEvent.stopVideoClicked() = StopVideoClicked;
  factory RecordVideoEvent.stopRecordClicked() = StopRecordClicked;
  factory RecordVideoEvent.reshootClicked() = ReshootClicked;
  factory RecordVideoEvent.confirmClicked() = ConfirmClicked;
  factory RecordVideoEvent.videoRecorded(File videoFile) = VideoRecorded;
  factory RecordVideoEvent.videoPlayerPrepared() = VideoPlayerPrepared;
}
