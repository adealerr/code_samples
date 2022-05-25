// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'confirmation_steps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConfirmationStepsEventTearOff {
  const _$ConfirmationStepsEventTearOff();

  Init init() {
    return Init();
  }

  Step1Completed step1Completed(
      {required String name,
      String secondName = '',
      required String surname,
      required DateTime dateOfBirth,
      required Gender gender,
      required String phone,
      String email = ''}) {
    return Step1Completed(
      name: name,
      secondName: secondName,
      surname: surname,
      dateOfBirth: dateOfBirth,
      gender: gender,
      phone: phone,
      email: email,
    );
  }

  Step2Completed step2Completed(
      {required String numberSeries,
      required String issuedByWhom,
      required String registrationCity,
      required String registrationStreet,
      required String registrationHouse,
      required String registrationFlat,
      required String residentialCity,
      required String residentialStreet,
      required String residentialHouse,
      required String residentialFlat,
      required DateTime issueDate}) {
    return Step2Completed(
      numberSeries: numberSeries,
      issuedByWhom: issuedByWhom,
      registrationCity: registrationCity,
      registrationStreet: registrationStreet,
      registrationHouse: registrationHouse,
      registrationFlat: registrationFlat,
      residentialCity: residentialCity,
      residentialStreet: residentialStreet,
      residentialHouse: residentialHouse,
      residentialFlat: residentialFlat,
      issueDate: issueDate,
    );
  }

  Step3Completed step3Completed() {
    return Step3Completed();
  }

  PhotosLoaded photosLoaded({required List<File> documentParts}) {
    return PhotosLoaded(
      documentParts: documentParts,
    );
  }

  VerifyAccount verifyAccount() {
    return VerifyAccount();
  }

  BackClicked backClicked({ConfirmDocumentPart? photoPassportStage}) {
    return BackClicked(
      photoPassportStage: photoPassportStage,
    );
  }
}

/// @nodoc
const $ConfirmationStepsEvent = _$ConfirmationStepsEventTearOff();

/// @nodoc
mixin _$ConfirmationStepsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)
        step1Completed,
    required TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)
        step2Completed,
    required TResult Function() step3Completed,
    required TResult Function(List<File> documentParts) photosLoaded,
    required TResult Function() verifyAccount,
    required TResult Function(ConfirmDocumentPart? photoPassportStage)
        backClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)?
        step1Completed,
    TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)?
        step2Completed,
    TResult Function()? step3Completed,
    TResult Function(List<File> documentParts)? photosLoaded,
    TResult Function()? verifyAccount,
    TResult Function(ConfirmDocumentPart? photoPassportStage)? backClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Step1Completed value) step1Completed,
    required TResult Function(Step2Completed value) step2Completed,
    required TResult Function(Step3Completed value) step3Completed,
    required TResult Function(PhotosLoaded value) photosLoaded,
    required TResult Function(VerifyAccount value) verifyAccount,
    required TResult Function(BackClicked value) backClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Step1Completed value)? step1Completed,
    TResult Function(Step2Completed value)? step2Completed,
    TResult Function(Step3Completed value)? step3Completed,
    TResult Function(PhotosLoaded value)? photosLoaded,
    TResult Function(VerifyAccount value)? verifyAccount,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationStepsEventCopyWith<$Res> {
  factory $ConfirmationStepsEventCopyWith(ConfirmationStepsEvent value,
          $Res Function(ConfirmationStepsEvent) then) =
      _$ConfirmationStepsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmationStepsEventCopyWithImpl<$Res>
    implements $ConfirmationStepsEventCopyWith<$Res> {
  _$ConfirmationStepsEventCopyWithImpl(this._value, this._then);

  final ConfirmationStepsEvent _value;
  // ignore: unused_field
  final $Res Function(ConfirmationStepsEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res>
    extends _$ConfirmationStepsEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

/// @nodoc

class _$Init implements Init {
  _$Init();

  @override
  String toString() {
    return 'ConfirmationStepsEvent.init()';
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
    required TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)
        step1Completed,
    required TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)
        step2Completed,
    required TResult Function() step3Completed,
    required TResult Function(List<File> documentParts) photosLoaded,
    required TResult Function() verifyAccount,
    required TResult Function(ConfirmDocumentPart? photoPassportStage)
        backClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)?
        step1Completed,
    TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)?
        step2Completed,
    TResult Function()? step3Completed,
    TResult Function(List<File> documentParts)? photosLoaded,
    TResult Function()? verifyAccount,
    TResult Function(ConfirmDocumentPart? photoPassportStage)? backClicked,
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
    required TResult Function(Step1Completed value) step1Completed,
    required TResult Function(Step2Completed value) step2Completed,
    required TResult Function(Step3Completed value) step3Completed,
    required TResult Function(PhotosLoaded value) photosLoaded,
    required TResult Function(VerifyAccount value) verifyAccount,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Step1Completed value)? step1Completed,
    TResult Function(Step2Completed value)? step2Completed,
    TResult Function(Step3Completed value)? step3Completed,
    TResult Function(PhotosLoaded value)? photosLoaded,
    TResult Function(VerifyAccount value)? verifyAccount,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements ConfirmationStepsEvent {
  factory Init() = _$Init;
}

/// @nodoc
abstract class $Step1CompletedCopyWith<$Res> {
  factory $Step1CompletedCopyWith(
          Step1Completed value, $Res Function(Step1Completed) then) =
      _$Step1CompletedCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String secondName,
      String surname,
      DateTime dateOfBirth,
      Gender gender,
      String phone,
      String email});
}

