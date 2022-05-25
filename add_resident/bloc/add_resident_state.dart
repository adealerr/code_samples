part of 'add_resident_bloc.dart';

@freezed
class AddResidentState with _$AddResidentState {
  factory AddResidentState({
    BlocAction? action,
    @Default([
      VehicleEntity(id: 1),
    ])
        List<VehicleEntity> vehicles,
    @Default(NameForm.pure())
        NameForm name,
    @Default(AddressForm.pure())
        AddressForm address,
    @Default(PhoneForm.pure())
        PhoneForm phone,
    // @Default([]) List<String> vehicleNames,
    @Default(false)
        bool needFetchResidents,
    String? errorMessage,
  }) = _AddResidentState;
}
