import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youz/app/navigation/navigation_action.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/core/enums/gender.dart';
import 'package:youz/core/failures.dart';
import 'package:youz/data/gateways/local/preferences_local_gateway.dart';
import 'package:youz/data/repositories/profile_repository.dart';
import 'package:youz/domain/enums/confirm_document_part.dart';
import 'package:youz/domain/enums/confirmation_stage.dart';

part 'confirmation_steps_bloc.freezed.dart';
part 'confirmation_steps_event.dart';
part 'confirmation_steps_state.dart';

class ConfirmationStepsBloc extends Bloc<ConfirmationStepsEvent, ConfirmationStepsState> {
  ConfirmationStepsBloc({
    required this.profileRepository,
    required this.preferencesLocalGateway,
  }) : super(ConfirmationStepsState()) {
    on<Init>(_onInit);
    on<Step1Completed>(_onStep1Completed);
    on<Step2Completed>(_onStep2Completed);
    on<PhotosLoaded>(_onPhotosLoaded);
    on<Step3Completed>(_onStep3Completed);
    on<BackClicked>(_onBackClicked);
    this.add(ConfirmationStepsEvent.init());
  }

  ProfileRepository profileRepository;
  PreferencesLocalGateway preferencesLocalGateway;

  FutureOr<void> _onInit(Init event, Emitter<ConfirmationStepsState> emit) async {
    emit(state.copyWith(stage: ConfirmationStage.step1));
  }

  FutureOr<void> _onStep1Completed(Step1Completed event, Emitter<ConfirmationStepsState> emit) async {
    emit(state.copyWith(
      name: event.name,
      surname: event.surname,
      secondName: event.secondName,
      dateOfBirth: event.dateOfBirth,
      phone: event.phone,
      email: event.email,
    ));
    emit(state.copyWith(stage: ConfirmationStage.step2));
  }

  FutureOr<void> _onStep2Completed(Step2Completed event, Emitter<ConfirmationStepsState> emit) async {
    emit(
      state.copyWith(
        numberSeries: event.numberSeries,
        issuedByWhom: event.issuedByWhom,
        issueDate: event.issueDate,
        registrationCity: event.registrationCity,
        registrationStreet: event.registrationStreet,
        registrationHouse: event.registrationHouse,
        registrationFlat: event.registrationFlat,
        residentialCity: event.residentialCity,
        residentialStreet: event.residentialStreet,
        residentialHouse: event.residentialHouse,
        residentialFlat: event.residentialFlat,
      ),
    );
    emit(state.copyWith(stage: ConfirmationStage.takingPhotos));
  }

  FutureOr<void> _onPhotosLoaded(PhotosLoaded event, Emitter<ConfirmationStepsState> emit) async {
    emit(state.copyWith(stage: ConfirmationStage.step3, photos: event.documentParts));
  }

  FutureOr<void> _onStep3Completed(Step3Completed event, Emitter<ConfirmationStepsState> emit) async {
    await _createAccount(emit, needShowLoader: true);
    await _verifyProfile(emit, photo: state.photos[0], type: 'main', needShowLoader: true);
    await _verifyProfile(emit, photo: state.photos[1], type: 'registration', needShowLoader: true);
    await _verifyProfile(emit, photo: state.photos[2], type: 'selfie', needShowLoader: true);
    emit(state.copyWith(stage: ConfirmationStage.finishStep));
  }

  FutureOr<void> _onBackClicked(BackClicked event, Emitter<ConfirmationStepsState> emit) async {
    ConfirmationStage stage = state.stage;
    switch (stage) {
      case ConfirmationStage.step1:
        // emit(state.copyWith(stage: ConfirmationStage.step1));
        emit(state.copyWith(action: NavigateBack()));
        break;
      case ConfirmationStage.step2:
        emit(state.copyWith(stage: ConfirmationStage.step1));
        break;
      case ConfirmationStage.takingPhotos:
        emit(state.copyWith(
          stage: ConfirmationStage.step2,
        ));
        break;
      case ConfirmationStage.step3:
        if (event.photoPassportStage == ConfirmDocumentPart.selfieWithMainPage) {
          emit(state.copyWith(cameraLensDirection: CameraLensDirection.front));
        } else {
          emit(state.copyWith(cameraLensDirection: CameraLensDirection.back));
        }
        emit(state.copyWith(stage: ConfirmationStage.takingPhotos, photoPassportStage: event.photoPassportStage));
        break;
      case ConfirmationStage.finishStep:
        emit(state.copyWith(stage: ConfirmationStage.step3));
        break;
    }
  }

  FutureOr<void> _createAccount(Emitter<ConfirmationStepsState> emit, {bool needShowLoader = false}) async {
    if (needShowLoader) emit(state.copyWith(action: ShowLoader()));

    String token = (await preferencesLocalGateway.getToken()) ?? '';

    Either<dynamic, Failure> result = await profileRepository.createProfile(
      token: token,
      name: state.name ?? '',
      secondName: state.secondName ?? '',
      surname: state.surname ?? '',
      dateOfBirth: state.dateOfBirth ?? DateTime.now(),
      gender: state.gender ?? Gender.man,
      phone: state.phone ?? '',
      email: state.email ?? '',
      numberSeries: state.numberSeries ?? '',
      issuedByWhom: state.issuedByWhom ?? '',
      issueDate: state.issueDate ?? DateTime.now(),
      registrationCity: state.registrationCity ?? '',
      registrationStreet: state.registrationStreet ?? '',
      registrationHouse: state.registrationHouse ?? '',
      registrationFlat: state.registrationFlat ?? '',
      residentialCity: state.residentialCity ?? '',
      residentialStreet: state.residentialStreet ?? '',
      residentialHouse: state.residentialHouse ?? '',
      residentialFlat: state.residentialFlat ?? '',
    );
    result.fold(
      (data) => null,
      (error) => null,
    );
    if (needShowLoader) emit(state.copyWith(action: HideLoader()));
  }

  FutureOr<void> _verifyProfile(
    Emitter<ConfirmationStepsState> emit, {
    bool needShowLoader = false,
    required File photo,
    required String type,
  }) async {
    if (needShowLoader) emit(state.copyWith(action: ShowLoader()));

    String token = (await preferencesLocalGateway.getToken()) ?? '';

    Either<dynamic, Failure> result = await profileRepository.verifyProfile(
      token: token,
      document: photo,
      type: type,
    );
    result.fold(
      (data) => null,
      (error) => null,
    );
    if (needShowLoader) emit(state.copyWith(action: HideLoader()));
  }
}