/// @nodoc
class _$Step1CompletedCopyWithImpl<$Res>
    extends _$ConfirmationStepsEventCopyWithImpl<$Res>
    implements $Step1CompletedCopyWith<$Res> {
  _$Step1CompletedCopyWithImpl(
      Step1Completed _value, $Res Function(Step1Completed) _then)
      : super(_value, (v) => _then(v as Step1Completed));

  @override
  Step1Completed get _value => super._value as Step1Completed;

  @override
  $Res call({
    Object? name = freezed,
    Object? secondName = freezed,
    Object? surname = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(Step1Completed(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: secondName == freezed
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Step1Completed implements Step1Completed {
  _$Step1Completed(
      {required this.name,
      this.secondName = '',
      required this.surname,
      required this.dateOfBirth,
      required this.gender,
      required this.phone,
      this.email = ''});

  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String secondName;
  @override
  final String surname;
  @override
  final DateTime dateOfBirth;
  @override
  final Gender gender;
  @override
  final String phone;
  @JsonKey(defaultValue: '')
  @override
  final String email;

  @override
  String toString() {
    return 'ConfirmationStepsEvent.step1Completed(name: $name, secondName: $secondName, surname: $surname, dateOfBirth: $dateOfBirth, gender: $gender, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Step1Completed &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.secondName, secondName) ||
                const DeepCollectionEquality()
                    .equals(other.secondName, secondName)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(secondName) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $Step1CompletedCopyWith<Step1Completed> get copyWith =>
      _$Step1CompletedCopyWithImpl<Step1Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)
        step1Completed,
    required TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)
        step2Completed,
    required TResult Function() step3Completed,
    required TResult Function(List<File> documentParts) photosLoaded,
    required TResult Function() verifyAccount,
    required TResult Function(ConfirmDocumentPart? photoPassportStage)
        backClicked,
  }) {
    return step1Completed(
        name, secondName, surname, dateOfBirth, gender, phone, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)?
        step1Completed,
    TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)?
        step2Completed,
    TResult Function()? step3Completed,
    TResult Function(List<File> documentParts)? photosLoaded,
    TResult Function()? verifyAccount,
    TResult Function(ConfirmDocumentPart? photoPassportStage)? backClicked,
    required TResult orElse(),
  }) {
    if (step1Completed != null) {
      return step1Completed(
          name, secondName, surname, dateOfBirth, gender, phone, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Step1Completed value) step1Completed,
    required TResult Function(Step2Completed value) step2Completed,
    required TResult Function(Step3Completed value) step3Completed,
    required TResult Function(PhotosLoaded value) photosLoaded,
    required TResult Function(VerifyAccount value) verifyAccount,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return step1Completed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Step1Completed value)? step1Completed,
    TResult Function(Step2Completed value)? step2Completed,
    TResult Function(Step3Completed value)? step3Completed,
    TResult Function(PhotosLoaded value)? photosLoaded,
    TResult Function(VerifyAccount value)? verifyAccount,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (step1Completed != null) {
      return step1Completed(this);
    }
    return orElse();
  }
}

abstract class Step1Completed implements ConfirmationStepsEvent {
  factory Step1Completed(
      {required String name,
      String secondName,
      required String surname,
      required DateTime dateOfBirth,
      required Gender gender,
      required String phone,
      String email}) = _$Step1Completed;

