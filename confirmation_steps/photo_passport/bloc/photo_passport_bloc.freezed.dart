// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'photo_passport_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotoPassportEventTearOff {
  const _$PhotoPassportEventTearOff();

  Init init() {
    return Init();
  }

  BackClicked backClicked() {
    return BackClicked();
  }

  CameraPrepared cameraPrepared() {
    return CameraPrepared();
  }

  CameraDisposed cameraDisposed() {
    return CameraDisposed();
  }

  PhotoButtonClicked photoButtonClicked(ConfirmDocumentPart stage, File image) {
    return PhotoButtonClicked(
      stage,
      image,
    );
  }

  ChangeStage changeStage(ConfirmDocumentPart stage) {
    return ChangeStage(
      stage,
    );
  }
}

/// @nodoc
const $PhotoPassportEvent = _$PhotoPassportEventTearOff();

/// @nodoc
mixin _$PhotoPassportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backClicked,
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function(ConfirmDocumentPart stage, File image)
        photoButtonClicked,
    required TResult Function(ConfirmDocumentPart stage) changeStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backClicked,
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function(ConfirmDocumentPart stage, File image)? photoButtonClicked,
    TResult Function(ConfirmDocumentPart stage)? changeStage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(PhotoButtonClicked value) photoButtonClicked,
    required TResult Function(ChangeStage value) changeStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(PhotoButtonClicked value)? photoButtonClicked,
    TResult Function(ChangeStage value)? changeStage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoPassportEventCopyWith<$Res> {
  factory $PhotoPassportEventCopyWith(
          PhotoPassportEvent value, $Res Function(PhotoPassportEvent) then) =
      _$PhotoPassportEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoPassportEventCopyWithImpl<$Res>
    implements $PhotoPassportEventCopyWith<$Res> {
  _$PhotoPassportEventCopyWithImpl(this._value, this._then);

  final PhotoPassportEvent _value;
  // ignore: unused_field
  final $Res Function(PhotoPassportEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$PhotoPassportEventCopyWithImpl<$Res>
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
    return 'PhotoPassportEvent.init()';
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
    required TResult Function() backClicked,
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function(ConfirmDocumentPart stage, File image)
        photoButtonClicked,
    required TResult Function(ConfirmDocumentPart stage) changeStage,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backClicked,
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function(ConfirmDocumentPart stage, File image)? photoButtonClicked,
    TResult Function(ConfirmDocumentPart stage)? changeStage,
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
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(PhotoButtonClicked value) photoButtonClicked,
    required TResult Function(ChangeStage value) changeStage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(PhotoButtonClicked value)? photoButtonClicked,
    TResult Function(ChangeStage value)? changeStage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements PhotoPassportEvent {
  factory Init() = _$Init;
}

/// @nodoc
abstract class $BackClickedCopyWith<$Res> {
  factory $BackClickedCopyWith(
          BackClicked value, $Res Function(BackClicked) then) =
      _$BackClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$BackClickedCopyWithImpl<$Res>
    extends _$PhotoPassportEventCopyWithImpl<$Res>
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
    return 'PhotoPassportEvent.backClicked()';
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
    required TResult Function() backClicked,
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function(ConfirmDocumentPart stage, File image)
        photoButtonClicked,
    required TResult Function(ConfirmDocumentPart stage) changeStage,
  }) {
    return backClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backClicked,
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function(ConfirmDocumentPart stage, File image)? photoButtonClicked,
    TResult Function(ConfirmDocumentPart stage)? changeStage,
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
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(PhotoButtonClicked value) photoButtonClicked,
    required TResult Function(ChangeStage value) changeStage,
  }) {
    return backClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(PhotoButtonClicked value)? photoButtonClicked,
    TResult Function(ChangeStage value)? changeStage,
    required TResult orElse(),
  }) {
    if (backClicked != null) {
      return backClicked(this);
    }
    return orElse();
  }
}

abstract class BackClicked implements PhotoPassportEvent {
  factory BackClicked() = _$BackClicked;
}

/// @nodoc
abstract class $CameraPreparedCopyWith<$Res> {
  factory $CameraPreparedCopyWith(
          CameraPrepared value, $Res Function(CameraPrepared) then) =
      _$CameraPreparedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraPreparedCopyWithImpl<$Res>
    extends _$PhotoPassportEventCopyWithImpl<$Res>
    implements $CameraPreparedCopyWith<$Res> {
  _$CameraPreparedCopyWithImpl(
      CameraPrepared _value, $Res Function(CameraPrepared) _then)
      : super(_value, (v) => _then(v as CameraPrepared));

  @override
  CameraPrepared get _value => super._value as CameraPrepared;
}

/// @nodoc

class _$CameraPrepared implements CameraPrepared {
  _$CameraPrepared();

