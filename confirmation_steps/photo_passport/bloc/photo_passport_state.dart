part of 'photo_passport_bloc.dart';

@freezed
class PhotoPassportState with _$PhotoPassportState {
  factory PhotoPassportState({
    BlocAction? action,
    @Default(ConfirmDocumentPart.mainPage) ConfirmDocumentPart stage,
    @Default([]) List<File> photos,
    @Default(false) bool cameraReady,
    @Default(false) bool returnValue,
  }) = _PhotoPassportState;
}

class PhotosAreLoaded extends BlocAction{}
class BackButtonClicked extends BlocAction{}
class StageChanged extends BlocAction{}

