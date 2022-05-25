part of 'confirmation_steps_bloc.dart';

@freezed
class ConfirmationStepsState with _$ConfirmationStepsState {
  factory ConfirmationStepsState({
    BlocAction? action,
    @Default(ConfirmationStage.step1) ConfirmationStage stage,
    @Default(ConfirmDocumentPart.mainPage) ConfirmDocumentPart? photoPassportStage,
    @Default(CameraLensDirection.back) CameraLensDirection cameraLensDirection,
    String? name,
    String? secondName,
    String? surname,
    DateTime? dateOfBirth,
    Gender? gender,
    String? phone,
    String? email,
    String? numberSeries,
    String? issuedByWhom,
    String? registrationCity,
    String? registrationStreet,
    String? registrationHouse,
    String? registrationFlat,
    String? residentialCity,
    String? residentialStreet,
    String? residentialHouse,
    String? residentialFlat,
    DateTime? issueDate,
    @Default([]) List<File> photos,
  }) = _ConfirmationStepsState;
}
