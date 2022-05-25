// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'confirmation_step_3_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConfirmationStep3EventTearOff {
  const _$ConfirmationStep3EventTearOff();

  Init init() {
    return Init();
  }

  LoadPhotos loadPhotos({required List<File> photos}) {
    return LoadPhotos(
      photos: photos,
    );
  }

  BackClicked backClicked() {
    return BackClicked();
  }

  ScreenOpened screenOpened() {
    return ScreenOpened();
  }

  ConfirmAccountClicked confirmAccountClicked() {
    return ConfirmAccountClicked();
  }

  ChangePhotoClicked changePhotoClicked(ConfirmDocumentPart stage) {
    return ChangePhotoClicked(
      stage,
    );
  }
}

/// @nodoc
const $ConfirmationStep3Event = _$ConfirmationStep3EventTearOff();

/// @nodoc
mixin _$ConfirmationStep3Event {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<File> photos) loadPhotos,
    required TResult Function() backClicked,
    required TResult Function() screenOpened,
    required TResult Function() confirmAccountClicked,
    required TResult Function(ConfirmDocumentPart stage) changePhotoClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<File> photos)? loadPhotos,
    TResult Function()? backClicked,
    TResult Function()? screenOpened,
    TResult Function()? confirmAccountClicked,
    TResult Function(ConfirmDocumentPart stage)? changePhotoClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LoadPhotos value) loadPhotos,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(ConfirmAccountClicked value)
        confirmAccountClicked,
    required TResult Function(ChangePhotoClicked value) changePhotoClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LoadPhotos value)? loadPhotos,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(ConfirmAccountClicked value)? confirmAccountClicked,
    TResult Function(ChangePhotoClicked value)? changePhotoClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationStep3EventCopyWith<$Res> {
  factory $ConfirmationStep3EventCopyWith(ConfirmationStep3Event value,
          $Res Function(ConfirmationStep3Event) then) =
      _$ConfirmationStep3EventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmationStep3EventCopyWithImpl<$Res>
    implements $ConfirmationStep3EventCopyWith<$Res> {
  _$ConfirmationStep3EventCopyWithImpl(this._value, this._then);

  final ConfirmationStep3Event _value;
  // ignore: unused_field
  final $Res Function(ConfirmationStep3Event) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res>
    extends _$ConfirmationStep3EventCopyWithImpl<$Res>
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
    return 'ConfirmationStep3Event.init()';
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
    required TResult Function(List<File> photos) loadPhotos,
    required TResult Function() backClicked,
    required TResult Function() screenOpened,
    required TResult Function() confirmAccountClicked,
    required TResult Function(ConfirmDocumentPart stage) changePhotoClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<File> photos)? loadPhotos,
    TResult Function()? backClicked,
    TResult Function()? screenOpened,
    TResult Function()? confirmAccountClicked,
    TResult Function(ConfirmDocumentPart stage)? changePhotoClicked,
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
    required TResult Function(LoadPhotos value) loadPhotos,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(ConfirmAccountClicked value)
        confirmAccountClicked,
    required TResult Function(ChangePhotoClicked value) changePhotoClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LoadPhotos value)? loadPhotos,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(ConfirmAccountClicked value)? confirmAccountClicked,
    TResult Function(ChangePhotoClicked value)? changePhotoClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements ConfirmationStep3Event {
  factory Init() = _$Init;
}

/// @nodoc
abstract class $LoadPhotosCopyWith<$Res> {
  factory $LoadPhotosCopyWith(
          LoadPhotos value, $Res Function(LoadPhotos) then) =
      _$LoadPhotosCopyWithImpl<$Res>;
  $Res call({List<File> photos});
}

