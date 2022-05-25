part of 'confirmation_step_2_bloc.dart';

@freezed
class ConfirmationStep2State with _$ConfirmationStep2State {
  factory ConfirmationStep2State({
    BlocAction? action,
    @Default(PassportNumberForm.pure()) PassportNumberForm numberSeries,
    @Default(DefaultForm.pure()) DefaultForm issuedByWhom,
    @Default(DefaultForm.pure()) DefaultForm registrationCity,
    @Default(DefaultForm.pure()) DefaultForm registrationStreet,
    @Default(DefaultForm.pure()) DefaultForm registrationHouse,
    @Default(DefaultForm.pure()) DefaultForm registrationFlat,

    @Default(DefaultForm.pure()) DefaultForm residentialCity,
    @Default(DefaultForm.pure()) DefaultForm residentialStreet,
    @Default(DefaultForm.pure()) DefaultForm residentialHouse,
    @Default(DefaultForm.pure()) DefaultForm residentialFlat,

    @Default(false) bool addressesAreSame,
    @Default(false) bool buttonEnabled,
    DateTime? issueDate,
    String? errorMessage,
  }) = _ConfirmationStep2State;
}

class Step2IsCompleted extends BlocAction {}
class ShowCalendarBottomSheet extends BlocAction{}
class BackButtonClicked extends BlocAction {}
