part of 'photo_passport_bloc.dart';

@freezed
class PhotoPassportEvent with _$PhotoPassportEvent {
  factory PhotoPassportEvent.init() = Init;
  factory PhotoPassportEvent.backClicked() = BackClicked;
  factory PhotoPassportEvent.cameraPrepared() = CameraPrepared;
  factory PhotoPassportEvent.cameraDisposed() = CameraDisposed;
  factory PhotoPassportEvent.photoButtonClicked(ConfirmDocumentPart stage,File image) = PhotoButtonClicked;
  factory PhotoPassportEvent.changeStage(ConfirmDocumentPart stage) = ChangeStage;
}