  String get name => throw _privateConstructorUsedError;
  String get secondName => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Step1CompletedCopyWith<Step1Completed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Step2CompletedCopyWith<$Res> {
  factory $Step2CompletedCopyWith(
          Step2Completed value, $Res Function(Step2Completed) then) =
      _$Step2CompletedCopyWithImpl<$Res>;
  $Res call(
      {String numberSeries,
      String issuedByWhom,
      String registrationCity,
      String registrationStreet,
      String registrationHouse,
      String registrationFlat,
      String residentialCity,
      String residentialStreet,
      String residentialHouse,
      String residentialFlat,
      DateTime issueDate});
}

/// @nodoc
class _$Step2CompletedCopyWithImpl<$Res>
    extends _$ConfirmationStepsEventCopyWithImpl<$Res>
    implements $Step2CompletedCopyWith<$Res> {
  _$Step2CompletedCopyWithImpl(
      Step2Completed _value, $Res Function(Step2Completed) _then)
      : super(_value, (v) => _then(v as Step2Completed));

  @override
  Step2Completed get _value => super._value as Step2Completed;

  @override
  $Res call({
    Object? numberSeries = freezed,
    Object? issuedByWhom = freezed,
    Object? registrationCity = freezed,
    Object? registrationStreet = freezed,
    Object? registrationHouse = freezed,
    Object? registrationFlat = freezed,
    Object? residentialCity = freezed,
    Object? residentialStreet = freezed,
    Object? residentialHouse = freezed,
    Object? residentialFlat = freezed,
    Object? issueDate = freezed,
  }) {
    return _then(Step2Completed(
      numberSeries: numberSeries == freezed
          ? _value.numberSeries
          : numberSeries // ignore: cast_nullable_to_non_nullable
              as String,
      issuedByWhom: issuedByWhom == freezed
          ? _value.issuedByWhom
          : issuedByWhom // ignore: cast_nullable_to_non_nullable
              as String,
      registrationCity: registrationCity == freezed
          ? _value.registrationCity
          : registrationCity // ignore: cast_nullable_to_non_nullable
              as String,
      registrationStreet: registrationStreet == freezed
          ? _value.registrationStreet
          : registrationStreet // ignore: cast_nullable_to_non_nullable
              as String,
      registrationHouse: registrationHouse == freezed
          ? _value.registrationHouse
          : registrationHouse // ignore: cast_nullable_to_non_nullable
              as String,
      registrationFlat: registrationFlat == freezed
          ? _value.registrationFlat
          : registrationFlat // ignore: cast_nullable_to_non_nullable
              as String,
      residentialCity: residentialCity == freezed
          ? _value.residentialCity
          : residentialCity // ignore: cast_nullable_to_non_nullable
              as String,
      residentialStreet: residentialStreet == freezed
          ? _value.residentialStreet
          : residentialStreet // ignore: cast_nullable_to_non_nullable
              as String,
      residentialHouse: residentialHouse == freezed
          ? _value.residentialHouse
          : residentialHouse // ignore: cast_nullable_to_non_nullable
              as String,
      residentialFlat: residentialFlat == freezed
          ? _value.residentialFlat
          : residentialFlat // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: issueDate == freezed
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$Step2Completed implements Step2Completed {
  _$Step2Completed(
      {required this.numberSeries,
      required this.issuedByWhom,
      required this.registrationCity,
      required this.registrationStreet,
      required this.registrationHouse,
      required this.registrationFlat,
      required this.residentialCity,
      required this.residentialStreet,
      required this.residentialHouse,
      required this.residentialFlat,
      required this.issueDate});

  @override
  final String numberSeries;
  @override
  final String issuedByWhom;
  @override
  final String registrationCity;
  @override
  final String registrationStreet;
  @override
  final String registrationHouse;
  @override
  final String registrationFlat;
  @override
  final String residentialCity;
  @override
  final String residentialStreet;
  @override
  final String residentialHouse;
  @override
  final String residentialFlat;
  @override
  final DateTime issueDate;

  @override
  String toString() {
    return 'ConfirmationStepsEvent.step2Completed(numberSeries: $numberSeries, issuedByWhom: $issuedByWhom, registrationCity: $registrationCity, registrationStreet: $registrationStreet, registrationHouse: $registrationHouse, registrationFlat: $registrationFlat, residentialCity: $residentialCity, residentialStreet: $residentialStreet, residentialHouse: $residentialHouse, residentialFlat: $residentialFlat, issueDate: $issueDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Step2Completed &&
            (identical(other.numberSeries, numberSeries) ||
                const DeepCollectionEquality()
                    .equals(other.numberSeries, numberSeries)) &&
            (identical(other.issuedByWhom, issuedByWhom) ||
                const DeepCollectionEquality()
                    .equals(other.issuedByWhom, issuedByWhom)) &&
            (identical(other.registrationCity, registrationCity) ||
                const DeepCollectionEquality()
                    .equals(other.registrationCity, registrationCity)) &&
            (identical(other.registrationStreet, registrationStreet) ||
                const DeepCollectionEquality()
                    .equals(other.registrationStreet, registrationStreet)) &&
            (identical(other.registrationHouse, registrationHouse) ||
                const DeepCollectionEquality()
                    .equals(other.registrationHouse, registrationHouse)) &&
            (identical(other.registrationFlat, registrationFlat) ||
                const DeepCollectionEquality()
                    .equals(other.registrationFlat, registrationFlat)) &&
            (identical(other.residentialCity, residentialCity) ||
                const DeepCollectionEquality()
                    .equals(other.residentialCity, residentialCity)) &&
            (identical(other.residentialStreet, residentialStreet) ||
                const DeepCollectionEquality()
                    .equals(other.residentialStreet, residentialStreet)) &&
            (identical(other.residentialHouse, residentialHouse) ||
                const DeepCollectionEquality()
                    .equals(other.residentialHouse, residentialHouse)) &&
            (identical(other.residentialFlat, residentialFlat) ||
                const DeepCollectionEquality()
                    .equals(other.residentialFlat, residentialFlat)) &&
            (identical(other.issueDate, issueDate) ||
                const DeepCollectionEquality()
                    .equals(other.issueDate, issueDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(numberSeries) ^
      const DeepCollectionEquality().hash(issuedByWhom) ^
      const DeepCollectionEquality().hash(registrationCity) ^
      const DeepCollectionEquality().hash(registrationStreet) ^
      const DeepCollectionEquality().hash(registrationHouse) ^
      const DeepCollectionEquality().hash(registrationFlat) ^
      const DeepCollectionEquality().hash(residentialCity) ^
      const DeepCollectionEquality().hash(residentialStreet) ^
      const DeepCollectionEquality().hash(residentialHouse) ^
      const DeepCollectionEquality().hash(residentialFlat) ^
      const DeepCollectionEquality().hash(issueDate);

  @JsonKey(ignore: true)
  @override
  $Step2CompletedCopyWith<Step2Completed> get copyWith =>
      _$Step2CompletedCopyWithImpl<Step2Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)
        step1Completed,
    required TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)
        step2Completed,
    required TResult Function() step3Completed,
    required TResult Function(List<File> documentParts) photosLoaded,
    required TResult Function() verifyAccount,
    required TResult Function(ConfirmDocumentPart? photoPassportStage)
        backClicked,
  }) {
    return step2Completed(
        numberSeries,
        issuedByWhom,
        registrationCity,
        registrationStreet,
        registrationHouse,
        registrationFlat,
        residentialCity,
        residentialStreet,
        residentialHouse,
        residentialFlat,
        issueDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)?
        step1Completed,
    TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)?
        step2Completed,
    TResult Function()? step3Completed,
    TResult Function(List<File> documentParts)? photosLoaded,
    TResult Function()? verifyAccount,
    TResult Function(ConfirmDocumentPart? photoPassportStage)? backClicked,
    required TResult orElse(),
  }) {
    if (step2Completed != null) {
      return step2Completed(
          numberSeries,
          issuedByWhom,
          registrationCity,
          registrationStreet,
          registrationHouse,
          registrationFlat,
          residentialCity,
          residentialStreet,
          residentialHouse,
          residentialFlat,
          issueDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Step1Completed value) step1Completed,
    required TResult Function(Step2Completed value) step2Completed,
    required TResult Function(Step3Completed value) step3Completed,
    required TResult Function(PhotosLoaded value) photosLoaded,
    required TResult Function(VerifyAccount value) verifyAccount,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return step2Completed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Step1Completed value)? step1Completed,
    TResult Function(Step2Completed value)? step2Completed,
    TResult Function(Step3Completed value)? step3Completed,
    TResult Function(PhotosLoaded value)? photosLoaded,
    TResult Function(VerifyAccount value)? verifyAccount,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (step2Completed != null) {
      return step2Completed(this);
    }
    return orElse();
  }
}

abstract class Step2Completed implements ConfirmationStepsEvent {
  factory Step2Completed(
      {required String numberSeries,
      required String issuedByWhom,
      required String registrationCity,
      required String registrationStreet,
      required String registrationHouse,
      required String registrationFlat,
      required String residentialCity,
      required String residentialStreet,
      required String residentialHouse,
      required String residentialFlat,
      required DateTime issueDate}) = _$Step2Completed;

  String get numberSeries => throw _privateConstructorUsedError;
  String get issuedByWhom => throw _privateConstructorUsedError;
  String get registrationCity => throw _privateConstructorUsedError;
  String get registrationStreet => throw _privateConstructorUsedError;
  String get registrationHouse => throw _privateConstructorUsedError;
  String get registrationFlat => throw _privateConstructorUsedError;
  String get residentialCity => throw _privateConstructorUsedError;
  String get residentialStreet => throw _privateConstructorUsedError;
  String get residentialHouse => throw _privateConstructorUsedError;
  String get residentialFlat => throw _privateConstructorUsedError;
  DateTime get issueDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Step2CompletedCopyWith<Step2Completed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Step3CompletedCopyWith<$Res> {
  factory $Step3CompletedCopyWith(
          Step3Completed value, $Res Function(Step3Completed) then) =
      _$Step3CompletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$Step3CompletedCopyWithImpl<$Res>
    extends _$ConfirmationStepsEventCopyWithImpl<$Res>
    implements $Step3CompletedCopyWith<$Res> {
  _$Step3CompletedCopyWithImpl(
      Step3Completed _value, $Res Function(Step3Completed) _then)
      : super(_value, (v) => _then(v as Step3Completed));

  @override
  Step3Completed get _value => super._value as Step3Completed;
}

/// @nodoc

class _$Step3Completed implements Step3Completed {
  _$Step3Completed();

  @override
  String toString() {
    return 'ConfirmationStepsEvent.step3Completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Step3Completed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)
        step1Completed,
    required TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)
        step2Completed,
    required TResult Function() step3Completed,
    required TResult Function(List<File> documentParts) photosLoaded,
    required TResult Function() verifyAccount,
    required TResult Function(ConfirmDocumentPart? photoPassportStage)
        backClicked,
  }) {
    return step3Completed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)?
        step1Completed,
    TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)?
        step2Completed,
    TResult Function()? step3Completed,
    TResult Function(List<File> documentParts)? photosLoaded,
    TResult Function()? verifyAccount,
    TResult Function(ConfirmDocumentPart? photoPassportStage)? backClicked,
    required TResult orElse(),
  }) {
    if (step3Completed != null) {
      return step3Completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Step1Completed value) step1Completed,
    required TResult Function(Step2Completed value) step2Completed,
    required TResult Function(Step3Completed value) step3Completed,
    required TResult Function(PhotosLoaded value) photosLoaded,
    required TResult Function(VerifyAccount value) verifyAccount,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return step3Completed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Step1Completed value)? step1Completed,
    TResult Function(Step2Completed value)? step2Completed,
    TResult Function(Step3Completed value)? step3Completed,
    TResult Function(PhotosLoaded value)? photosLoaded,
    TResult Function(VerifyAccount value)? verifyAccount,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (step3Completed != null) {
      return step3Completed(this);
    }
    return orElse();
  }
}

