import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youz/app/navigation/navigation_action.dart';
import 'package:youz/app/navigation/navigation_type.dart';
import 'package:youz/app/presentation/screens/confirmation_steps/confirmation_step_1/bloc/confirmation_step_1_bloc.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/core/validation/date.dart';
import 'package:youz/core/validation/default_form.dart';
import 'package:youz/core/validation/passport_numbers.dart';

part 'confirmation_step_2_bloc.freezed.dart';
part 'confirmation_step_2_event.dart';
part 'confirmation_step_2_state.dart';

class ConfirmationStep2Bloc extends Bloc<ConfirmationStep2Event, ConfirmationStep2State> {
  ConfirmationStep2Bloc() : super(ConfirmationStep2State()) {
    on<Init>(_onInit);
    on<NumberSeriesChanged>(_numberSeriesChanged);
    on<IssuedByWhomChanged>(_issuedByWhomChanged);
    on<IssueDateChanged>(_issueDateChanged);
    on<OnIssueDateClicked>(_onIssueDateClicked);
    on<RegistrationCityChanged>(_onRegistrationCityChanged);
    on<RegistrationStreetChanged>(_onRegistrationStreetChanged);
    on<RegistrationHouseChanged>(_onRegistrationHouseChanged);
    on<RegistrationFlatChanged>(_onRegistrationFlatChanged);

    on<ResidentialCityChanged>(_onResidentialCityChanged);
    on<ResidentialStreetChanged>(_onResidentialStreetChanged);
    on<ResidentialHouseChanged>(_onResidentialHouseChanged);
    on<ResidentialFlatChanged>(_onResidentialFlatChanged);

    on<OnBackClicked>(_onBackClicked);
    on<OnCoincidenceCheckBoxClicked>(_onCoincidenceCheckBoxClicked);
    on<OnFurtherClicked>(_onFurtherClicked);
    this.add(ConfirmationStep2Event.init());
  }

  FutureOr<void> _onInit(Init event, Emitter<ConfirmationStep2State> emit) async {}

  FutureOr<void> _numberSeriesChanged(NumberSeriesChanged event, Emitter<ConfirmationStep2State> emit) {
    emit(state.copyWith(numberSeries: PassportNumberForm.pure(event.numberSeries)));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _issuedByWhomChanged(IssuedByWhomChanged event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(issuedByWhom: DefaultForm.pure(event.text)));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _issueDateChanged(IssueDateChanged event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(issueDate: event.issueDate));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onRegistrationCityChanged(RegistrationCityChanged event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(registrationCity: DefaultForm.dirty(event.city)));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onRegistrationStreetChanged(
      RegistrationStreetChanged event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(registrationStreet: DefaultForm.dirty(event.street)));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onRegistrationHouseChanged(
      RegistrationHouseChanged event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(registrationHouse: DefaultForm.dirty(event.house)));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onRegistrationFlatChanged(RegistrationFlatChanged event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(registrationFlat: DefaultForm.dirty(event.flat)));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onResidentialCityChanged(ResidentialCityChanged event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(residentialCity: DefaultForm.dirty(event.city)));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onResidentialStreetChanged(
      ResidentialStreetChanged event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(residentialStreet: DefaultForm.dirty(event.street)));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onResidentialHouseChanged(ResidentialHouseChanged event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(residentialHouse: DefaultForm.dirty(event.house)));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onResidentialFlatChanged(ResidentialFlatChanged event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(residentialFlat: DefaultForm.dirty(event.flat)));
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onIssueDateClicked(OnIssueDateClicked event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(action: ShowCalendarBottomSheet()));
  }

  FutureOr<void> _onBackClicked(OnBackClicked event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(action: BackButtonClicked()));
  }

  FutureOr<void> _onCoincidenceCheckBoxClicked(
      OnCoincidenceCheckBoxClicked event, Emitter<ConfirmationStep2State> emit) async {
    emit(state.copyWith(addressesAreSame: !state.addressesAreSame));
    if (state.addressesAreSame) {
      emit(state.copyWith(
        residentialCity: state.registrationCity,
        residentialStreet: state.registrationStreet,
        residentialHouse: state.registrationHouse,
        residentialFlat: state.registrationFlat,
      ));
    } else {
      emit(state.copyWith(
        residentialCity: DefaultForm.pure(),
        residentialStreet: DefaultForm.pure(),
        residentialHouse: DefaultForm.pure(),
        residentialFlat: DefaultForm.pure(),
      ));
    }
    emit(state.copyWith(buttonEnabled: fieldsAreValid));
  }

  FutureOr<void> _onFurtherClicked(OnFurtherClicked event, Emitter<ConfirmationStep2State> emit) async {
    if (fieldsAreValid) {
      emit(state.copyWith(action: Step2IsCompleted()));
      // emit(state.copyWith());
    } else {
      emit(
        state.copyWith(
          numberSeries: PassportNumberForm.dirty(state.numberSeries.value),
          issuedByWhom: DefaultForm.dirty(state.issuedByWhom.value),
          issueDate: DateForm.dirty().value,
        ),
      );
    }
  }

  bool get fieldsAreValid {
  if (state.addressesAreSame) {
    if (state.numberSeries.valid &&
          state.issuedByWhom.value.isNotEmpty &&
          state.issueDate != null &&
          state.registrationCity.value.isNotEmpty &&
          state.registrationStreet.value.isNotEmpty &&
          state.registrationHouse.value.isNotEmpty &&
          state.registrationFlat.value.isNotEmpty)
      return true;
        // state.residentialCity.value.isNotEmpty &&
        // state.residentialStreet.value.isNotEmpty &&
        // state.residentialHouse.value.isNotEmpty &&
        // state.residentialFlat.value.isNotEmpty;
  } else {
    if (state.numberSeries.valid &&
        state.issuedByWhom.value.isNotEmpty &&
        state.issueDate != null &&
        state.registrationCity.value.isNotEmpty &&
        state.registrationStreet.value.isNotEmpty &&
        state.registrationHouse.value.isNotEmpty &&
        state.registrationFlat.value.isNotEmpty &&
        state.residentialCity.value.isNotEmpty &&
        state.residentialStreet.value.isNotEmpty &&
        state.residentialHouse.value.isNotEmpty &&
        state.residentialFlat.value.isNotEmpty)
    return true;
  }
  return false;
}
}