  @override
  String toString() {
    return 'PhotoPassportEvent.cameraPrepared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CameraPrepared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backClicked,
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function(ConfirmDocumentPart stage, File image)
        photoButtonClicked,
    required TResult Function(ConfirmDocumentPart stage) changeStage,
  }) {
    return cameraPrepared();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backClicked,
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function(ConfirmDocumentPart stage, File image)? photoButtonClicked,
    TResult Function(ConfirmDocumentPart stage)? changeStage,
    required TResult orElse(),
  }) {
    if (cameraPrepared != null) {
      return cameraPrepared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(PhotoButtonClicked value) photoButtonClicked,
    required TResult Function(ChangeStage value) changeStage,
  }) {
    return cameraPrepared(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(PhotoButtonClicked value)? photoButtonClicked,
    TResult Function(ChangeStage value)? changeStage,
    required TResult orElse(),
  }) {
    if (cameraPrepared != null) {
      return cameraPrepared(this);
    }
    return orElse();
  }
}

abstract class CameraPrepared implements PhotoPassportEvent {
  factory CameraPrepared() = _$CameraPrepared;
}

/// @nodoc
abstract class $CameraDisposedCopyWith<$Res> {
  factory $CameraDisposedCopyWith(
          CameraDisposed value, $Res Function(CameraDisposed) then) =
      _$CameraDisposedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraDisposedCopyWithImpl<$Res>
    extends _$PhotoPassportEventCopyWithImpl<$Res>
    implements $CameraDisposedCopyWith<$Res> {
  _$CameraDisposedCopyWithImpl(
      CameraDisposed _value, $Res Function(CameraDisposed) _then)
      : super(_value, (v) => _then(v as CameraDisposed));

  @override
  CameraDisposed get _value => super._value as CameraDisposed;
}

/// @nodoc

class _$CameraDisposed implements CameraDisposed {
  _$CameraDisposed();

  @override
  String toString() {
    return 'PhotoPassportEvent.cameraDisposed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CameraDisposed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backClicked,
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function(ConfirmDocumentPart stage, File image)
        photoButtonClicked,
    required TResult Function(ConfirmDocumentPart stage) changeStage,
  }) {
    return cameraDisposed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backClicked,
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function(ConfirmDocumentPart stage, File image)? photoButtonClicked,
    TResult Function(ConfirmDocumentPart stage)? changeStage,
    required TResult orElse(),
  }) {
    if (cameraDisposed != null) {
      return cameraDisposed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(PhotoButtonClicked value) photoButtonClicked,
    required TResult Function(ChangeStage value) changeStage,
  }) {
    return cameraDisposed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(PhotoButtonClicked value)? photoButtonClicked,
    TResult Function(ChangeStage value)? changeStage,
    required TResult orElse(),
  }) {
    if (cameraDisposed != null) {
      return cameraDisposed(this);
    }
    return orElse();
  }
}

abstract class CameraDisposed implements PhotoPassportEvent {
  factory CameraDisposed() = _$CameraDisposed;
}

/// @nodoc
abstract class $PhotoButtonClickedCopyWith<$Res> {
  factory $PhotoButtonClickedCopyWith(
          PhotoButtonClicked value, $Res Function(PhotoButtonClicked) then) =
      _$PhotoButtonClickedCopyWithImpl<$Res>;
  $Res call({ConfirmDocumentPart stage, File image});
}

