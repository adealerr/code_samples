part of 'confirmation_step_1_bloc.dart';

@freezed
class ConfirmationStep1Event with _$ConfirmationStep1Event {
  factory ConfirmationStep1Event.init() = Init;
  factory ConfirmationStep1Event.backClicked() = BackClicked;
  factory ConfirmationStep1Event.screenOpened() = ScreenOpened;
  factory ConfirmationStep1Event.nameChanged(String name) = NameChanged;
  factory ConfirmationStep1Event.secondNameChanged(String secondName) = SecondNameChanged;
  factory ConfirmationStep1Event.surnameChanged(String surname) = SurnameChanged;
  factory ConfirmationStep1Event.dateOfBirthChanged(DateTime? dateOfBirth) = DateOfBirthChanged;
  factory ConfirmationStep1Event.genderChanged(Gender gender) = GenderChanged;
  factory ConfirmationStep1Event.phoneChanged(PhoneNumber number) = PhoneChanged;
  factory ConfirmationStep1Event.emailChanged(String email) = EmailChanged;
  factory ConfirmationStep1Event.furtherClicked() = FurtherClicked;
  factory ConfirmationStep1Event.calendarClicked() = CalendarClicked;

}
