part of 'confirmation_finish_bloc.dart';

@freezed
class ConfirmationFinishEvent with _$ConfirmationFinishEvent {
  factory ConfirmationFinishEvent.furtherClicked() = FurtherClicked;
}