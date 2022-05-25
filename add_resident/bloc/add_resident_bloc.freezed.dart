// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_resident_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddResidentStateTearOff {
  const _$AddResidentStateTearOff();

  _AddResidentState call(
      {BlocAction? action,
      List<VehicleEntity> vehicles = const [VehicleEntity(id: 1)],
      NameForm name = const NameForm.pure(),
      AddressForm address = const AddressForm.pure(),
      PhoneForm phone = const PhoneForm.pure(),
      bool needFetchResidents = false,
      String? errorMessage}) {
    return _AddResidentState(
      action: action,
      vehicles: vehicles,
      name: name,
      address: address,
      phone: phone,
      needFetchResidents: needFetchResidents,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $AddResidentState = _$AddResidentStateTearOff();

/// @nodoc
mixin _$AddResidentState {
  BlocAction? get action => throw _privateConstructorUsedError;
  List<VehicleEntity> get vehicles => throw _privateConstructorUsedError;
  NameForm get name => throw _privateConstructorUsedError;
  AddressForm get address => throw _privateConstructorUsedError;
  PhoneForm get phone =>
      throw _privateConstructorUsedError; // @Default([]) List<String> vehicleNames,
  bool get needFetchResidents => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddResidentStateCopyWith<AddResidentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddResidentStateCopyWith<$Res> {
  factory $AddResidentStateCopyWith(
          AddResidentState value, $Res Function(AddResidentState) then) =
      _$AddResidentStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      List<VehicleEntity> vehicles,
      NameForm name,
      AddressForm address,
      PhoneForm phone,
      bool needFetchResidents,
      String? errorMessage});
}

/// @nodoc
class _$AddResidentStateCopyWithImpl<$Res>
    implements $AddResidentStateCopyWith<$Res> {
  _$AddResidentStateCopyWithImpl(this._value, this._then);

  final AddResidentState _value;
  // ignore: unused_field
  final $Res Function(AddResidentState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? vehicles = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? needFetchResidents = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<VehicleEntity>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameForm,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressForm,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneForm,
      needFetchResidents: needFetchResidents == freezed
          ? _value.needFetchResidents
          : needFetchResidents // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AddResidentStateCopyWith<$Res>
    implements $AddResidentStateCopyWith<$Res> {
  factory _$AddResidentStateCopyWith(
          _AddResidentState value, $Res Function(_AddResidentState) then) =
      __$AddResidentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      List<VehicleEntity> vehicles,
      NameForm name,
      AddressForm address,
      PhoneForm phone,
      bool needFetchResidents,
      String? errorMessage});
}

/// @nodoc
class __$AddResidentStateCopyWithImpl<$Res>
    extends _$AddResidentStateCopyWithImpl<$Res>
    implements _$AddResidentStateCopyWith<$Res> {
  __$AddResidentStateCopyWithImpl(
      _AddResidentState _value, $Res Function(_AddResidentState) _then)
      : super(_value, (v) => _then(v as _AddResidentState));

  @override
  _AddResidentState get _value => super._value as _AddResidentState;

  @override
  $Res call({
    Object? action = freezed,
    Object? vehicles = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? needFetchResidents = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_AddResidentState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<VehicleEntity>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameForm,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressForm,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneForm,
      needFetchResidents: needFetchResidents == freezed
          ? _value.needFetchResidents
          : needFetchResidents // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddResidentState implements _AddResidentState {
  _$_AddResidentState(
      {this.action,
      this.vehicles = const [VehicleEntity(id: 1)],
      this.name = const NameForm.pure(),
      this.address = const AddressForm.pure(),
      this.phone = const PhoneForm.pure(),
      this.needFetchResidents = false,
      this.errorMessage});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: const [VehicleEntity(id: 1)])
  @override
  final List<VehicleEntity> vehicles;
  @JsonKey(defaultValue: const NameForm.pure())
  @override
  final NameForm name;
  @JsonKey(defaultValue: const AddressForm.pure())
  @override
  final AddressForm address;
  @JsonKey(defaultValue: const PhoneForm.pure())
  @override
  final PhoneForm phone;
  @JsonKey(defaultValue: false)
  @override // @Default([]) List<String> vehicleNames,
  final bool needFetchResidents;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AddResidentState(action: $action, vehicles: $vehicles, name: $name, address: $address, phone: $phone, needFetchResidents: $needFetchResidents, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddResidentState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.needFetchResidents, needFetchResidents) ||
                const DeepCollectionEquality()
                    .equals(other.needFetchResidents, needFetchResidents)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(vehicles) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(needFetchResidents) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$AddResidentStateCopyWith<_AddResidentState> get copyWith =>
      __$AddResidentStateCopyWithImpl<_AddResidentState>(this, _$identity);
}

abstract class _AddResidentState implements AddResidentState {
  factory _AddResidentState(
      {BlocAction? action,
      List<VehicleEntity> vehicles,
      NameForm name,
      AddressForm address,
      PhoneForm phone,
      bool needFetchResidents,
      String? errorMessage}) = _$_AddResidentState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  List<VehicleEntity> get vehicles => throw _privateConstructorUsedError;
  @override
  NameForm get name => throw _privateConstructorUsedError;
  @override
  AddressForm get address => throw _privateConstructorUsedError;
  @override
  PhoneForm get phone => throw _privateConstructorUsedError;
  @override // @Default([]) List<String> vehicleNames,
  bool get needFetchResidents => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddResidentStateCopyWith<_AddResidentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddResidentEventTearOff {
  const _$AddResidentEventTearOff();

  Init init() {
    return const Init();
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

  AddressChanged addressChanged(String address) {
    return AddressChanged(
      address,
    );
  }

  PhoneChanged phoneChanged(PhoneNumber phone) {
    return PhoneChanged(
      phone,
    );
  }

  VehicleNumberChanged vehicleNumberChanged(String number, int index) {
    return VehicleNumberChanged(
      number,
      index,
    );
  }

  VehicleModelChanged vehicleModelChanged(String model, int index) {
    return VehicleModelChanged(
      model,
      index,
    );
  }

  AddVehicleClicked addVehicleClicked() {
    return const AddVehicleClicked();
  }

  VehicleInputSelected vehicleInputSelected() {
    return const VehicleInputSelected();
  }

  RemoveVehicleClicked removeVehicleClicked(int index) {
    return RemoveVehicleClicked(
      index,
    );
  }

  SaveClicked saveClicked() {
    return const SaveClicked();
  }

  CancelClicked cancelClicked() {
    return const CancelClicked();
  }
}

/// @nodoc
const $AddResidentEvent = _$AddResidentEventTearOff();

/// @nodoc
mixin _$AddResidentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddResidentEventCopyWith<$Res> {
  factory $AddResidentEventCopyWith(
          AddResidentEvent value, $Res Function(AddResidentEvent) then) =
      _$AddResidentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddResidentEventCopyWithImpl<$Res>
    implements $AddResidentEventCopyWith<$Res> {
  _$AddResidentEventCopyWithImpl(this._value, this._then);

  final AddResidentEvent _value;
  // ignore: unused_field
  final $Res Function(AddResidentEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$AddResidentEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'AddResidentEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements AddResidentEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    extends _$AddResidentEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AddResidentEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements AddResidentEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressChangedCopyWith<$Res> {
  factory $AddressChangedCopyWith(
          AddressChanged value, $Res Function(AddressChanged) then) =
      _$AddressChangedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class _$AddressChangedCopyWithImpl<$Res>
    extends _$AddResidentEventCopyWithImpl<$Res>
    implements $AddressChangedCopyWith<$Res> {
  _$AddressChangedCopyWithImpl(
      AddressChanged _value, $Res Function(AddressChanged) _then)
      : super(_value, (v) => _then(v as AddressChanged));

  @override
  AddressChanged get _value => super._value as AddressChanged;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(AddressChanged(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressChanged implements AddressChanged {
  const _$AddressChanged(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'AddResidentEvent.addressChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressChanged &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  $AddressChangedCopyWith<AddressChanged> get copyWith =>
      _$AddressChangedCopyWithImpl<AddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) {
    return addressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) {
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class AddressChanged implements AddResidentEvent {
  const factory AddressChanged(String address) = _$AddressChanged;

  String get address => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressChangedCopyWith<AddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneChangedCopyWith<$Res> {
  factory $PhoneChangedCopyWith(
          PhoneChanged value, $Res Function(PhoneChanged) then) =
      _$PhoneChangedCopyWithImpl<$Res>;
  $Res call({PhoneNumber phone});
}

/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res>
    extends _$AddResidentEventCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(
      PhoneChanged _value, $Res Function(PhoneChanged) _then)
      : super(_value, (v) => _then(v as PhoneChanged));

  @override
  PhoneChanged get _value => super._value as PhoneChanged;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(PhoneChanged(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc

class _$PhoneChanged implements PhoneChanged {
  const _$PhoneChanged(this.phone);

  @override
  final PhoneNumber phone;

  @override
  String toString() {
    return 'AddResidentEvent.phoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneChanged &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneChanged implements AddResidentEvent {
  const factory PhoneChanged(PhoneNumber phone) = _$PhoneChanged;

  PhoneNumber get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleNumberChangedCopyWith<$Res> {
  factory $VehicleNumberChangedCopyWith(VehicleNumberChanged value,
          $Res Function(VehicleNumberChanged) then) =
      _$VehicleNumberChangedCopyWithImpl<$Res>;
  $Res call({String number, int index});
}

/// @nodoc
class _$VehicleNumberChangedCopyWithImpl<$Res>
    extends _$AddResidentEventCopyWithImpl<$Res>
    implements $VehicleNumberChangedCopyWith<$Res> {
  _$VehicleNumberChangedCopyWithImpl(
      VehicleNumberChanged _value, $Res Function(VehicleNumberChanged) _then)
      : super(_value, (v) => _then(v as VehicleNumberChanged));

  @override
  VehicleNumberChanged get _value => super._value as VehicleNumberChanged;

  @override
  $Res call({
    Object? number = freezed,
    Object? index = freezed,
  }) {
    return _then(VehicleNumberChanged(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VehicleNumberChanged implements VehicleNumberChanged {
  const _$VehicleNumberChanged(this.number, this.index);

  @override
  final String number;
  @override
  final int index;

  @override
  String toString() {
    return 'AddResidentEvent.vehicleNumberChanged(number: $number, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleNumberChanged &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $VehicleNumberChangedCopyWith<VehicleNumberChanged> get copyWith =>
      _$VehicleNumberChangedCopyWithImpl<VehicleNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) {
    return vehicleNumberChanged(number, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) {
    if (vehicleNumberChanged != null) {
      return vehicleNumberChanged(number, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) {
    return vehicleNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) {
    if (vehicleNumberChanged != null) {
      return vehicleNumberChanged(this);
    }
    return orElse();
  }
}

abstract class VehicleNumberChanged implements AddResidentEvent {
  const factory VehicleNumberChanged(String number, int index) =
      _$VehicleNumberChanged;

  String get number => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleNumberChangedCopyWith<VehicleNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleModelChangedCopyWith<$Res> {
  factory $VehicleModelChangedCopyWith(
          VehicleModelChanged value, $Res Function(VehicleModelChanged) then) =
      _$VehicleModelChangedCopyWithImpl<$Res>;
  $Res call({String model, int index});
}

/// @nodoc
class _$VehicleModelChangedCopyWithImpl<$Res>
    extends _$AddResidentEventCopyWithImpl<$Res>
    implements $VehicleModelChangedCopyWith<$Res> {
  _$VehicleModelChangedCopyWithImpl(
      VehicleModelChanged _value, $Res Function(VehicleModelChanged) _then)
      : super(_value, (v) => _then(v as VehicleModelChanged));

  @override
  VehicleModelChanged get _value => super._value as VehicleModelChanged;

  @override
  $Res call({
    Object? model = freezed,
    Object? index = freezed,
  }) {
    return _then(VehicleModelChanged(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VehicleModelChanged implements VehicleModelChanged {
  const _$VehicleModelChanged(this.model, this.index);

  @override
  final String model;
  @override
  final int index;

  @override
  String toString() {
    return 'AddResidentEvent.vehicleModelChanged(model: $model, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleModelChanged &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $VehicleModelChangedCopyWith<VehicleModelChanged> get copyWith =>
      _$VehicleModelChangedCopyWithImpl<VehicleModelChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) {
    return vehicleModelChanged(model, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) {
    if (vehicleModelChanged != null) {
      return vehicleModelChanged(model, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) {
    return vehicleModelChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) {
    if (vehicleModelChanged != null) {
      return vehicleModelChanged(this);
    }
    return orElse();
  }
}

abstract class VehicleModelChanged implements AddResidentEvent {
  const factory VehicleModelChanged(String model, int index) =
      _$VehicleModelChanged;

  String get model => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleModelChangedCopyWith<VehicleModelChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddVehicleClickedCopyWith<$Res> {
  factory $AddVehicleClickedCopyWith(
          AddVehicleClicked value, $Res Function(AddVehicleClicked) then) =
      _$AddVehicleClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddVehicleClickedCopyWithImpl<$Res>
    extends _$AddResidentEventCopyWithImpl<$Res>
    implements $AddVehicleClickedCopyWith<$Res> {
  _$AddVehicleClickedCopyWithImpl(
      AddVehicleClicked _value, $Res Function(AddVehicleClicked) _then)
      : super(_value, (v) => _then(v as AddVehicleClicked));

  @override
  AddVehicleClicked get _value => super._value as AddVehicleClicked;
}

/// @nodoc

class _$AddVehicleClicked implements AddVehicleClicked {
  const _$AddVehicleClicked();

  @override
  String toString() {
    return 'AddResidentEvent.addVehicleClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddVehicleClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) {
    return addVehicleClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) {
    if (addVehicleClicked != null) {
      return addVehicleClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) {
    return addVehicleClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) {
    if (addVehicleClicked != null) {
      return addVehicleClicked(this);
    }
    return orElse();
  }
}

abstract class AddVehicleClicked implements AddResidentEvent {
  const factory AddVehicleClicked() = _$AddVehicleClicked;
}

/// @nodoc
abstract class $VehicleInputSelectedCopyWith<$Res> {
  factory $VehicleInputSelectedCopyWith(VehicleInputSelected value,
          $Res Function(VehicleInputSelected) then) =
      _$VehicleInputSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$VehicleInputSelectedCopyWithImpl<$Res>
    extends _$AddResidentEventCopyWithImpl<$Res>
    implements $VehicleInputSelectedCopyWith<$Res> {
  _$VehicleInputSelectedCopyWithImpl(
      VehicleInputSelected _value, $Res Function(VehicleInputSelected) _then)
      : super(_value, (v) => _then(v as VehicleInputSelected));

  @override
  VehicleInputSelected get _value => super._value as VehicleInputSelected;
}

/// @nodoc

class _$VehicleInputSelected implements VehicleInputSelected {
  const _$VehicleInputSelected();

  @override
  String toString() {
    return 'AddResidentEvent.vehicleInputSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VehicleInputSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) {
    return vehicleInputSelected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) {
    if (vehicleInputSelected != null) {
      return vehicleInputSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) {
    return vehicleInputSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) {
    if (vehicleInputSelected != null) {
      return vehicleInputSelected(this);
    }
    return orElse();
  }
}

abstract class VehicleInputSelected implements AddResidentEvent {
  const factory VehicleInputSelected() = _$VehicleInputSelected;
}

/// @nodoc
abstract class $RemoveVehicleClickedCopyWith<$Res> {
  factory $RemoveVehicleClickedCopyWith(RemoveVehicleClicked value,
          $Res Function(RemoveVehicleClicked) then) =
      _$RemoveVehicleClickedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$RemoveVehicleClickedCopyWithImpl<$Res>
    extends _$AddResidentEventCopyWithImpl<$Res>
    implements $RemoveVehicleClickedCopyWith<$Res> {
  _$RemoveVehicleClickedCopyWithImpl(
      RemoveVehicleClicked _value, $Res Function(RemoveVehicleClicked) _then)
      : super(_value, (v) => _then(v as RemoveVehicleClicked));

  @override
  RemoveVehicleClicked get _value => super._value as RemoveVehicleClicked;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(RemoveVehicleClicked(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveVehicleClicked implements RemoveVehicleClicked {
  const _$RemoveVehicleClicked(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'AddResidentEvent.removeVehicleClicked(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveVehicleClicked &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $RemoveVehicleClickedCopyWith<RemoveVehicleClicked> get copyWith =>
      _$RemoveVehicleClickedCopyWithImpl<RemoveVehicleClicked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) {
    return removeVehicleClicked(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) {
    if (removeVehicleClicked != null) {
      return removeVehicleClicked(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) {
    return removeVehicleClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) {
    if (removeVehicleClicked != null) {
      return removeVehicleClicked(this);
    }
    return orElse();
  }
}

abstract class RemoveVehicleClicked implements AddResidentEvent {
  const factory RemoveVehicleClicked(int index) = _$RemoveVehicleClicked;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveVehicleClickedCopyWith<RemoveVehicleClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveClickedCopyWith<$Res> {
  factory $SaveClickedCopyWith(
          SaveClicked value, $Res Function(SaveClicked) then) =
      _$SaveClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveClickedCopyWithImpl<$Res>
    extends _$AddResidentEventCopyWithImpl<$Res>
    implements $SaveClickedCopyWith<$Res> {
  _$SaveClickedCopyWithImpl(
      SaveClicked _value, $Res Function(SaveClicked) _then)
      : super(_value, (v) => _then(v as SaveClicked));

  @override
  SaveClicked get _value => super._value as SaveClicked;
}

/// @nodoc

class _$SaveClicked implements SaveClicked {
  const _$SaveClicked();

  @override
  String toString() {
    return 'AddResidentEvent.saveClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) {
    return saveClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) {
    if (saveClicked != null) {
      return saveClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) {
    return saveClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) {
    if (saveClicked != null) {
      return saveClicked(this);
    }
    return orElse();
  }
}

abstract class SaveClicked implements AddResidentEvent {
  const factory SaveClicked() = _$SaveClicked;
}

/// @nodoc
abstract class $CancelClickedCopyWith<$Res> {
  factory $CancelClickedCopyWith(
          CancelClicked value, $Res Function(CancelClicked) then) =
      _$CancelClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelClickedCopyWithImpl<$Res>
    extends _$AddResidentEventCopyWithImpl<$Res>
    implements $CancelClickedCopyWith<$Res> {
  _$CancelClickedCopyWithImpl(
      CancelClicked _value, $Res Function(CancelClicked) _then)
      : super(_value, (v) => _then(v as CancelClicked));

  @override
  CancelClicked get _value => super._value as CancelClicked;
}

/// @nodoc

class _$CancelClicked implements CancelClicked {
  const _$CancelClicked();

  @override
  String toString() {
    return 'AddResidentEvent.cancelClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(PhoneNumber phone) phoneChanged,
    required TResult Function(String number, int index) vehicleNumberChanged,
    required TResult Function(String model, int index) vehicleModelChanged,
    required TResult Function() addVehicleClicked,
    required TResult Function() vehicleInputSelected,
    required TResult Function(int index) removeVehicleClicked,
    required TResult Function() saveClicked,
    required TResult Function() cancelClicked,
  }) {
    return cancelClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(PhoneNumber phone)? phoneChanged,
    TResult Function(String number, int index)? vehicleNumberChanged,
    TResult Function(String model, int index)? vehicleModelChanged,
    TResult Function()? addVehicleClicked,
    TResult Function()? vehicleInputSelected,
    TResult Function(int index)? removeVehicleClicked,
    TResult Function()? saveClicked,
    TResult Function()? cancelClicked,
    required TResult orElse(),
  }) {
    if (cancelClicked != null) {
      return cancelClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(VehicleNumberChanged value) vehicleNumberChanged,
    required TResult Function(VehicleModelChanged value) vehicleModelChanged,
    required TResult Function(AddVehicleClicked value) addVehicleClicked,
    required TResult Function(VehicleInputSelected value) vehicleInputSelected,
    required TResult Function(RemoveVehicleClicked value) removeVehicleClicked,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(CancelClicked value) cancelClicked,
  }) {
    return cancelClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(VehicleNumberChanged value)? vehicleNumberChanged,
    TResult Function(VehicleModelChanged value)? vehicleModelChanged,
    TResult Function(AddVehicleClicked value)? addVehicleClicked,
    TResult Function(VehicleInputSelected value)? vehicleInputSelected,
    TResult Function(RemoveVehicleClicked value)? removeVehicleClicked,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(CancelClicked value)? cancelClicked,
    required TResult orElse(),
  }) {
    if (cancelClicked != null) {
      return cancelClicked(this);
    }
    return orElse();
  }
}

abstract class CancelClicked implements AddResidentEvent {
  const factory CancelClicked() = _$CancelClicked;
}
