import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:service_24/app/navigation/navigation_actions.dart';
import 'package:service_24/core/bloc/bloc_action.dart';
import 'package:service_24/core/failures.dart';
import 'package:service_24/core/utils/phone_utils/phone_number.dart';
import 'package:service_24/core/validation/address_form.dart';
import 'package:service_24/core/validation/name.dart';
import 'package:service_24/core/validation/phone.dart';
import 'package:service_24/data/gateways/local/preferences_local_gateway.dart';
import 'package:service_24/data/repositories/user_repository.dart';
import 'package:service_24/domain/entities/resident_entity.dart';
import 'package:service_24/domain/entities/vehicle_entity.dart';
import 'package:service_24/localization/app_localizations.dart';

part 'add_resident_state.dart';

part 'add_resident_event.dart';

part 'add_resident_bloc.freezed.dart';

class AddResidentBloc extends Bloc<AddResidentEvent, AddResidentState> {
  AddResidentBloc({
    required this.userRepository,
    required this.preferencesLocalGateway,
    required this.localizations,
  }) : super(AddResidentState()) {
    this.add(AddResidentEvent.init());
  }

  UserRepository userRepository;
  PreferencesLocalGateway preferencesLocalGateway;
  AppLocalizations localizations;

  @override
  Stream<AddResidentState> mapEventToState(
    AddResidentEvent event,
  ) async* {
    yield* event.map(
      init: _init,
      nameChanged: _nameChanged,
      addressChanged: _addressChanged,
      phoneChanged: _phoneChanged,
      vehicleNumberChanged: _vehicleNumberChanged,
      vehicleModelChanged: _vehicleModelChanged,
      addVehicleClicked: _addVehicleClicked,
      removeVehicleClicked: _removeVehicleClicked,
      saveClicked: _saveClicked,
      cancelClicked: _cancelClicked,
      vehicleInputSelected: _vehicleInputSelected,
    );
  }

  Stream<AddResidentState> _init(Init value) async* {}

  Stream<AddResidentState> _nameChanged(NameChanged value) async* {
    yield state.copyWith(name: NameForm.pure(value.name), errorMessage: null);
  }

  Stream<AddResidentState> _addressChanged(AddressChanged value) async* {
    yield state.copyWith(
        address: AddressForm.pure(value.address), errorMessage: null);
  }

  Stream<AddResidentState> _phoneChanged(PhoneChanged value) async* {
    yield state.copyWith(
        phone: PhoneForm.pure(value.phone), errorMessage: null);
  }

  Stream<AddResidentState> _vehicleNumberChanged(
      VehicleNumberChanged value) async* {
    List<VehicleEntity> vehicles = List.of(state.vehicles);
    vehicles[value.index] = VehicleEntity(
      number: value.number,
      model: vehicles[value.index].model,
      id: value.index,
      needShowError: false,
    );
    yield state.copyWith(vehicles: vehicles);
  }

  Stream<AddResidentState> _vehicleModelChanged(
      VehicleModelChanged value) async* {
    List<VehicleEntity> vehicles = List.of(state.vehicles);
    vehicles[value.index] = VehicleEntity(
      number: vehicles[value.index].number,
      model: value.model,
      id: value.index,
      needShowError: false,
    );
    yield state.copyWith(vehicles: vehicles);

  }

  Stream<AddResidentState> _vehicleInputSelected(
      VehicleInputSelected value) async* {}

  Stream<AddResidentState> _addVehicleClicked(AddVehicleClicked value) async* {
    List<VehicleEntity> vehicles = List.of(state.vehicles);
    vehicles.add(VehicleEntity(id: state.vehicles.length + 1));
    yield state.copyWith(vehicles: vehicles);
  }

  Stream<AddResidentState> _removeVehicleClicked(
      RemoveVehicleClicked value) async* {
    List<VehicleEntity> vehicles = List.of(state.vehicles);
    if(vehicles.length > value.index) {
      vehicles.removeAt(value.index);
      yield state.copyWith(vehicles: vehicles);
    }
  }

  Stream<AddResidentState> _saveClicked(SaveClicked value) async* {
    if (fieldsAreValid) {
      yield* _addResident();
    } else {
      List<VehicleEntity> vehicles = List.of(state.vehicles);
      for (int i = 0; i < vehicles.length; i++) {
        if((vehicles[i].number?.isEmpty ?? true) == true && (vehicles[i].number?.isEmpty ?? true) ==true) {
          vehicles[i] =vehicles[i].copyWith(needShowError: true);
        }
      }
      yield state.copyWith(
        phone: PhoneForm.dirty(state.phone.value),
        name: NameForm.dirty(state.name.value),
        address: AddressForm.dirty(state.address.value),
        vehicles: vehicles
      );
    }
  }

  Stream<AddResidentState> _cancelClicked(CancelClicked value) async* {}

  Stream<AddResidentState> _addResident() async* {
    String token = (await preferencesLocalGateway.getToken()) ?? '';


    bool haveError = false;

    Either<ResidentEntity, Failure> result = await userRepository.addResident(
        token: token,
        cars:  state.vehicles,
        name: state.name.value,
        phone: state.phone.getRawNumber(),
        kvartira: state.address.value);
    result.fold(
      (data) {},
      (error) {
        haveError = true;
      },
    );
    if (!haveError) {
      yield state.copyWith(action: NavigateBack(), needFetchResidents: true);
    }
  }

  bool get fieldsAreValid =>
      state.name.value.trim().isNotEmpty &&
      state.address.value.trim().isNotEmpty &&
      state.phone.valid  &&
  state.vehicles.where((vehicle) => (vehicle.number?.isEmpty ?? true) == true && (vehicle.number?.isEmpty ?? true) ==true).isEmpty;
}