abstract class Step3Completed implements ConfirmationStepsEvent {
  factory Step3Completed() = _$Step3Completed;
}

/// @nodoc
abstract class $PhotosLoadedCopyWith<$Res> {
  factory $PhotosLoadedCopyWith(
          PhotosLoaded value, $Res Function(PhotosLoaded) then) =
      _$PhotosLoadedCopyWithImpl<$Res>;
  $Res call({List<File> documentParts});
}

/// @nodoc
class _$PhotosLoadedCopyWithImpl<$Res>
    extends _$ConfirmationStepsEventCopyWithImpl<$Res>
    implements $PhotosLoadedCopyWith<$Res> {
  _$PhotosLoadedCopyWithImpl(
      PhotosLoaded _value, $Res Function(PhotosLoaded) _then)
      : super(_value, (v) => _then(v as PhotosLoaded));

  @override
  PhotosLoaded get _value => super._value as PhotosLoaded;

  @override
  $Res call({
    Object? documentParts = freezed,
  }) {
    return _then(PhotosLoaded(
      documentParts: documentParts == freezed
          ? _value.documentParts
          : documentParts // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$PhotosLoaded implements PhotosLoaded {
  _$PhotosLoaded({required this.documentParts});

  @override
  final List<File> documentParts;

  @override
  String toString() {
    return 'ConfirmationStepsEvent.photosLoaded(documentParts: $documentParts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhotosLoaded &&
            (identical(other.documentParts, documentParts) ||
                const DeepCollectionEquality()
                    .equals(other.documentParts, documentParts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(documentParts);

  @JsonKey(ignore: true)
  @override
  $PhotosLoadedCopyWith<PhotosLoaded> get copyWith =>
      _$PhotosLoadedCopyWithImpl<PhotosLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)
        step1Completed,
    required TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)
        step2Completed,
    required TResult Function() step3Completed,
    required TResult Function(List<File> documentParts) photosLoaded,
    required TResult Function() verifyAccount,
    required TResult Function(ConfirmDocumentPart? photoPassportStage)
        backClicked,
  }) {
    return photosLoaded(documentParts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)?
        step1Completed,
    TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)?
        step2Completed,
    TResult Function()? step3Completed,
    TResult Function(List<File> documentParts)? photosLoaded,
    TResult Function()? verifyAccount,
    TResult Function(ConfirmDocumentPart? photoPassportStage)? backClicked,
    required TResult orElse(),
  }) {
    if (photosLoaded != null) {
      return photosLoaded(documentParts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Step1Completed value) step1Completed,
    required TResult Function(Step2Completed value) step2Completed,
    required TResult Function(Step3Completed value) step3Completed,
    required TResult Function(PhotosLoaded value) photosLoaded,
    required TResult Function(VerifyAccount value) verifyAccount,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return photosLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Step1Completed value)? step1Completed,
    TResult Function(Step2Completed value)? step2Completed,
    TResult Function(Step3Completed value)? step3Completed,
    TResult Function(PhotosLoaded value)? photosLoaded,
    TResult Function(VerifyAccount value)? verifyAccount,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (photosLoaded != null) {
      return photosLoaded(this);
    }
    return orElse();
  }
}

