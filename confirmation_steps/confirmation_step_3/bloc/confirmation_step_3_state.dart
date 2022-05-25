part of 'confirmation_step_3_bloc.dart';

@freezed
class ConfirmationStep3State with _$ConfirmationStep3State {
  factory ConfirmationStep3State({
    BlocAction? action,
    @Default([]) List<DocumentPartEntity> documentParts,
    @Default([]) List<File> photos,
  }) = _ConfirmationStep3State;
}

class Step3IsCompleted extends BlocAction{}
class BackButtonCLicked extends BlocAction{}
class ChangePhoto extends BlocAction {
  ChangePhoto({
    required this.stage,
  });

  ConfirmDocumentPart stage;
}


