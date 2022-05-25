part of 'confirmation_steps_bloc.dart';

@freezed
class ConfirmationStepsEvent with _$ConfirmationStepsEvent {

  factory ConfirmationStepsEvent.init() = Init;


  factory ConfirmationStepsEvent.step1Completed({
    required String name,
    @Default('') String secondName,
    required String surname,
    required DateTime dateOfBirth,
    required Gender gender,
    required String phone,
    @Default('') String email,
  }) = Step1Completed;

  factory ConfirmationStepsEvent.step2Completed({
    required String numberSeries,
    required String issuedByWhom,
    required String registrationCity,
    required String registrationStreet,
    required String registrationHouse,
    required String registrationFlat,
    required String residentialCity,
    required String residentialStreet,
    required String residentialHouse,
    required String residentialFlat,
    required DateTime issueDate,
  }) = Step2Completed;

  factory ConfirmationStepsEvent.step3Completed() = Step3Completed;

  factory ConfirmationStepsEvent.photosLoaded({
    required List<File> documentParts,
  }) = PhotosLoaded;

  factory ConfirmationStepsEvent.verifyAccount() = VerifyAccount;

  factory ConfirmationStepsEvent.backClicked({ConfirmDocumentPart? photoPassportStage}) = BackClicked;
}
