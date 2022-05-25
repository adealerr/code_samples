import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libphonenumber_plugin/libphonenumber_plugin.dart';
import 'package:youz/app/navigation/navigation_action.dart';
import 'package:youz/app/navigation/navigation_type.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/core/enums/gender.dart';
import 'package:youz/core/utils/phone_utils/phone_number.dart';
import 'package:youz/core/validation/email.dart';
import 'package:youz/core/validation/phone.dart';
import 'package:youz/data/gateways/local/preferences_local_gateway.dart';

part 'confirmation_step_1_bloc.freezed.dart';

part 'confirmation_step_1_event.dart';

part 'confirmation_step_1_state.dart';

class ConfirmationStep1Bloc extends Bloc<ConfirmationStep1Event, ConfirmationStep1State> {
  ConfirmationStep1Bloc({
    required this.preferencesLocalGateway,
  }) : super(ConfirmationStep1State()) {
    on<Init>(_init);
    on<NameChanged>(_onNameChanged);
    on<SecondNameChanged>(_onSecondNameChanged);
    on<SurnameChanged>(_onSurnameChanged);
    on<DateOfBirthChanged>(_onDateOfBirthChanged);
    on<GenderChanged>(_onGenderChanged);
    on<PhoneChanged>(_onPhoneChanged);
    on<EmailChanged>(_onEmailChanged);
    on<FurtherClicked>(_onFurtherClicked);
    on<CalendarClicked>(_onCalendarClicked);
    on<BackClicked>(_onBackClicked);
    this.add(ConfirmationStep1Event.init());
  }

  PreferencesLocalGateway preferencesLocalGateway;

  bool get fieldsAreValid =>
      state.name != null &&
      state.name!.trim().isNotEmpty &&
      state.surname != null &&
      state.surname!.trim().isNotEmpty &&
      // state.secondName != null &&
      // state.secondName!.trim().isNotEmpty &&
      state.dateOfBirth != null &&
      // state.phoneNumber.valid &&
      // state.phoneNumber.getRawNumber().length >= 11 &&
      // state.email.value.isNotEmpty &&
      state.email.valid &&
      state.gender != null;

  FutureOr<void> _init(Init event, Emitter<ConfirmationStep1State> emit) async {
    String? phoneNumber = await preferencesLocalGateway.getPhoneNumber();
    PhoneNumber infoNumber = await PhoneNumber.getRegionInfoFromPhoneNumber('+$phoneNumber!');
    String? formattedNumber = await PhoneNumberUtil.formatAsYouType(
      infoNumber.phoneNumber,
      infoNumber.isoCode,
    );
    emit(state.copyWith(phoneNumber: formattedNumber!));
  }

  FutureOr<void> _onBackClicked(BackClicked event, Emitter<ConfirmationStep1State> emit) async {
    emit(state.copyWith(action: BackButtonCLicked()));
  }

  FutureOr<void> _onNameChanged(NameChanged event, Emitter<ConfirmationStep1State> emit) async {
    emit(state.copyWith(
        name:
            event.name.length == 1 ? event.name.replaceFirst(event.name[0], event.name[0].toUpperCase()) : event.name));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onSecondNameChanged(SecondNameChanged event, Emitter<ConfirmationStep1State> emit) async {
    emit(state.copyWith(
        secondName: event.secondName.length == 1
            ? event.secondName.replaceFirst(event.secondName[0], event.secondName[0].toUpperCase())
            : event.secondName));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onSurnameChanged(SurnameChanged event, Emitter<ConfirmationStep1State> emit) async {
    emit(state.copyWith(
        surname: event.surname.length == 1
            ? event.surname.replaceFirst(event.surname[0], event.surname[0].toUpperCase())
            : event.surname));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onDateOfBirthChanged(DateOfBirthChanged event, Emitter<ConfirmationStep1State> emit) async {
    emit(state.copyWith(dateOfBirth: event.dateOfBirth));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onGenderChanged(GenderChanged event, Emitter<ConfirmationStep1State> emit) async {
    emit(state.copyWith(gender: event.gender));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onEmailChanged(EmailChanged event, Emitter<ConfirmationStep1State> emit) async {
    emit(state.copyWith(email: EmailForm.dirty(event.email)));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onPhoneChanged(PhoneChanged event, Emitter<ConfirmationStep1State> emit) async {
    // emit(state.copyWith(phoneNumber: PhoneForm.dirty(event.number)));
    // emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onCalendarClicked(CalendarClicked event, Emitter<ConfirmationStep1State> emit) async {
    emit(state.copyWith(action: ShowCalendarBottomSheet()));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onFurtherClicked(FurtherClicked event, Emitter<ConfirmationStep1State> emit) async {
    emit(state.copyWith(action: Step1IsCompleted()));
    // emit(state.copyWith(action: NavigateToConfirmationStep2(NavigateType.push)));
  }
}