/// @nodoc
class _$LoadPhotosCopyWithImpl<$Res>
    extends _$ConfirmationStep3EventCopyWithImpl<$Res>
    implements $LoadPhotosCopyWith<$Res> {
  _$LoadPhotosCopyWithImpl(LoadPhotos _value, $Res Function(LoadPhotos) _then)
      : super(_value, (v) => _then(v as LoadPhotos));

  @override
  LoadPhotos get _value => super._value as LoadPhotos;

  @override
  $Res call({
    Object? photos = freezed,
  }) {
    return _then(LoadPhotos(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$LoadPhotos implements LoadPhotos {
  _$LoadPhotos({required this.photos});

  @override
  final List<File> photos;

  @override
  String toString() {
    return 'ConfirmationStep3Event.loadPhotos(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadPhotos &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  $LoadPhotosCopyWith<LoadPhotos> get copyWith =>
      _$LoadPhotosCopyWithImpl<LoadPhotos>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<File> photos) loadPhotos,
    required TResult Function() backClicked,
    required TResult Function() screenOpened,
    required TResult Function() confirmAccountClicked,
    required TResult Function(ConfirmDocumentPart stage) changePhotoClicked,
  }) {
    return loadPhotos(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<File> photos)? loadPhotos,
    TResult Function()? backClicked,
    TResult Function()? screenOpened,
    TResult Function()? confirmAccountClicked,
    TResult Function(ConfirmDocumentPart stage)? changePhotoClicked,
    required TResult orElse(),
  }) {
    if (loadPhotos != null) {
      return loadPhotos(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LoadPhotos value) loadPhotos,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(ConfirmAccountClicked value)
        confirmAccountClicked,
    required TResult Function(ChangePhotoClicked value) changePhotoClicked,
  }) {
    return loadPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LoadPhotos value)? loadPhotos,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(ConfirmAccountClicked value)? confirmAccountClicked,
    TResult Function(ChangePhotoClicked value)? changePhotoClicked,
    required TResult orElse(),
  }) {
    if (loadPhotos != null) {
      return loadPhotos(this);
    }
    return orElse();
  }
}

abstract class LoadPhotos implements ConfirmationStep3Event {
  factory LoadPhotos({required List<File> photos}) = _$LoadPhotos;

  List<File> get photos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadPhotosCopyWith<LoadPhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackClickedCopyWith<$Res> {
  factory $BackClickedCopyWith(
          BackClicked value, $Res Function(BackClicked) then) =
      _$BackClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$BackClickedCopyWithImpl<$Res>
    extends _$ConfirmationStep3EventCopyWithImpl<$Res>
    implements $BackClickedCopyWith<$Res> {
  _$BackClickedCopyWithImpl(
      BackClicked _value, $Res Function(BackClicked) _then)
      : super(_value, (v) => _then(v as BackClicked));

  @override
  BackClicked get _value => super._value as BackClicked;
}

/// @nodoc

class _$BackClicked implements BackClicked {
  _$BackClicked();

  @override
  String toString() {
    return 'ConfirmationStep3Event.backClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BackClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<File> photos) loadPhotos,
    required TResult Function() backClicked,
    required TResult Function() screenOpened,
    required TResult Function() confirmAccountClicked,
    required TResult Function(ConfirmDocumentPart stage) changePhotoClicked,
  }) {
    return backClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<File> photos)? loadPhotos,
    TResult Function()? backClicked,
    TResult Function()? screenOpened,
    TResult Function()? confirmAccountClicked,
    TResult Function(ConfirmDocumentPart stage)? changePhotoClicked,
    required TResult orElse(),
  }) {
    if (backClicked != null) {
      return backClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LoadPhotos value) loadPhotos,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(ConfirmAccountClicked value)
        confirmAccountClicked,
    required TResult Function(ChangePhotoClicked value) changePhotoClicked,
  }) {
    return backClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LoadPhotos value)? loadPhotos,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(ConfirmAccountClicked value)? confirmAccountClicked,
    TResult Function(ChangePhotoClicked value)? changePhotoClicked,
    required TResult orElse(),
  }) {
    if (backClicked != null) {
      return backClicked(this);
    }
    return orElse();
  }
}

abstract class BackClicked implements ConfirmationStep3Event {
  factory BackClicked() = _$BackClicked;
}

