part of 'confirmation_step_3_bloc.dart';

@freezed
class ConfirmationStep3Event with _$ConfirmationStep3Event {
  factory ConfirmationStep3Event.init() = Init;
  factory ConfirmationStep3Event.loadPhotos({required List<File> photos}) = LoadPhotos;
  factory ConfirmationStep3Event.backClicked() = BackClicked;
  factory ConfirmationStep3Event.screenOpened() = ScreenOpened;
  factory ConfirmationStep3Event.confirmAccountClicked() = ConfirmAccountClicked;
  factory ConfirmationStep3Event.changePhotoClicked(ConfirmDocumentPart stage) = ChangePhotoClicked;
}