/// @nodoc
class _$PhotoButtonClickedCopyWithImpl<$Res>
    extends _$PhotoPassportEventCopyWithImpl<$Res>
    implements $PhotoButtonClickedCopyWith<$Res> {
  _$PhotoButtonClickedCopyWithImpl(
      PhotoButtonClicked _value, $Res Function(PhotoButtonClicked) _then)
      : super(_value, (v) => _then(v as PhotoButtonClicked));

  @override
  PhotoButtonClicked get _value => super._value as PhotoButtonClicked;

  @override
  $Res call({
    Object? stage = freezed,
    Object? image = freezed,
  }) {
    return _then(PhotoButtonClicked(
      stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as ConfirmDocumentPart,
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$PhotoButtonClicked implements PhotoButtonClicked {
  _$PhotoButtonClicked(this.stage, this.image);

  @override
  final ConfirmDocumentPart stage;
  @override
  final File image;

  @override
  String toString() {
    return 'PhotoPassportEvent.photoButtonClicked(stage: $stage, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhotoButtonClicked &&
            (identical(other.stage, stage) ||
                const DeepCollectionEquality().equals(other.stage, stage)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stage) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  $PhotoButtonClickedCopyWith<PhotoButtonClicked> get copyWith =>
      _$PhotoButtonClickedCopyWithImpl<PhotoButtonClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backClicked,
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function(ConfirmDocumentPart stage, File image)
        photoButtonClicked,
    required TResult Function(ConfirmDocumentPart stage) changeStage,
  }) {
    return photoButtonClicked(stage, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backClicked,
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function(ConfirmDocumentPart stage, File image)? photoButtonClicked,
    TResult Function(ConfirmDocumentPart stage)? changeStage,
    required TResult orElse(),
  }) {
    if (photoButtonClicked != null) {
      return photoButtonClicked(stage, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(PhotoButtonClicked value) photoButtonClicked,
    required TResult Function(ChangeStage value) changeStage,
  }) {
    return photoButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(PhotoButtonClicked value)? photoButtonClicked,
    TResult Function(ChangeStage value)? changeStage,
    required TResult orElse(),
  }) {
    if (photoButtonClicked != null) {
      return photoButtonClicked(this);
    }
    return orElse();
  }
}

abstract class PhotoButtonClicked implements PhotoPassportEvent {
  factory PhotoButtonClicked(ConfirmDocumentPart stage, File image) =
      _$PhotoButtonClicked;

  ConfirmDocumentPart get stage => throw _privateConstructorUsedError;
  File get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoButtonClickedCopyWith<PhotoButtonClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeStageCopyWith<$Res> {
  factory $ChangeStageCopyWith(
          ChangeStage value, $Res Function(ChangeStage) then) =
      _$ChangeStageCopyWithImpl<$Res>;
  $Res call({ConfirmDocumentPart stage});
}

/// @nodoc
class _$ChangeStageCopyWithImpl<$Res>
    extends _$PhotoPassportEventCopyWithImpl<$Res>
    implements $ChangeStageCopyWith<$Res> {
  _$ChangeStageCopyWithImpl(
      ChangeStage _value, $Res Function(ChangeStage) _then)
      : super(_value, (v) => _then(v as ChangeStage));

  @override
  ChangeStage get _value => super._value as ChangeStage;

  @override
  $Res call({
    Object? stage = freezed,
  }) {
    return _then(ChangeStage(
      stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as ConfirmDocumentPart,
    ));
  }
}

/// @nodoc

class _$ChangeStage implements ChangeStage {
  _$ChangeStage(this.stage);

  @override
  final ConfirmDocumentPart stage;

  @override
  String toString() {
    return 'PhotoPassportEvent.changeStage(stage: $stage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeStage &&
            (identical(other.stage, stage) ||
                const DeepCollectionEquality().equals(other.stage, stage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stage);

  @JsonKey(ignore: true)
  @override
  $ChangeStageCopyWith<ChangeStage> get copyWith =>
      _$ChangeStageCopyWithImpl<ChangeStage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backClicked,
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function(ConfirmDocumentPart stage, File image)
        photoButtonClicked,
    required TResult Function(ConfirmDocumentPart stage) changeStage,
  }) {
    return changeStage(stage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backClicked,
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function(ConfirmDocumentPart stage, File image)? photoButtonClicked,
    TResult Function(ConfirmDocumentPart stage)? changeStage,
    required TResult orElse(),
  }) {
    if (changeStage != null) {
      return changeStage(stage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(PhotoButtonClicked value) photoButtonClicked,
    required TResult Function(ChangeStage value) changeStage,
  }) {
    return changeStage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(PhotoButtonClicked value)? photoButtonClicked,
    TResult Function(ChangeStage value)? changeStage,
    required TResult orElse(),
  }) {
    if (changeStage != null) {
      return changeStage(this);
    }
    return orElse();
  }
}

abstract class ChangeStage implements PhotoPassportEvent {
  factory ChangeStage(ConfirmDocumentPart stage) = _$ChangeStage;

  ConfirmDocumentPart get stage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeStageCopyWith<ChangeStage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PhotoPassportStateTearOff {
  const _$PhotoPassportStateTearOff();

  _PhotoPassportState call(
      {BlocAction? action,
      ConfirmDocumentPart stage = ConfirmDocumentPart.mainPage,
      List<File> photos = const [],
      bool cameraReady = false,
      bool returnValue = false}) {
    return _PhotoPassportState(
      action: action,
      stage: stage,
      photos: photos,
      cameraReady: cameraReady,
      returnValue: returnValue,
    );
  }
}

/// @nodoc
const $PhotoPassportState = _$PhotoPassportStateTearOff();

/// @nodoc
mixin _$PhotoPassportState {
  BlocAction? get action => throw _privateConstructorUsedError;
  ConfirmDocumentPart get stage => throw _privateConstructorUsedError;
  List<File> get photos => throw _privateConstructorUsedError;
  bool get cameraReady => throw _privateConstructorUsedError;
  bool get returnValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoPassportStateCopyWith<PhotoPassportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoPassportStateCopyWith<$Res> {
  factory $PhotoPassportStateCopyWith(
          PhotoPassportState value, $Res Function(PhotoPassportState) then) =
      _$PhotoPassportStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      ConfirmDocumentPart stage,
      List<File> photos,
      bool cameraReady,
      bool returnValue});
}

/// @nodoc
class _$PhotoPassportStateCopyWithImpl<$Res>
    implements $PhotoPassportStateCopyWith<$Res> {
  _$PhotoPassportStateCopyWithImpl(this._value, this._then);

  final PhotoPassportState _value;
  // ignore: unused_field
  final $Res Function(PhotoPassportState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? stage = freezed,
    Object? photos = freezed,
    Object? cameraReady = freezed,
    Object? returnValue = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      stage: stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as ConfirmDocumentPart,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<File>,
      cameraReady: cameraReady == freezed
          ? _value.cameraReady
          : cameraReady // ignore: cast_nullable_to_non_nullable
              as bool,
      returnValue: returnValue == freezed
          ? _value.returnValue
          : returnValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PhotoPassportStateCopyWith<$Res>
    implements $PhotoPassportStateCopyWith<$Res> {
  factory _$PhotoPassportStateCopyWith(
          _PhotoPassportState value, $Res Function(_PhotoPassportState) then) =
      __$PhotoPassportStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      ConfirmDocumentPart stage,
      List<File> photos,
      bool cameraReady,
      bool returnValue});
}

/// @nodoc
class __$PhotoPassportStateCopyWithImpl<$Res>
    extends _$PhotoPassportStateCopyWithImpl<$Res>
    implements _$PhotoPassportStateCopyWith<$Res> {
  __$PhotoPassportStateCopyWithImpl(
      _PhotoPassportState _value, $Res Function(_PhotoPassportState) _then)
      : super(_value, (v) => _then(v as _PhotoPassportState));

  @override
  _PhotoPassportState get _value => super._value as _PhotoPassportState;

  @override
  $Res call({
    Object? action = freezed,
    Object? stage = freezed,
    Object? photos = freezed,
    Object? cameraReady = freezed,
    Object? returnValue = freezed,
  }) {
    return _then(_PhotoPassportState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      stage: stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as ConfirmDocumentPart,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<File>,
      cameraReady: cameraReady == freezed
          ? _value.cameraReady
          : cameraReady // ignore: cast_nullable_to_non_nullable
              as bool,
      returnValue: returnValue == freezed
          ? _value.returnValue
          : returnValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PhotoPassportState implements _PhotoPassportState {
  _$_PhotoPassportState(
      {this.action,
      this.stage = ConfirmDocumentPart.mainPage,
      this.photos = const [],
      this.cameraReady = false,
      this.returnValue = false});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: ConfirmDocumentPart.mainPage)
  @override
  final ConfirmDocumentPart stage;
  @JsonKey(defaultValue: const [])
  @override
  final List<File> photos;
  @JsonKey(defaultValue: false)
  @override
  final bool cameraReady;
  @JsonKey(defaultValue: false)
  @override
  final bool returnValue;

  @override
  String toString() {
    return 'PhotoPassportState(action: $action, stage: $stage, photos: $photos, cameraReady: $cameraReady, returnValue: $returnValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoPassportState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.stage, stage) ||
                const DeepCollectionEquality().equals(other.stage, stage)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.cameraReady, cameraReady) ||
                const DeepCollectionEquality()
                    .equals(other.cameraReady, cameraReady)) &&
            (identical(other.returnValue, returnValue) ||
                const DeepCollectionEquality()
                    .equals(other.returnValue, returnValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(stage) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(cameraReady) ^
      const DeepCollectionEquality().hash(returnValue);

  @JsonKey(ignore: true)
  @override
  _$PhotoPassportStateCopyWith<_PhotoPassportState> get copyWith =>
      __$PhotoPassportStateCopyWithImpl<_PhotoPassportState>(this, _$identity);
}

abstract class _PhotoPassportState implements PhotoPassportState {
  factory _PhotoPassportState(
      {BlocAction? action,
      ConfirmDocumentPart stage,
      List<File> photos,
      bool cameraReady,
      bool returnValue}) = _$_PhotoPassportState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  ConfirmDocumentPart get stage => throw _privateConstructorUsedError;
  @override
  List<File> get photos => throw _privateConstructorUsedError;
  @override
  bool get cameraReady => throw _privateConstructorUsedError;
  @override
  bool get returnValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotoPassportStateCopyWith<_PhotoPassportState> get copyWith =>
      throw _privateConstructorUsedError;
}