/// @nodoc
abstract class $ScreenOpenedCopyWith<$Res> {
  factory $ScreenOpenedCopyWith(
          ScreenOpened value, $Res Function(ScreenOpened) then) =
      _$ScreenOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScreenOpenedCopyWithImpl<$Res>
    extends _$ConfirmationStep3EventCopyWithImpl<$Res>
    implements $ScreenOpenedCopyWith<$Res> {
  _$ScreenOpenedCopyWithImpl(
      ScreenOpened _value, $Res Function(ScreenOpened) _then)
      : super(_value, (v) => _then(v as ScreenOpened));

  @override
  ScreenOpened get _value => super._value as ScreenOpened;
}

/// @nodoc

class _$ScreenOpened implements ScreenOpened {
  _$ScreenOpened();

  @override
  String toString() {
    return 'ConfirmationStep3Event.screenOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScreenOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<File> photos) loadPhotos,
    required TResult Function() backClicked,
    required TResult Function() screenOpened,
    required TResult Function() confirmAccountClicked,
    required TResult Function(ConfirmDocumentPart stage) changePhotoClicked,
  }) {
    return screenOpened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<File> photos)? loadPhotos,
    TResult Function()? backClicked,
    TResult Function()? screenOpened,
    TResult Function()? confirmAccountClicked,
    TResult Function(ConfirmDocumentPart stage)? changePhotoClicked,
    required TResult orElse(),
  }) {
    if (screenOpened != null) {
      return screenOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LoadPhotos value) loadPhotos,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(ConfirmAccountClicked value)
        confirmAccountClicked,
    required TResult Function(ChangePhotoClicked value) changePhotoClicked,
  }) {
    return screenOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LoadPhotos value)? loadPhotos,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(ConfirmAccountClicked value)? confirmAccountClicked,
    TResult Function(ChangePhotoClicked value)? changePhotoClicked,
    required TResult orElse(),
  }) {
    if (screenOpened != null) {
      return screenOpened(this);
    }
    return orElse();
  }
}

abstract class ScreenOpened implements ConfirmationStep3Event {
  factory ScreenOpened() = _$ScreenOpened;
}

/// @nodoc
abstract class $ConfirmAccountClickedCopyWith<$Res> {
  factory $ConfirmAccountClickedCopyWith(ConfirmAccountClicked value,
          $Res Function(ConfirmAccountClicked) then) =
      _$ConfirmAccountClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmAccountClickedCopyWithImpl<$Res>
    extends _$ConfirmationStep3EventCopyWithImpl<$Res>
    implements $ConfirmAccountClickedCopyWith<$Res> {
  _$ConfirmAccountClickedCopyWithImpl(
      ConfirmAccountClicked _value, $Res Function(ConfirmAccountClicked) _then)
      : super(_value, (v) => _then(v as ConfirmAccountClicked));

  @override
  ConfirmAccountClicked get _value => super._value as ConfirmAccountClicked;
}

/// @nodoc

class _$ConfirmAccountClicked implements ConfirmAccountClicked {
  _$ConfirmAccountClicked();

  @override
  String toString() {
    return 'ConfirmationStep3Event.confirmAccountClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmAccountClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<File> photos) loadPhotos,
    required TResult Function() backClicked,
    required TResult Function() screenOpened,
    required TResult Function() confirmAccountClicked,
    required TResult Function(ConfirmDocumentPart stage) changePhotoClicked,
  }) {
    return confirmAccountClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<File> photos)? loadPhotos,
    TResult Function()? backClicked,
    TResult Function()? screenOpened,
    TResult Function()? confirmAccountClicked,
    TResult Function(ConfirmDocumentPart stage)? changePhotoClicked,
    required TResult orElse(),
  }) {
    if (confirmAccountClicked != null) {
      return confirmAccountClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LoadPhotos value) loadPhotos,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(ConfirmAccountClicked value)
        confirmAccountClicked,
    required TResult Function(ChangePhotoClicked value) changePhotoClicked,
  }) {
    return confirmAccountClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LoadPhotos value)? loadPhotos,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(ConfirmAccountClicked value)? confirmAccountClicked,
    TResult Function(ChangePhotoClicked value)? changePhotoClicked,
    required TResult orElse(),
  }) {
    if (confirmAccountClicked != null) {
      return confirmAccountClicked(this);
    }
    return orElse();
  }
}

