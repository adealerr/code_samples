part of 'add_resident_bloc.dart';

@freezed
class AddResidentEvent with _$AddResidentEvent {
  const factory AddResidentEvent.init() = Init;
  const factory AddResidentEvent.nameChanged(String name) = NameChanged;
  const factory AddResidentEvent.addressChanged(String address) = AddressChanged;
  const factory AddResidentEvent.phoneChanged(PhoneNumber phone) = PhoneChanged;
  const factory AddResidentEvent.vehicleNumberChanged(String number, int index) = VehicleNumberChanged;
  const factory AddResidentEvent.vehicleModelChanged(String model, int index) = VehicleModelChanged;
  const factory AddResidentEvent.addVehicleClicked() = AddVehicleClicked;
  const factory AddResidentEvent.vehicleInputSelected() = VehicleInputSelected;
  const factory AddResidentEvent.removeVehicleClicked(int index) = RemoveVehicleClicked;
  const factory AddResidentEvent.saveClicked() = SaveClicked;
  const factory AddResidentEvent.cancelClicked() = CancelClicked;


}