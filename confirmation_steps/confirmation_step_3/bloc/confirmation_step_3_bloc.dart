import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/domain/entities/document_part_entity.dart';
import 'package:youz/domain/enums/confirm_document_part.dart';

part 'confirmation_step_3_bloc.freezed.dart';
part 'confirmation_step_3_event.dart';
part 'confirmation_step_3_state.dart';

class ConfirmationStep3Bloc extends Bloc<ConfirmationStep3Event, ConfirmationStep3State> {
  ConfirmationStep3Bloc() : super(ConfirmationStep3State()) {
    on<Init>(_onInit);
    on<BackClicked>(_onBackClicked);
    on<ScreenOpened>(_onScreenOpened);
    on<ConfirmAccountClicked>(_onConfirmAccountClicked);
    on<LoadPhotos>(_onLoadPhotos);
    on<ChangePhotoClicked>(_onChangePhotoClicked);
    this.add(ConfirmationStep3Event.init());
  }

  FutureOr<void> _onInit(Init event, Emitter<ConfirmationStep3State> emit) async {
  }


  FutureOr<void> _onChangePhotoClicked(ChangePhotoClicked event, Emitter<ConfirmationStep3State> emit) async {
    emit(state.copyWith(action: ChangePhoto(stage: event.stage)));
  }

  FutureOr<void> _onLoadPhotos(LoadPhotos event, Emitter<ConfirmationStep3State> emit) async {
    if (event.photos.length >= 3) {
      List<DocumentPartEntity> documents = [
        DocumentPartEntity(documentPart: ConfirmDocumentPart.mainPage, file: event.photos[0]),
        DocumentPartEntity(documentPart: ConfirmDocumentPart.registrationPage, file: event.photos[1]),
        DocumentPartEntity(documentPart: ConfirmDocumentPart.selfieWithMainPage, file: event.photos[2])
      ];
      emit(state.copyWith(documentParts: documents));
    }
  }

  FutureOr<void> _onBackClicked(BackClicked event, Emitter<ConfirmationStep3State> emit) async {
    emit(state.copyWith(action: BackButtonCLicked()));
  }

  FutureOr<void> _onScreenOpened(ScreenOpened event, Emitter<ConfirmationStep3State> emit) async {
    // emit(state.copyWith(name: event.name));
  }

  FutureOr<void> _onConfirmAccountClicked(ConfirmAccountClicked event, Emitter<ConfirmationStep3State> emit) async {
    emit(state.copyWith(action: Step3IsCompleted()));
  }
}