abstract class PhotosLoaded implements ConfirmationStepsEvent {
  factory PhotosLoaded({required List<File> documentParts}) = _$PhotosLoaded;

  List<File> get documentParts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosLoadedCopyWith<PhotosLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyAccountCopyWith<$Res> {
  factory $VerifyAccountCopyWith(
          VerifyAccount value, $Res Function(VerifyAccount) then) =
      _$VerifyAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyAccountCopyWithImpl<$Res>
    extends _$ConfirmationStepsEventCopyWithImpl<$Res>
    implements $VerifyAccountCopyWith<$Res> {
  _$VerifyAccountCopyWithImpl(
      VerifyAccount _value, $Res Function(VerifyAccount) _then)
      : super(_value, (v) => _then(v as VerifyAccount));

  @override
  VerifyAccount get _value => super._value as VerifyAccount;
}

/// @nodoc

class _$VerifyAccount implements VerifyAccount {
  _$VerifyAccount();

  @override
  String toString() {
    return 'ConfirmationStepsEvent.verifyAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerifyAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)
        step1Completed,
    required TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)
        step2Completed,
    required TResult Function() step3Completed,
    required TResult Function(List<File> documentParts) photosLoaded,
    required TResult Function() verifyAccount,
    required TResult Function(ConfirmDocumentPart? photoPassportStage)
        backClicked,
  }) {
    return verifyAccount();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)?
        step1Completed,
    TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)?
        step2Completed,
    TResult Function()? step3Completed,
    TResult Function(List<File> documentParts)? photosLoaded,
    TResult Function()? verifyAccount,
    TResult Function(ConfirmDocumentPart? photoPassportStage)? backClicked,
    required TResult orElse(),
  }) {
    if (verifyAccount != null) {
      return verifyAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Step1Completed value) step1Completed,
    required TResult Function(Step2Completed value) step2Completed,
    required TResult Function(Step3Completed value) step3Completed,
    required TResult Function(PhotosLoaded value) photosLoaded,
    required TResult Function(VerifyAccount value) verifyAccount,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return verifyAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Step1Completed value)? step1Completed,
    TResult Function(Step2Completed value)? step2Completed,
    TResult Function(Step3Completed value)? step3Completed,
    TResult Function(PhotosLoaded value)? photosLoaded,
    TResult Function(VerifyAccount value)? verifyAccount,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (verifyAccount != null) {
      return verifyAccount(this);
    }
    return orElse();
  }
}

abstract class VerifyAccount implements ConfirmationStepsEvent {
  factory VerifyAccount() = _$VerifyAccount;
}

/// @nodoc
abstract class $BackClickedCopyWith<$Res> {
  factory $BackClickedCopyWith(
          BackClicked value, $Res Function(BackClicked) then) =
      _$BackClickedCopyWithImpl<$Res>;
  $Res call({ConfirmDocumentPart? photoPassportStage});
}

/// @nodoc
class _$BackClickedCopyWithImpl<$Res>
    extends _$ConfirmationStepsEventCopyWithImpl<$Res>
    implements $BackClickedCopyWith<$Res> {
  _$BackClickedCopyWithImpl(
      BackClicked _value, $Res Function(BackClicked) _then)
      : super(_value, (v) => _then(v as BackClicked));

  @override
  BackClicked get _value => super._value as BackClicked;

  @override
  $Res call({
    Object? photoPassportStage = freezed,
  }) {
    return _then(BackClicked(
      photoPassportStage: photoPassportStage == freezed
          ? _value.photoPassportStage
          : photoPassportStage // ignore: cast_nullable_to_non_nullable
              as ConfirmDocumentPart?,
    ));
  }
}

/// @nodoc

class _$BackClicked implements BackClicked {
  _$BackClicked({this.photoPassportStage});

  @override
  final ConfirmDocumentPart? photoPassportStage;

  @override
  String toString() {
    return 'ConfirmationStepsEvent.backClicked(photoPassportStage: $photoPassportStage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BackClicked &&
            (identical(other.photoPassportStage, photoPassportStage) ||
                const DeepCollectionEquality()
                    .equals(other.photoPassportStage, photoPassportStage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoPassportStage);

  @JsonKey(ignore: true)
  @override
  $BackClickedCopyWith<BackClicked> get copyWith =>
      _$BackClickedCopyWithImpl<BackClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)
        step1Completed,
    required TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)
        step2Completed,
    required TResult Function() step3Completed,
    required TResult Function(List<File> documentParts) photosLoaded,
    required TResult Function() verifyAccount,
    required TResult Function(ConfirmDocumentPart? photoPassportStage)
        backClicked,
  }) {
    return backClicked(photoPassportStage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name, String secondName, String surname,
            DateTime dateOfBirth, Gender gender, String phone, String email)?
        step1Completed,
    TResult Function(
            String numberSeries,
            String issuedByWhom,
            String registrationCity,
            String registrationStreet,
            String registrationHouse,
            String registrationFlat,
            String residentialCity,
            String residentialStreet,
            String residentialHouse,
            String residentialFlat,
            DateTime issueDate)?
        step2Completed,
    TResult Function()? step3Completed,
    TResult Function(List<File> documentParts)? photosLoaded,
    TResult Function()? verifyAccount,
    TResult Function(ConfirmDocumentPart? photoPassportStage)? backClicked,
    required TResult orElse(),
  }) {
    if (backClicked != null) {
      return backClicked(photoPassportStage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Step1Completed value) step1Completed,
    required TResult Function(Step2Completed value) step2Completed,
    required TResult Function(Step3Completed value) step3Completed,
    required TResult Function(PhotosLoaded value) photosLoaded,
    required TResult Function(VerifyAccount value) verifyAccount,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return backClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Step1Completed value)? step1Completed,
    TResult Function(Step2Completed value)? step2Completed,
    TResult Function(Step3Completed value)? step3Completed,
    TResult Function(PhotosLoaded value)? photosLoaded,
    TResult Function(VerifyAccount value)? verifyAccount,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (backClicked != null) {
      return backClicked(this);
    }
    return orElse();
  }
}

