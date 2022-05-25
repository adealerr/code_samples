part of 'confirmation_step_1_bloc.dart';

@freezed
class ConfirmationStep1State with _$ConfirmationStep1State {
  factory ConfirmationStep1State({
    BlocAction? action,
    String? name,
    String? secondName,
    String? surname,
    DateTime? dateOfBirth,
    Gender? gender,
    String? phoneNumber,
    @Default(EmailForm.dirty()) EmailForm email,
    @Default(false) bool buttonEnabled,
  }) = _ConfirmationStep1State;
}

class ShowCalendarBottomSheet extends BlocAction{}
class Step1IsCompleted extends BlocAction{}
class BackButtonCLicked extends BlocAction{}