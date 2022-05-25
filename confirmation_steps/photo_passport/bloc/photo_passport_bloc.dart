import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/domain/enums/confirm_document_part.dart';

part 'photo_passport_bloc.freezed.dart';
part 'photo_passport_event.dart';
part 'photo_passport_state.dart';

class PhotoPassportBloc extends Bloc<PhotoPassportEvent, PhotoPassportState> {
  PhotoPassportBloc({
    this.stage,
  }) : super(PhotoPassportState()) {
    on<PhotoButtonClicked>(_onPhotoButtonClicked);
    on<Init>(_onInit);
    on<BackClicked>(_onBackClicked);
    on<CameraPrepared>(_onCameraPrepared);
    on<CameraDisposed>(_onCameraDisposed);
    on<ChangeStage>(_onChangeStage);
    this.add(PhotoPassportEvent.init());
  }

  ConfirmDocumentPart? stage;

  FutureOr<void> _onInit(Init event, Emitter<PhotoPassportState> emit) async {
    emit(state.copyWith(photos: [File(''), File(''), File('')]));
  }

  FutureOr<void> _onPhotoButtonClicked(PhotoButtonClicked event, Emitter<PhotoPassportState> emit) async {
    List<File> photos = List.from(state.photos);
    ConfirmDocumentPart newStage = ConfirmDocumentPart.mainPage;
    switch (state.stage) {
      case (ConfirmDocumentPart.mainPage):
        newStage = ConfirmDocumentPart.registrationPage;
        photos[0] = event.image;
        if (!state.returnValue) {
          emit(state.copyWith(stage: newStage, photos: photos, action: StageChanged()));
        } else {
          emit(state.copyWith(returnValue: false, photos: photos, action: PhotosAreLoaded()));
        }
        break;
      case (ConfirmDocumentPart.registrationPage):
        newStage = ConfirmDocumentPart.selfieWithMainPage;
        photos[1] = event.image;
        if (!state.returnValue) {
          emit(state.copyWith(stage: newStage, photos: photos, action: StageChanged()));
        } else {
          emit(state.copyWith(returnValue: false, photos: photos, action: PhotosAreLoaded()));
        }
        break;
      case (ConfirmDocumentPart.selfieWithMainPage):
        photos[2] = event.image;
        newStage = ConfirmDocumentPart.mainPage;
        emit(state.copyWith(returnValue: false, photos: photos, action: PhotosAreLoaded()));
    }
  }

  FutureOr<void> _onChangeStage(ChangeStage event, Emitter<PhotoPassportState> emit) async {
    emit(state.copyWith(action: StageChanged(), stage: event.stage, returnValue: true));
  }

  FutureOr<void> _onCameraPrepared(CameraPrepared event, Emitter<PhotoPassportState> emit) async {
    emit(state.copyWith(cameraReady: true));
  }

  FutureOr<void> _onCameraDisposed(CameraDisposed event, Emitter<PhotoPassportState> emit) async {
    emit(state.copyWith(cameraReady: false));
  }

  FutureOr<void> _onBackClicked(BackClicked event, Emitter<PhotoPassportState> emit) async {
    switch (state.stage) {
      case ConfirmDocumentPart.mainPage:
        emit(state.copyWith(action: BackButtonClicked()));
        break;
      case ConfirmDocumentPart.registrationPage:
        emit(state.copyWith(action: StageChanged(), stage: ConfirmDocumentPart.mainPage));
        break;
      case ConfirmDocumentPart.selfieWithMainPage:
        emit(state.copyWith(action: StageChanged(), stage: ConfirmDocumentPart.registrationPage));
        break;
    }
  }
}