abstract class ConfirmAccountClicked implements ConfirmationStep3Event {
  factory ConfirmAccountClicked() = _$ConfirmAccountClicked;
}

/// @nodoc
abstract class $ChangePhotoClickedCopyWith<$Res> {
  factory $ChangePhotoClickedCopyWith(
          ChangePhotoClicked value, $Res Function(ChangePhotoClicked) then) =
      _$ChangePhotoClickedCopyWithImpl<$Res>;
  $Res call({ConfirmDocumentPart stage});
}

/// @nodoc
class _$ChangePhotoClickedCopyWithImpl<$Res>
    extends _$ConfirmationStep3EventCopyWithImpl<$Res>
    implements $ChangePhotoClickedCopyWith<$Res> {
  _$ChangePhotoClickedCopyWithImpl(
      ChangePhotoClicked _value, $Res Function(ChangePhotoClicked) _then)
      : super(_value, (v) => _then(v as ChangePhotoClicked));

  @override
  ChangePhotoClicked get _value => super._value as ChangePhotoClicked;

  @override
  $Res call({
    Object? stage = freezed,
  }) {
    return _then(ChangePhotoClicked(
      stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as ConfirmDocumentPart,
    ));
  }
}

/// @nodoc

class _$ChangePhotoClicked implements ChangePhotoClicked {
  _$ChangePhotoClicked(this.stage);

  @override
  final ConfirmDocumentPart stage;

  @override
  String toString() {
    return 'ConfirmationStep3Event.changePhotoClicked(stage: $stage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangePhotoClicked &&
            (identical(other.stage, stage) ||
                const DeepCollectionEquality().equals(other.stage, stage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stage);

  @JsonKey(ignore: true)
  @override
  $ChangePhotoClickedCopyWith<ChangePhotoClicked> get copyWith =>
      _$ChangePhotoClickedCopyWithImpl<ChangePhotoClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<File> photos) loadPhotos,
    required TResult Function() backClicked,
    required TResult Function() screenOpened,
    required TResult Function() confirmAccountClicked,
    required TResult Function(ConfirmDocumentPart stage) changePhotoClicked,
  }) {
    return changePhotoClicked(stage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<File> photos)? loadPhotos,
    TResult Function()? backClicked,
    TResult Function()? screenOpened,
    TResult Function()? confirmAccountClicked,
    TResult Function(ConfirmDocumentPart stage)? changePhotoClicked,
    required TResult orElse(),
  }) {
    if (changePhotoClicked != null) {
      return changePhotoClicked(stage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LoadPhotos value) loadPhotos,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(ConfirmAccountClicked value)
        confirmAccountClicked,
    required TResult Function(ChangePhotoClicked value) changePhotoClicked,
  }) {
    return changePhotoClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LoadPhotos value)? loadPhotos,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(ConfirmAccountClicked value)? confirmAccountClicked,
    TResult Function(ChangePhotoClicked value)? changePhotoClicked,
    required TResult orElse(),
  }) {
    if (changePhotoClicked != null) {
      return changePhotoClicked(this);
    }
    return orElse();
  }
}

abstract class ChangePhotoClicked implements ConfirmationStep3Event {
  factory ChangePhotoClicked(ConfirmDocumentPart stage) = _$ChangePhotoClicked;