abstract class BackClicked implements ConfirmationStepsEvent {
  factory BackClicked({ConfirmDocumentPart? photoPassportStage}) =
      _$BackClicked;

  ConfirmDocumentPart? get photoPassportStage =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackClickedCopyWith<BackClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConfirmationStepsStateTearOff {
  const _$ConfirmationStepsStateTearOff();

  _ConfirmationStepsState call(
      {BlocAction? action,
      ConfirmationStage stage = ConfirmationStage.step1,
      ConfirmDocumentPart? photoPassportStage = ConfirmDocumentPart.mainPage,
      CameraLensDirection cameraLensDirection = CameraLensDirection.back,
      String? name,
      String? secondName,
      String? surname,
      DateTime? dateOfBirth,
      Gender? gender,
      String? phone,
      String? email,
      String? numberSeries,
      String? issuedByWhom,
      String? registrationCity,
      String? registrationStreet,
      String? registrationHouse,
      String? registrationFlat,
      String? residentialCity,
      String? residentialStreet,
      String? residentialHouse,
      String? residentialFlat,
      DateTime? issueDate,
      List<File> photos = const []}) {
    return _ConfirmationStepsState(
      action: action,
      stage: stage,
      photoPassportStage: photoPassportStage,
      cameraLensDirection: cameraLensDirection,
      name: name,
      secondName: secondName,
      surname: surname,
      dateOfBirth: dateOfBirth,
      gender: gender,
      phone: phone,
      email: email,
      numberSeries: numberSeries,
      issuedByWhom: issuedByWhom,
      registrationCity: registrationCity,
      registrationStreet: registrationStreet,
      registrationHouse: registrationHouse,
      registrationFlat: registrationFlat,
      residentialCity: residentialCity,
      residentialStreet: residentialStreet,
      residentialHouse: residentialHouse,
      residentialFlat: residentialFlat,
      issueDate: issueDate,
      photos: photos,
    );
  }
}

/// @nodoc
const $ConfirmationStepsState = _$ConfirmationStepsStateTearOff();

/// @nodoc
mixin _$ConfirmationStepsState {
  BlocAction? get action => throw _privateConstructorUsedError;
  ConfirmationStage get stage => throw _privateConstructorUsedError;
  ConfirmDocumentPart? get photoPassportStage =>
      throw _privateConstructorUsedError;
  CameraLensDirection get cameraLensDirection =>
      throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get secondName => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get numberSeries => throw _privateConstructorUsedError;
  String? get issuedByWhom => throw _privateConstructorUsedError;
  String? get registrationCity => throw _privateConstructorUsedError;
  String? get registrationStreet => throw _privateConstructorUsedError;
  String? get registrationHouse => throw _privateConstructorUsedError;
  String? get registrationFlat => throw _privateConstructorUsedError;
  String? get residentialCity => throw _privateConstructorUsedError;
  String? get residentialStreet => throw _privateConstructorUsedError;
  String? get residentialHouse => throw _privateConstructorUsedError;
  String? get residentialFlat => throw _privateConstructorUsedError;
  DateTime? get issueDate => throw _privateConstructorUsedError;
  List<File> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmationStepsStateCopyWith<ConfirmationStepsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationStepsStateCopyWith<$Res> {
  factory $ConfirmationStepsStateCopyWith(ConfirmationStepsState value,
          $Res Function(ConfirmationStepsState) then) =
      _$ConfirmationStepsStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      ConfirmationStage stage,
      ConfirmDocumentPart? photoPassportStage,
      CameraLensDirection cameraLensDirection,
      String? name,
      String? secondName,
      String? surname,
      DateTime? dateOfBirth,
      Gender? gender,
      String? phone,
      String? email,
      String? numberSeries,
      String? issuedByWhom,
      String? registrationCity,
      String? registrationStreet,
      String? registrationHouse,
      String? registrationFlat,
      String? residentialCity,
      String? residentialStreet,
      String? residentialHouse,
      String? residentialFlat,
      DateTime? issueDate,
      List<File> photos});
}

/// @nodoc
class _$ConfirmationStepsStateCopyWithImpl<$Res>
    implements $ConfirmationStepsStateCopyWith<$Res> {
  _$ConfirmationStepsStateCopyWithImpl(this._value, this._then);

  final ConfirmationStepsState _value;
  // ignore: unused_field
  final $Res Function(ConfirmationStepsState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? stage = freezed,
    Object? photoPassportStage = freezed,
    Object? cameraLensDirection = freezed,
    Object? name = freezed,
    Object? secondName = freezed,
    Object? surname = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? numberSeries = freezed,
    Object? issuedByWhom = freezed,
    Object? registrationCity = freezed,
    Object? registrationStreet = freezed,
    Object? registrationHouse = freezed,
    Object? registrationFlat = freezed,
    Object? residentialCity = freezed,
    Object? residentialStreet = freezed,
    Object? residentialHouse = freezed,
    Object? residentialFlat = freezed,
    Object? issueDate = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      stage: stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as ConfirmationStage,
      photoPassportStage: photoPassportStage == freezed
          ? _value.photoPassportStage
          : photoPassportStage // ignore: cast_nullable_to_non_nullable
              as ConfirmDocumentPart?,
      cameraLensDirection: cameraLensDirection == freezed
          ? _value.cameraLensDirection
          : cameraLensDirection // ignore: cast_nullable_to_non_nullable
              as CameraLensDirection,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: secondName == freezed
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      numberSeries: numberSeries == freezed
          ? _value.numberSeries
          : numberSeries // ignore: cast_nullable_to_non_nullable
              as String?,
      issuedByWhom: issuedByWhom == freezed
          ? _value.issuedByWhom
          : issuedByWhom // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationCity: registrationCity == freezed
          ? _value.registrationCity
          : registrationCity // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationStreet: registrationStreet == freezed
          ? _value.registrationStreet
          : registrationStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationHouse: registrationHouse == freezed
          ? _value.registrationHouse
          : registrationHouse // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationFlat: registrationFlat == freezed
          ? _value.registrationFlat
          : registrationFlat // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialCity: residentialCity == freezed
          ? _value.residentialCity
          : residentialCity // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialStreet: residentialStreet == freezed
          ? _value.residentialStreet
          : residentialStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialHouse: residentialHouse == freezed
          ? _value.residentialHouse
          : residentialHouse // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialFlat: residentialFlat == freezed
          ? _value.residentialFlat
          : residentialFlat // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: issueDate == freezed
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
abstract class _$ConfirmationStepsStateCopyWith<$Res>
    implements $ConfirmationStepsStateCopyWith<$Res> {
  factory _$ConfirmationStepsStateCopyWith(_ConfirmationStepsState value,
          $Res Function(_ConfirmationStepsState) then) =
      __$ConfirmationStepsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      ConfirmationStage stage,
      ConfirmDocumentPart? photoPassportStage,
      CameraLensDirection cameraLensDirection,
      String? name,
      String? secondName,
      String? surname,
      DateTime? dateOfBirth,
      Gender? gender,
      String? phone,
      String? email,
      String? numberSeries,
      String? issuedByWhom,
      String? registrationCity,
      String? registrationStreet,
      String? registrationHouse,
      String? registrationFlat,
      String? residentialCity,
      String? residentialStreet,
      String? residentialHouse,
      String? residentialFlat,
      DateTime? issueDate,
      List<File> photos});
}

/// @nodoc
class __$ConfirmationStepsStateCopyWithImpl<$Res>
    extends _$ConfirmationStepsStateCopyWithImpl<$Res>
    implements _$ConfirmationStepsStateCopyWith<$Res> {
  __$ConfirmationStepsStateCopyWithImpl(_ConfirmationStepsState _value,
      $Res Function(_ConfirmationStepsState) _then)
      : super(_value, (v) => _then(v as _ConfirmationStepsState));

  @override
  _ConfirmationStepsState get _value => super._value as _ConfirmationStepsState;

  @override
  $Res call({
    Object? action = freezed,
    Object? stage = freezed,
    Object? photoPassportStage = freezed,
    Object? cameraLensDirection = freezed,
    Object? name = freezed,
    Object? secondName = freezed,
    Object? surname = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? numberSeries = freezed,
    Object? issuedByWhom = freezed,
    Object? registrationCity = freezed,
    Object? registrationStreet = freezed,
    Object? registrationHouse = freezed,
    Object? registrationFlat = freezed,
    Object? residentialCity = freezed,
    Object? residentialStreet = freezed,
    Object? residentialHouse = freezed,
    Object? residentialFlat = freezed,
    Object? issueDate = freezed,
    Object? photos = freezed,
  }) {
    return _then(_ConfirmationStepsState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      stage: stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as ConfirmationStage,
      photoPassportStage: photoPassportStage == freezed
          ? _value.photoPassportStage
          : photoPassportStage // ignore: cast_nullable_to_non_nullable
              as ConfirmDocumentPart?,
      cameraLensDirection: cameraLensDirection == freezed
          ? _value.cameraLensDirection
          : cameraLensDirection // ignore: cast_nullable_to_non_nullable
              as CameraLensDirection,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: secondName == freezed
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      numberSeries: numberSeries == freezed
          ? _value.numberSeries
          : numberSeries // ignore: cast_nullable_to_non_nullable
              as String?,
      issuedByWhom: issuedByWhom == freezed
          ? _value.issuedByWhom
          : issuedByWhom // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationCity: registrationCity == freezed
          ? _value.registrationCity
          : registrationCity // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationStreet: registrationStreet == freezed
          ? _value.registrationStreet
          : registrationStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationHouse: registrationHouse == freezed
          ? _value.registrationHouse
          : registrationHouse // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationFlat: registrationFlat == freezed
          ? _value.registrationFlat
          : registrationFlat // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialCity: residentialCity == freezed
          ? _value.residentialCity
          : residentialCity // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialStreet: residentialStreet == freezed
          ? _value.residentialStreet
          : residentialStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialHouse: residentialHouse == freezed
          ? _value.residentialHouse
          : residentialHouse // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialFlat: residentialFlat == freezed
          ? _value.residentialFlat
          : residentialFlat // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: issueDate == freezed
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$_ConfirmationStepsState implements _ConfirmationStepsState {
  _$_ConfirmationStepsState(
      {this.action,
      this.stage = ConfirmationStage.step1,
      this.photoPassportStage = ConfirmDocumentPart.mainPage,
      this.cameraLensDirection = CameraLensDirection.back,
      this.name,
      this.secondName,
      this.surname,
      this.dateOfBirth,
      this.gender,
      this.phone,
      this.email,
      this.numberSeries,
      this.issuedByWhom,
      this.registrationCity,
      this.registrationStreet,
      this.registrationHouse,
      this.registrationFlat,
      this.residentialCity,
      this.residentialStreet,
      this.residentialHouse,
      this.residentialFlat,
      this.issueDate,
      this.photos = const []});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: ConfirmationStage.step1)
  @override
  final ConfirmationStage stage;
  @JsonKey(defaultValue: ConfirmDocumentPart.mainPage)
  @override
  final ConfirmDocumentPart? photoPassportStage;
  @JsonKey(defaultValue: CameraLensDirection.back)
  @override
  final CameraLensDirection cameraLensDirection;
  @override
  final String? name;
  @override
  final String? secondName;
  @override
  final String? surname;
  @override
  final DateTime? dateOfBirth;
  @override
  final Gender? gender;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? numberSeries;
  @override
  final String? issuedByWhom;
  @override
  final String? registrationCity;
  @override
  final String? registrationStreet;
  @override
  final String? registrationHouse;
  @override
  final String? registrationFlat;
  @override
  final String? residentialCity;
  @override
  final String? residentialStreet;
  @override
  final String? residentialHouse;
  @override
  final String? residentialFlat;
  @override
  final DateTime? issueDate;
  @JsonKey(defaultValue: const [])
  @override
  final List<File> photos;

  @override
  String toString() {
    return 'ConfirmationStepsState(action: $action, stage: $stage, photoPassportStage: $photoPassportStage, cameraLensDirection: $cameraLensDirection, name: $name, secondName: $secondName, surname: $surname, dateOfBirth: $dateOfBirth, gender: $gender, phone: $phone, email: $email, numberSeries: $numberSeries, issuedByWhom: $issuedByWhom, registrationCity: $registrationCity, registrationStreet: $registrationStreet, registrationHouse: $registrationHouse, registrationFlat: $registrationFlat, residentialCity: $residentialCity, residentialStreet: $residentialStreet, residentialHouse: $residentialHouse, residentialFlat: $residentialFlat, issueDate: $issueDate, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmationStepsState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.stage, stage) ||
                const DeepCollectionEquality().equals(other.stage, stage)) &&
            (identical(other.photoPassportStage, photoPassportStage) ||
                const DeepCollectionEquality()
                    .equals(other.photoPassportStage, photoPassportStage)) &&
            (identical(other.cameraLensDirection, cameraLensDirection) ||
                const DeepCollectionEquality()
                    .equals(other.cameraLensDirection, cameraLensDirection)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.secondName, secondName) ||
                const DeepCollectionEquality()
                    .equals(other.secondName, secondName)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.numberSeries, numberSeries) ||
                const DeepCollectionEquality()
                    .equals(other.numberSeries, numberSeries)) &&
            (identical(other.issuedByWhom, issuedByWhom) ||
                const DeepCollectionEquality()
                    .equals(other.issuedByWhom, issuedByWhom)) &&
            (identical(other.registrationCity, registrationCity) ||
                const DeepCollectionEquality()
                    .equals(other.registrationCity, registrationCity)) &&
            (identical(other.registrationStreet, registrationStreet) ||
                const DeepCollectionEquality()
                    .equals(other.registrationStreet, registrationStreet)) &&
            (identical(other.registrationHouse, registrationHouse) ||
                const DeepCollectionEquality()
                    .equals(other.registrationHouse, registrationHouse)) &&
            (identical(other.registrationFlat, registrationFlat) ||
                const DeepCollectionEquality()
                    .equals(other.registrationFlat, registrationFlat)) &&
            (identical(other.residentialCity, residentialCity) ||
                const DeepCollectionEquality()
                    .equals(other.residentialCity, residentialCity)) &&
            (identical(other.residentialStreet, residentialStreet) ||
                const DeepCollectionEquality()
                    .equals(other.residentialStreet, residentialStreet)) &&
            (identical(other.residentialHouse, residentialHouse) ||
                const DeepCollectionEquality()
                    .equals(other.residentialHouse, residentialHouse)) &&
            (identical(other.residentialFlat, residentialFlat) ||
                const DeepCollectionEquality()
                    .equals(other.residentialFlat, residentialFlat)) &&
            (identical(other.issueDate, issueDate) ||
                const DeepCollectionEquality()
                    .equals(other.issueDate, issueDate)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(stage) ^
      const DeepCollectionEquality().hash(photoPassportStage) ^
      const DeepCollectionEquality().hash(cameraLensDirection) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(secondName) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(numberSeries) ^
      const DeepCollectionEquality().hash(issuedByWhom) ^
      const DeepCollectionEquality().hash(registrationCity) ^
      const DeepCollectionEquality().hash(registrationStreet) ^
      const DeepCollectionEquality().hash(registrationHouse) ^
      const DeepCollectionEquality().hash(registrationFlat) ^
      const DeepCollectionEquality().hash(residentialCity) ^
      const DeepCollectionEquality().hash(residentialStreet) ^
      const DeepCollectionEquality().hash(residentialHouse) ^
      const DeepCollectionEquality().hash(residentialFlat) ^
      const DeepCollectionEquality().hash(issueDate) ^
      const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  _$ConfirmationStepsStateCopyWith<_ConfirmationStepsState> get copyWith =>
      __$ConfirmationStepsStateCopyWithImpl<_ConfirmationStepsState>(
          this, _$identity);
}

abstract class _ConfirmationStepsState implements ConfirmationStepsState {
  factory _ConfirmationStepsState(
      {BlocAction? action,
      ConfirmationStage stage,
      ConfirmDocumentPart? photoPassportStage,
      CameraLensDirection cameraLensDirection,
      String? name,
      String? secondName,
      String? surname,
      DateTime? dateOfBirth,
      Gender? gender,
      String? phone,
      String? email,
      String? numberSeries,
      String? issuedByWhom,
      String? registrationCity,
      String? registrationStreet,
      String? registrationHouse,
      String? registrationFlat,
      String? residentialCity,
      String? residentialStreet,
      String? residentialHouse,
      String? residentialFlat,
      DateTime? issueDate,
      List<File> photos}) = _$_ConfirmationStepsState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  ConfirmationStage get stage => throw _privateConstructorUsedError;
  @override
  ConfirmDocumentPart? get photoPassportStage =>
      throw _privateConstructorUsedError;
  @override
  CameraLensDirection get cameraLensDirection =>
      throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get secondName => throw _privateConstructorUsedError;
  @override
  String? get surname => throw _privateConstructorUsedError;
  @override
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  @override
  Gender? get gender => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get numberSeries => throw _privateConstructorUsedError;
  @override
  String? get issuedByWhom => throw _privateConstructorUsedError;
  @override
  String? get registrationCity => throw _privateConstructorUsedError;
  @override
  String? get registrationStreet => throw _privateConstructorUsedError;
  @override
  String? get registrationHouse => throw _privateConstructorUsedError;
  @override
  String? get registrationFlat => throw _privateConstructorUsedError;
  @override
  String? get residentialCity => throw _privateConstructorUsedError;
  @override
  String? get residentialStreet => throw _privateConstructorUsedError;
  @override
  String? get residentialHouse => throw _privateConstructorUsedError;
  @override
  String? get residentialFlat => throw _privateConstructorUsedError;
  @override
  DateTime? get issueDate => throw _privateConstructorUsedError;
  @override
  List<File> get photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConfirmationStepsStateCopyWith<_ConfirmationStepsState> get copyWith =>
      throw _privateConstructorUsedError;
}