  ConfirmDocumentPart get stage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePhotoClickedCopyWith<ChangePhotoClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConfirmationStep3StateTearOff {
  const _$ConfirmationStep3StateTearOff();

  _ConfirmationStep3State call(
      {BlocAction? action,
      List<DocumentPartEntity> documentParts = const [],
      List<File> photos = const []}) {
    return _ConfirmationStep3State(
      action: action,
      documentParts: documentParts,
      photos: photos,
    );
  }
}

/// @nodoc
const $ConfirmationStep3State = _$ConfirmationStep3StateTearOff();

/// @nodoc
mixin _$ConfirmationStep3State {
  BlocAction? get action => throw _privateConstructorUsedError;
  List<DocumentPartEntity> get documentParts =>
      throw _privateConstructorUsedError;
  List<File> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmationStep3StateCopyWith<ConfirmationStep3State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationStep3StateCopyWith<$Res> {
  factory $ConfirmationStep3StateCopyWith(ConfirmationStep3State value,
          $Res Function(ConfirmationStep3State) then) =
      _$ConfirmationStep3StateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      List<DocumentPartEntity> documentParts,
      List<File> photos});
}

/// @nodoc
class _$ConfirmationStep3StateCopyWithImpl<$Res>
    implements $ConfirmationStep3StateCopyWith<$Res> {
  _$ConfirmationStep3StateCopyWithImpl(this._value, this._then);

  final ConfirmationStep3State _value;
  // ignore: unused_field
  final $Res Function(ConfirmationStep3State) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? documentParts = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      documentParts: documentParts == freezed
          ? _value.documentParts
          : documentParts // ignore: cast_nullable_to_non_nullable
              as List<DocumentPartEntity>,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
abstract class _$ConfirmationStep3StateCopyWith<$Res>
    implements $ConfirmationStep3StateCopyWith<$Res> {
  factory _$ConfirmationStep3StateCopyWith(_ConfirmationStep3State value,
          $Res Function(_ConfirmationStep3State) then) =
      __$ConfirmationStep3StateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      List<DocumentPartEntity> documentParts,
      List<File> photos});
}

/// @nodoc
class __$ConfirmationStep3StateCopyWithImpl<$Res>
    extends _$ConfirmationStep3StateCopyWithImpl<$Res>
    implements _$ConfirmationStep3StateCopyWith<$Res> {
  __$ConfirmationStep3StateCopyWithImpl(_ConfirmationStep3State _value,
      $Res Function(_ConfirmationStep3State) _then)
      : super(_value, (v) => _then(v as _ConfirmationStep3State));

  @override
  _ConfirmationStep3State get _value => super._value as _ConfirmationStep3State;

  @override
  $Res call({
    Object? action = freezed,
    Object? documentParts = freezed,
    Object? photos = freezed,
  }) {
    return _then(_ConfirmationStep3State(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      documentParts: documentParts == freezed
          ? _value.documentParts
          : documentParts // ignore: cast_nullable_to_non_nullable
              as List<DocumentPartEntity>,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$_ConfirmationStep3State implements _ConfirmationStep3State {
  _$_ConfirmationStep3State(
      {this.action, this.documentParts = const [], this.photos = const []});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: const [])
  @override
  final List<DocumentPartEntity> documentParts;
  @JsonKey(defaultValue: const [])
  @override
  final List<File> photos;

  @override
  String toString() {
    return 'ConfirmationStep3State(action: $action, documentParts: $documentParts, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmationStep3State &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.documentParts, documentParts) ||
                const DeepCollectionEquality()
                    .equals(other.documentParts, documentParts)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(documentParts) ^
      const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  _$ConfirmationStep3StateCopyWith<_ConfirmationStep3State> get copyWith =>
      __$ConfirmationStep3StateCopyWithImpl<_ConfirmationStep3State>(
          this, _$identity);
}

abstract class _ConfirmationStep3State implements ConfirmationStep3State {
  factory _ConfirmationStep3State(
      {BlocAction? action,
      List<DocumentPartEntity> documentParts,
      List<File> photos}) = _$_ConfirmationStep3State;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  List<DocumentPartEntity> get documentParts =>
      throw _privateConstructorUsedError;
  @override
  List<File> get photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConfirmationStep3StateCopyWith<_ConfirmationStep3State> get copyWith =>
      throw _privateConstructorUsedError;
}
