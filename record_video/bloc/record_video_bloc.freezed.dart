// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'record_video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecordVideoEventTearOff {
  const _$RecordVideoEventTearOff();

  CameraPrepared cameraPrepared() {
    return CameraPrepared();
  }

  CameraDisposed cameraDisposed() {
    return CameraDisposed();
  }

  StartRecordClicked startRecordClicked() {
    return StartRecordClicked();
  }

  PlayVideoClicked playVideoClicked() {
    return PlayVideoClicked();
  }

  StopVideoClicked stopVideoClicked() {
    return StopVideoClicked();
  }

  StopRecordClicked stopRecordClicked() {
    return StopRecordClicked();
  }

  ReshootClicked reshootClicked() {
    return ReshootClicked();
  }

  ConfirmClicked confirmClicked() {
    return ConfirmClicked();
  }

  VideoRecorded videoRecorded(File videoFile) {
    return VideoRecorded(
      videoFile,
    );
  }

  VideoPlayerPrepared videoPlayerPrepared() {
    return VideoPlayerPrepared();
  }
}

/// @nodoc
const $RecordVideoEvent = _$RecordVideoEventTearOff();

/// @nodoc
mixin _$RecordVideoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function() startRecordClicked,
    required TResult Function() playVideoClicked,
    required TResult Function() stopVideoClicked,
    required TResult Function() stopRecordClicked,
    required TResult Function() reshootClicked,
    required TResult Function() confirmClicked,
    required TResult Function(File videoFile) videoRecorded,
    required TResult Function() videoPlayerPrepared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function()? startRecordClicked,
    TResult Function()? playVideoClicked,
    TResult Function()? stopVideoClicked,
    TResult Function()? stopRecordClicked,
    TResult Function()? reshootClicked,
    TResult Function()? confirmClicked,
    TResult Function(File videoFile)? videoRecorded,
    TResult Function()? videoPlayerPrepared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(StartRecordClicked value) startRecordClicked,
    required TResult Function(PlayVideoClicked value) playVideoClicked,
    required TResult Function(StopVideoClicked value) stopVideoClicked,
    required TResult Function(StopRecordClicked value) stopRecordClicked,
    required TResult Function(ReshootClicked value) reshootClicked,
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(VideoRecorded value) videoRecorded,
    required TResult Function(VideoPlayerPrepared value) videoPlayerPrepared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(StartRecordClicked value)? startRecordClicked,
    TResult Function(PlayVideoClicked value)? playVideoClicked,
    TResult Function(StopVideoClicked value)? stopVideoClicked,
    TResult Function(StopRecordClicked value)? stopRecordClicked,
    TResult Function(ReshootClicked value)? reshootClicked,
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(VideoRecorded value)? videoRecorded,
    TResult Function(VideoPlayerPrepared value)? videoPlayerPrepared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordVideoEventCopyWith<$Res> {
  factory $RecordVideoEventCopyWith(
          RecordVideoEvent value, $Res Function(RecordVideoEvent) then) =
      _$RecordVideoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecordVideoEventCopyWithImpl<$Res>
    implements $RecordVideoEventCopyWith<$Res> {
  _$RecordVideoEventCopyWithImpl(this._value, this._then);

  final RecordVideoEvent _value;
  // ignore: unused_field
  final $Res Function(RecordVideoEvent) _then;
}

/// @nodoc
abstract class $CameraPreparedCopyWith<$Res> {
  factory $CameraPreparedCopyWith(
          CameraPrepared value, $Res Function(CameraPrepared) then) =
      _$CameraPreparedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraPreparedCopyWithImpl<$Res>
    extends _$RecordVideoEventCopyWithImpl<$Res>
    implements $CameraPreparedCopyWith<$Res> {
  _$CameraPreparedCopyWithImpl(
      CameraPrepared _value, $Res Function(CameraPrepared) _then)
      : super(_value, (v) => _then(v as CameraPrepared));

  @override
  CameraPrepared get _value => super._value as CameraPrepared;
}

/// @nodoc

class _$CameraPrepared with DiagnosticableTreeMixin implements CameraPrepared {
  _$CameraPrepared();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordVideoEvent.cameraPrepared()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordVideoEvent.cameraPrepared'));
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
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function() startRecordClicked,
    required TResult Function() playVideoClicked,
    required TResult Function() stopVideoClicked,
    required TResult Function() stopRecordClicked,
    required TResult Function() reshootClicked,
    required TResult Function() confirmClicked,
    required TResult Function(File videoFile) videoRecorded,
    required TResult Function() videoPlayerPrepared,
  }) {
    return cameraPrepared();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function()? startRecordClicked,
    TResult Function()? playVideoClicked,
    TResult Function()? stopVideoClicked,
    TResult Function()? stopRecordClicked,
    TResult Function()? reshootClicked,
    TResult Function()? confirmClicked,
    TResult Function(File videoFile)? videoRecorded,
    TResult Function()? videoPlayerPrepared,
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
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(StartRecordClicked value) startRecordClicked,
    required TResult Function(PlayVideoClicked value) playVideoClicked,
    required TResult Function(StopVideoClicked value) stopVideoClicked,
    required TResult Function(StopRecordClicked value) stopRecordClicked,
    required TResult Function(ReshootClicked value) reshootClicked,
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(VideoRecorded value) videoRecorded,
    required TResult Function(VideoPlayerPrepared value) videoPlayerPrepared,
  }) {
    return cameraPrepared(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(StartRecordClicked value)? startRecordClicked,
    TResult Function(PlayVideoClicked value)? playVideoClicked,
    TResult Function(StopVideoClicked value)? stopVideoClicked,
    TResult Function(StopRecordClicked value)? stopRecordClicked,
    TResult Function(ReshootClicked value)? reshootClicked,
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(VideoRecorded value)? videoRecorded,
    TResult Function(VideoPlayerPrepared value)? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (cameraPrepared != null) {
      return cameraPrepared(this);
    }
    return orElse();
  }
}

abstract class CameraPrepared implements RecordVideoEvent {
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
    extends _$RecordVideoEventCopyWithImpl<$Res>
    implements $CameraDisposedCopyWith<$Res> {
  _$CameraDisposedCopyWithImpl(
      CameraDisposed _value, $Res Function(CameraDisposed) _then)
      : super(_value, (v) => _then(v as CameraDisposed));

  @override
  CameraDisposed get _value => super._value as CameraDisposed;
}

/// @nodoc

class _$CameraDisposed with DiagnosticableTreeMixin implements CameraDisposed {
  _$CameraDisposed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordVideoEvent.cameraDisposed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordVideoEvent.cameraDisposed'));
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
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function() startRecordClicked,
    required TResult Function() playVideoClicked,
    required TResult Function() stopVideoClicked,
    required TResult Function() stopRecordClicked,
    required TResult Function() reshootClicked,
    required TResult Function() confirmClicked,
    required TResult Function(File videoFile) videoRecorded,
    required TResult Function() videoPlayerPrepared,
  }) {
    return cameraDisposed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function()? startRecordClicked,
    TResult Function()? playVideoClicked,
    TResult Function()? stopVideoClicked,
    TResult Function()? stopRecordClicked,
    TResult Function()? reshootClicked,
    TResult Function()? confirmClicked,
    TResult Function(File videoFile)? videoRecorded,
    TResult Function()? videoPlayerPrepared,
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
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(StartRecordClicked value) startRecordClicked,
    required TResult Function(PlayVideoClicked value) playVideoClicked,
    required TResult Function(StopVideoClicked value) stopVideoClicked,
    required TResult Function(StopRecordClicked value) stopRecordClicked,
    required TResult Function(ReshootClicked value) reshootClicked,
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(VideoRecorded value) videoRecorded,
    required TResult Function(VideoPlayerPrepared value) videoPlayerPrepared,
  }) {
    return cameraDisposed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(StartRecordClicked value)? startRecordClicked,
    TResult Function(PlayVideoClicked value)? playVideoClicked,
    TResult Function(StopVideoClicked value)? stopVideoClicked,
    TResult Function(StopRecordClicked value)? stopRecordClicked,
    TResult Function(ReshootClicked value)? reshootClicked,
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(VideoRecorded value)? videoRecorded,
    TResult Function(VideoPlayerPrepared value)? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (cameraDisposed != null) {
      return cameraDisposed(this);
    }
    return orElse();
  }
}

abstract class CameraDisposed implements RecordVideoEvent {
  factory CameraDisposed() = _$CameraDisposed;
}

/// @nodoc
abstract class $StartRecordClickedCopyWith<$Res> {
  factory $StartRecordClickedCopyWith(
          StartRecordClicked value, $Res Function(StartRecordClicked) then) =
      _$StartRecordClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartRecordClickedCopyWithImpl<$Res>
    extends _$RecordVideoEventCopyWithImpl<$Res>
    implements $StartRecordClickedCopyWith<$Res> {
  _$StartRecordClickedCopyWithImpl(
      StartRecordClicked _value, $Res Function(StartRecordClicked) _then)
      : super(_value, (v) => _then(v as StartRecordClicked));

  @override
  StartRecordClicked get _value => super._value as StartRecordClicked;
}

/// @nodoc

class _$StartRecordClicked
    with DiagnosticableTreeMixin
    implements StartRecordClicked {
  _$StartRecordClicked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordVideoEvent.startRecordClicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordVideoEvent.startRecordClicked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StartRecordClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function() startRecordClicked,
    required TResult Function() playVideoClicked,
    required TResult Function() stopVideoClicked,
    required TResult Function() stopRecordClicked,
    required TResult Function() reshootClicked,
    required TResult Function() confirmClicked,
    required TResult Function(File videoFile) videoRecorded,
    required TResult Function() videoPlayerPrepared,
  }) {
    return startRecordClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function()? startRecordClicked,
    TResult Function()? playVideoClicked,
    TResult Function()? stopVideoClicked,
    TResult Function()? stopRecordClicked,
    TResult Function()? reshootClicked,
    TResult Function()? confirmClicked,
    TResult Function(File videoFile)? videoRecorded,
    TResult Function()? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (startRecordClicked != null) {
      return startRecordClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(StartRecordClicked value) startRecordClicked,
    required TResult Function(PlayVideoClicked value) playVideoClicked,
    required TResult Function(StopVideoClicked value) stopVideoClicked,
    required TResult Function(StopRecordClicked value) stopRecordClicked,
    required TResult Function(ReshootClicked value) reshootClicked,
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(VideoRecorded value) videoRecorded,
    required TResult Function(VideoPlayerPrepared value) videoPlayerPrepared,
  }) {
    return startRecordClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(StartRecordClicked value)? startRecordClicked,
    TResult Function(PlayVideoClicked value)? playVideoClicked,
    TResult Function(StopVideoClicked value)? stopVideoClicked,
    TResult Function(StopRecordClicked value)? stopRecordClicked,
    TResult Function(ReshootClicked value)? reshootClicked,
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(VideoRecorded value)? videoRecorded,
    TResult Function(VideoPlayerPrepared value)? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (startRecordClicked != null) {
      return startRecordClicked(this);
    }
    return orElse();
  }
}

abstract class StartRecordClicked implements RecordVideoEvent {
  factory StartRecordClicked() = _$StartRecordClicked;
}

/// @nodoc
abstract class $PlayVideoClickedCopyWith<$Res> {
  factory $PlayVideoClickedCopyWith(
          PlayVideoClicked value, $Res Function(PlayVideoClicked) then) =
      _$PlayVideoClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayVideoClickedCopyWithImpl<$Res>
    extends _$RecordVideoEventCopyWithImpl<$Res>
    implements $PlayVideoClickedCopyWith<$Res> {
  _$PlayVideoClickedCopyWithImpl(
      PlayVideoClicked _value, $Res Function(PlayVideoClicked) _then)
      : super(_value, (v) => _then(v as PlayVideoClicked));

  @override
  PlayVideoClicked get _value => super._value as PlayVideoClicked;
}

/// @nodoc

class _$PlayVideoClicked
    with DiagnosticableTreeMixin
    implements PlayVideoClicked {
  _$PlayVideoClicked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordVideoEvent.playVideoClicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordVideoEvent.playVideoClicked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayVideoClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function() startRecordClicked,
    required TResult Function() playVideoClicked,
    required TResult Function() stopVideoClicked,
    required TResult Function() stopRecordClicked,
    required TResult Function() reshootClicked,
    required TResult Function() confirmClicked,
    required TResult Function(File videoFile) videoRecorded,
    required TResult Function() videoPlayerPrepared,
  }) {
    return playVideoClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function()? startRecordClicked,
    TResult Function()? playVideoClicked,
    TResult Function()? stopVideoClicked,
    TResult Function()? stopRecordClicked,
    TResult Function()? reshootClicked,
    TResult Function()? confirmClicked,
    TResult Function(File videoFile)? videoRecorded,
    TResult Function()? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (playVideoClicked != null) {
      return playVideoClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(StartRecordClicked value) startRecordClicked,
    required TResult Function(PlayVideoClicked value) playVideoClicked,
    required TResult Function(StopVideoClicked value) stopVideoClicked,
    required TResult Function(StopRecordClicked value) stopRecordClicked,
    required TResult Function(ReshootClicked value) reshootClicked,
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(VideoRecorded value) videoRecorded,
    required TResult Function(VideoPlayerPrepared value) videoPlayerPrepared,
  }) {
    return playVideoClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(StartRecordClicked value)? startRecordClicked,
    TResult Function(PlayVideoClicked value)? playVideoClicked,
    TResult Function(StopVideoClicked value)? stopVideoClicked,
    TResult Function(StopRecordClicked value)? stopRecordClicked,
    TResult Function(ReshootClicked value)? reshootClicked,
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(VideoRecorded value)? videoRecorded,
    TResult Function(VideoPlayerPrepared value)? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (playVideoClicked != null) {
      return playVideoClicked(this);
    }
    return orElse();
  }
}

abstract class PlayVideoClicked implements RecordVideoEvent {
  factory PlayVideoClicked() = _$PlayVideoClicked;
}

/// @nodoc
abstract class $StopVideoClickedCopyWith<$Res> {
  factory $StopVideoClickedCopyWith(
          StopVideoClicked value, $Res Function(StopVideoClicked) then) =
      _$StopVideoClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StopVideoClickedCopyWithImpl<$Res>
    extends _$RecordVideoEventCopyWithImpl<$Res>
    implements $StopVideoClickedCopyWith<$Res> {
  _$StopVideoClickedCopyWithImpl(
      StopVideoClicked _value, $Res Function(StopVideoClicked) _then)
      : super(_value, (v) => _then(v as StopVideoClicked));

  @override
  StopVideoClicked get _value => super._value as StopVideoClicked;
}

/// @nodoc

class _$StopVideoClicked
    with DiagnosticableTreeMixin
    implements StopVideoClicked {
  _$StopVideoClicked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordVideoEvent.stopVideoClicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordVideoEvent.stopVideoClicked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopVideoClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function() startRecordClicked,
    required TResult Function() playVideoClicked,
    required TResult Function() stopVideoClicked,
    required TResult Function() stopRecordClicked,
    required TResult Function() reshootClicked,
    required TResult Function() confirmClicked,
    required TResult Function(File videoFile) videoRecorded,
    required TResult Function() videoPlayerPrepared,
  }) {
    return stopVideoClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function()? startRecordClicked,
    TResult Function()? playVideoClicked,
    TResult Function()? stopVideoClicked,
    TResult Function()? stopRecordClicked,
    TResult Function()? reshootClicked,
    TResult Function()? confirmClicked,
    TResult Function(File videoFile)? videoRecorded,
    TResult Function()? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (stopVideoClicked != null) {
      return stopVideoClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(StartRecordClicked value) startRecordClicked,
    required TResult Function(PlayVideoClicked value) playVideoClicked,
    required TResult Function(StopVideoClicked value) stopVideoClicked,
    required TResult Function(StopRecordClicked value) stopRecordClicked,
    required TResult Function(ReshootClicked value) reshootClicked,
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(VideoRecorded value) videoRecorded,
    required TResult Function(VideoPlayerPrepared value) videoPlayerPrepared,
  }) {
    return stopVideoClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(StartRecordClicked value)? startRecordClicked,
    TResult Function(PlayVideoClicked value)? playVideoClicked,
    TResult Function(StopVideoClicked value)? stopVideoClicked,
    TResult Function(StopRecordClicked value)? stopRecordClicked,
    TResult Function(ReshootClicked value)? reshootClicked,
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(VideoRecorded value)? videoRecorded,
    TResult Function(VideoPlayerPrepared value)? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (stopVideoClicked != null) {
      return stopVideoClicked(this);
    }
    return orElse();
  }
}

abstract class StopVideoClicked implements RecordVideoEvent {
  factory StopVideoClicked() = _$StopVideoClicked;
}

/// @nodoc
abstract class $StopRecordClickedCopyWith<$Res> {
  factory $StopRecordClickedCopyWith(
          StopRecordClicked value, $Res Function(StopRecordClicked) then) =
      _$StopRecordClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StopRecordClickedCopyWithImpl<$Res>
    extends _$RecordVideoEventCopyWithImpl<$Res>
    implements $StopRecordClickedCopyWith<$Res> {
  _$StopRecordClickedCopyWithImpl(
      StopRecordClicked _value, $Res Function(StopRecordClicked) _then)
      : super(_value, (v) => _then(v as StopRecordClicked));

  @override
  StopRecordClicked get _value => super._value as StopRecordClicked;
}

/// @nodoc

class _$StopRecordClicked
    with DiagnosticableTreeMixin
    implements StopRecordClicked {
  _$StopRecordClicked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordVideoEvent.stopRecordClicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordVideoEvent.stopRecordClicked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopRecordClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function() startRecordClicked,
    required TResult Function() playVideoClicked,
    required TResult Function() stopVideoClicked,
    required TResult Function() stopRecordClicked,
    required TResult Function() reshootClicked,
    required TResult Function() confirmClicked,
    required TResult Function(File videoFile) videoRecorded,
    required TResult Function() videoPlayerPrepared,
  }) {
    return stopRecordClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function()? startRecordClicked,
    TResult Function()? playVideoClicked,
    TResult Function()? stopVideoClicked,
    TResult Function()? stopRecordClicked,
    TResult Function()? reshootClicked,
    TResult Function()? confirmClicked,
    TResult Function(File videoFile)? videoRecorded,
    TResult Function()? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (stopRecordClicked != null) {
      return stopRecordClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(StartRecordClicked value) startRecordClicked,
    required TResult Function(PlayVideoClicked value) playVideoClicked,
    required TResult Function(StopVideoClicked value) stopVideoClicked,
    required TResult Function(StopRecordClicked value) stopRecordClicked,
    required TResult Function(ReshootClicked value) reshootClicked,
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(VideoRecorded value) videoRecorded,
    required TResult Function(VideoPlayerPrepared value) videoPlayerPrepared,
  }) {
    return stopRecordClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(StartRecordClicked value)? startRecordClicked,
    TResult Function(PlayVideoClicked value)? playVideoClicked,
    TResult Function(StopVideoClicked value)? stopVideoClicked,
    TResult Function(StopRecordClicked value)? stopRecordClicked,
    TResult Function(ReshootClicked value)? reshootClicked,
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(VideoRecorded value)? videoRecorded,
    TResult Function(VideoPlayerPrepared value)? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (stopRecordClicked != null) {
      return stopRecordClicked(this);
    }
    return orElse();
  }
}

abstract class StopRecordClicked implements RecordVideoEvent {
  factory StopRecordClicked() = _$StopRecordClicked;
}

/// @nodoc
abstract class $ReshootClickedCopyWith<$Res> {
  factory $ReshootClickedCopyWith(
          ReshootClicked value, $Res Function(ReshootClicked) then) =
      _$ReshootClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReshootClickedCopyWithImpl<$Res>
    extends _$RecordVideoEventCopyWithImpl<$Res>
    implements $ReshootClickedCopyWith<$Res> {
  _$ReshootClickedCopyWithImpl(
      ReshootClicked _value, $Res Function(ReshootClicked) _then)
      : super(_value, (v) => _then(v as ReshootClicked));

  @override
  ReshootClicked get _value => super._value as ReshootClicked;
}

/// @nodoc

class _$ReshootClicked with DiagnosticableTreeMixin implements ReshootClicked {
  _$ReshootClicked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordVideoEvent.reshootClicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordVideoEvent.reshootClicked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReshootClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function() startRecordClicked,
    required TResult Function() playVideoClicked,
    required TResult Function() stopVideoClicked,
    required TResult Function() stopRecordClicked,
    required TResult Function() reshootClicked,
    required TResult Function() confirmClicked,
    required TResult Function(File videoFile) videoRecorded,
    required TResult Function() videoPlayerPrepared,
  }) {
    return reshootClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function()? startRecordClicked,
    TResult Function()? playVideoClicked,
    TResult Function()? stopVideoClicked,
    TResult Function()? stopRecordClicked,
    TResult Function()? reshootClicked,
    TResult Function()? confirmClicked,
    TResult Function(File videoFile)? videoRecorded,
    TResult Function()? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (reshootClicked != null) {
      return reshootClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(StartRecordClicked value) startRecordClicked,
    required TResult Function(PlayVideoClicked value) playVideoClicked,
    required TResult Function(StopVideoClicked value) stopVideoClicked,
    required TResult Function(StopRecordClicked value) stopRecordClicked,
    required TResult Function(ReshootClicked value) reshootClicked,
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(VideoRecorded value) videoRecorded,
    required TResult Function(VideoPlayerPrepared value) videoPlayerPrepared,
  }) {
    return reshootClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(StartRecordClicked value)? startRecordClicked,
    TResult Function(PlayVideoClicked value)? playVideoClicked,
    TResult Function(StopVideoClicked value)? stopVideoClicked,
    TResult Function(StopRecordClicked value)? stopRecordClicked,
    TResult Function(ReshootClicked value)? reshootClicked,
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(VideoRecorded value)? videoRecorded,
    TResult Function(VideoPlayerPrepared value)? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (reshootClicked != null) {
      return reshootClicked(this);
    }
    return orElse();
  }
}

abstract class ReshootClicked implements RecordVideoEvent {
  factory ReshootClicked() = _$ReshootClicked;
}

/// @nodoc
abstract class $ConfirmClickedCopyWith<$Res> {
  factory $ConfirmClickedCopyWith(
          ConfirmClicked value, $Res Function(ConfirmClicked) then) =
      _$ConfirmClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmClickedCopyWithImpl<$Res>
    extends _$RecordVideoEventCopyWithImpl<$Res>
    implements $ConfirmClickedCopyWith<$Res> {
  _$ConfirmClickedCopyWithImpl(
      ConfirmClicked _value, $Res Function(ConfirmClicked) _then)
      : super(_value, (v) => _then(v as ConfirmClicked));

  @override
  ConfirmClicked get _value => super._value as ConfirmClicked;
}

/// @nodoc

class _$ConfirmClicked with DiagnosticableTreeMixin implements ConfirmClicked {
  _$ConfirmClicked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordVideoEvent.confirmClicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordVideoEvent.confirmClicked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function() startRecordClicked,
    required TResult Function() playVideoClicked,
    required TResult Function() stopVideoClicked,
    required TResult Function() stopRecordClicked,
    required TResult Function() reshootClicked,
    required TResult Function() confirmClicked,
    required TResult Function(File videoFile) videoRecorded,
    required TResult Function() videoPlayerPrepared,
  }) {
    return confirmClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function()? startRecordClicked,
    TResult Function()? playVideoClicked,
    TResult Function()? stopVideoClicked,
    TResult Function()? stopRecordClicked,
    TResult Function()? reshootClicked,
    TResult Function()? confirmClicked,
    TResult Function(File videoFile)? videoRecorded,
    TResult Function()? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (confirmClicked != null) {
      return confirmClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(StartRecordClicked value) startRecordClicked,
    required TResult Function(PlayVideoClicked value) playVideoClicked,
    required TResult Function(StopVideoClicked value) stopVideoClicked,
    required TResult Function(StopRecordClicked value) stopRecordClicked,
    required TResult Function(ReshootClicked value) reshootClicked,
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(VideoRecorded value) videoRecorded,
    required TResult Function(VideoPlayerPrepared value) videoPlayerPrepared,
  }) {
    return confirmClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(StartRecordClicked value)? startRecordClicked,
    TResult Function(PlayVideoClicked value)? playVideoClicked,
    TResult Function(StopVideoClicked value)? stopVideoClicked,
    TResult Function(StopRecordClicked value)? stopRecordClicked,
    TResult Function(ReshootClicked value)? reshootClicked,
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(VideoRecorded value)? videoRecorded,
    TResult Function(VideoPlayerPrepared value)? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (confirmClicked != null) {
      return confirmClicked(this);
    }
    return orElse();
  }
}

abstract class ConfirmClicked implements RecordVideoEvent {
  factory ConfirmClicked() = _$ConfirmClicked;
}

/// @nodoc
abstract class $VideoRecordedCopyWith<$Res> {
  factory $VideoRecordedCopyWith(
          VideoRecorded value, $Res Function(VideoRecorded) then) =
      _$VideoRecordedCopyWithImpl<$Res>;
  $Res call({File videoFile});
}

/// @nodoc
class _$VideoRecordedCopyWithImpl<$Res>
    extends _$RecordVideoEventCopyWithImpl<$Res>
    implements $VideoRecordedCopyWith<$Res> {
  _$VideoRecordedCopyWithImpl(
      VideoRecorded _value, $Res Function(VideoRecorded) _then)
      : super(_value, (v) => _then(v as VideoRecorded));

  @override
  VideoRecorded get _value => super._value as VideoRecorded;

  @override
  $Res call({
    Object? videoFile = freezed,
  }) {
    return _then(VideoRecorded(
      videoFile == freezed
          ? _value.videoFile
          : videoFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$VideoRecorded with DiagnosticableTreeMixin implements VideoRecorded {
  _$VideoRecorded(this.videoFile);

  @override
  final File videoFile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordVideoEvent.videoRecorded(videoFile: $videoFile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordVideoEvent.videoRecorded'))
      ..add(DiagnosticsProperty('videoFile', videoFile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VideoRecorded &&
            (identical(other.videoFile, videoFile) ||
                const DeepCollectionEquality()
                    .equals(other.videoFile, videoFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videoFile);

  @JsonKey(ignore: true)
  @override
  $VideoRecordedCopyWith<VideoRecorded> get copyWith =>
      _$VideoRecordedCopyWithImpl<VideoRecorded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function() startRecordClicked,
    required TResult Function() playVideoClicked,
    required TResult Function() stopVideoClicked,
    required TResult Function() stopRecordClicked,
    required TResult Function() reshootClicked,
    required TResult Function() confirmClicked,
    required TResult Function(File videoFile) videoRecorded,
    required TResult Function() videoPlayerPrepared,
  }) {
    return videoRecorded(videoFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function()? startRecordClicked,
    TResult Function()? playVideoClicked,
    TResult Function()? stopVideoClicked,
    TResult Function()? stopRecordClicked,
    TResult Function()? reshootClicked,
    TResult Function()? confirmClicked,
    TResult Function(File videoFile)? videoRecorded,
    TResult Function()? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (videoRecorded != null) {
      return videoRecorded(videoFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(StartRecordClicked value) startRecordClicked,
    required TResult Function(PlayVideoClicked value) playVideoClicked,
    required TResult Function(StopVideoClicked value) stopVideoClicked,
    required TResult Function(StopRecordClicked value) stopRecordClicked,
    required TResult Function(ReshootClicked value) reshootClicked,
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(VideoRecorded value) videoRecorded,
    required TResult Function(VideoPlayerPrepared value) videoPlayerPrepared,
  }) {
    return videoRecorded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(StartRecordClicked value)? startRecordClicked,
    TResult Function(PlayVideoClicked value)? playVideoClicked,
    TResult Function(StopVideoClicked value)? stopVideoClicked,
    TResult Function(StopRecordClicked value)? stopRecordClicked,
    TResult Function(ReshootClicked value)? reshootClicked,
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(VideoRecorded value)? videoRecorded,
    TResult Function(VideoPlayerPrepared value)? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (videoRecorded != null) {
      return videoRecorded(this);
    }
    return orElse();
  }
}

abstract class VideoRecorded implements RecordVideoEvent {
  factory VideoRecorded(File videoFile) = _$VideoRecorded;

  File get videoFile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoRecordedCopyWith<VideoRecorded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerPreparedCopyWith<$Res> {
  factory $VideoPlayerPreparedCopyWith(
          VideoPlayerPrepared value, $Res Function(VideoPlayerPrepared) then) =
      _$VideoPlayerPreparedCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoPlayerPreparedCopyWithImpl<$Res>
    extends _$RecordVideoEventCopyWithImpl<$Res>
    implements $VideoPlayerPreparedCopyWith<$Res> {
  _$VideoPlayerPreparedCopyWithImpl(
      VideoPlayerPrepared _value, $Res Function(VideoPlayerPrepared) _then)
      : super(_value, (v) => _then(v as VideoPlayerPrepared));

  @override
  VideoPlayerPrepared get _value => super._value as VideoPlayerPrepared;
}

/// @nodoc

class _$VideoPlayerPrepared
    with DiagnosticableTreeMixin
    implements VideoPlayerPrepared {
  _$VideoPlayerPrepared();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordVideoEvent.videoPlayerPrepared()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'RecordVideoEvent.videoPlayerPrepared'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VideoPlayerPrepared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cameraPrepared,
    required TResult Function() cameraDisposed,
    required TResult Function() startRecordClicked,
    required TResult Function() playVideoClicked,
    required TResult Function() stopVideoClicked,
    required TResult Function() stopRecordClicked,
    required TResult Function() reshootClicked,
    required TResult Function() confirmClicked,
    required TResult Function(File videoFile) videoRecorded,
    required TResult Function() videoPlayerPrepared,
  }) {
    return videoPlayerPrepared();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cameraPrepared,
    TResult Function()? cameraDisposed,
    TResult Function()? startRecordClicked,
    TResult Function()? playVideoClicked,
    TResult Function()? stopVideoClicked,
    TResult Function()? stopRecordClicked,
    TResult Function()? reshootClicked,
    TResult Function()? confirmClicked,
    TResult Function(File videoFile)? videoRecorded,
    TResult Function()? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (videoPlayerPrepared != null) {
      return videoPlayerPrepared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(CameraDisposed value) cameraDisposed,
    required TResult Function(StartRecordClicked value) startRecordClicked,
    required TResult Function(PlayVideoClicked value) playVideoClicked,
    required TResult Function(StopVideoClicked value) stopVideoClicked,
    required TResult Function(StopRecordClicked value) stopRecordClicked,
    required TResult Function(ReshootClicked value) reshootClicked,
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(VideoRecorded value) videoRecorded,
    required TResult Function(VideoPlayerPrepared value) videoPlayerPrepared,
  }) {
    return videoPlayerPrepared(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(CameraDisposed value)? cameraDisposed,
    TResult Function(StartRecordClicked value)? startRecordClicked,
    TResult Function(PlayVideoClicked value)? playVideoClicked,
    TResult Function(StopVideoClicked value)? stopVideoClicked,
    TResult Function(StopRecordClicked value)? stopRecordClicked,
    TResult Function(ReshootClicked value)? reshootClicked,
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(VideoRecorded value)? videoRecorded,
    TResult Function(VideoPlayerPrepared value)? videoPlayerPrepared,
    required TResult orElse(),
  }) {
    if (videoPlayerPrepared != null) {
      return videoPlayerPrepared(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerPrepared implements RecordVideoEvent {
  factory VideoPlayerPrepared() = _$VideoPlayerPrepared;
}

/// @nodoc
class _$RecordVideoStateTearOff {
  const _$RecordVideoStateTearOff();

  _RecordVideoState call(
      {BlocAction? action,
      RecordVideoStatus status = RecordVideoStatus.initial,
      bool cameraReady = false}) {
    return _RecordVideoState(
      action: action,
      status: status,
      cameraReady: cameraReady,
    );
  }
}

/// @nodoc
const $RecordVideoState = _$RecordVideoStateTearOff();

/// @nodoc
mixin _$RecordVideoState {
  BlocAction? get action => throw _privateConstructorUsedError;
  RecordVideoStatus get status => throw _privateConstructorUsedError;
  bool get cameraReady => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordVideoStateCopyWith<RecordVideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordVideoStateCopyWith<$Res> {
  factory $RecordVideoStateCopyWith(
          RecordVideoState value, $Res Function(RecordVideoState) then) =
      _$RecordVideoStateCopyWithImpl<$Res>;
  $Res call({BlocAction? action, RecordVideoStatus status, bool cameraReady});
}

/// @nodoc
class _$RecordVideoStateCopyWithImpl<$Res>
    implements $RecordVideoStateCopyWith<$Res> {
  _$RecordVideoStateCopyWithImpl(this._value, this._then);

  final RecordVideoState _value;
  // ignore: unused_field
  final $Res Function(RecordVideoState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? status = freezed,
    Object? cameraReady = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordVideoStatus,
      cameraReady: cameraReady == freezed
          ? _value.cameraReady
          : cameraReady // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RecordVideoStateCopyWith<$Res>
    implements $RecordVideoStateCopyWith<$Res> {
  factory _$RecordVideoStateCopyWith(
          _RecordVideoState value, $Res Function(_RecordVideoState) then) =
      __$RecordVideoStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocAction? action, RecordVideoStatus status, bool cameraReady});
}

/// @nodoc
class __$RecordVideoStateCopyWithImpl<$Res>
    extends _$RecordVideoStateCopyWithImpl<$Res>
    implements _$RecordVideoStateCopyWith<$Res> {
  __$RecordVideoStateCopyWithImpl(
      _RecordVideoState _value, $Res Function(_RecordVideoState) _then)
      : super(_value, (v) => _then(v as _RecordVideoState));

  @override
  _RecordVideoState get _value => super._value as _RecordVideoState;

  @override
  $Res call({
    Object? action = freezed,
    Object? status = freezed,
    Object? cameraReady = freezed,
  }) {
    return _then(_RecordVideoState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordVideoStatus,
      cameraReady: cameraReady == freezed
          ? _value.cameraReady
          : cameraReady // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RecordVideoState
    with DiagnosticableTreeMixin
    implements _RecordVideoState {
  _$_RecordVideoState(
      {this.action,
      this.status = RecordVideoStatus.initial,
      this.cameraReady = false});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: RecordVideoStatus.initial)
  @override
  final RecordVideoStatus status;
  @JsonKey(defaultValue: false)
  @override
  final bool cameraReady;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordVideoState(action: $action, status: $status, cameraReady: $cameraReady)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordVideoState'))
      ..add(DiagnosticsProperty('action', action))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('cameraReady', cameraReady));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecordVideoState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.cameraReady, cameraReady) ||
                const DeepCollectionEquality()
                    .equals(other.cameraReady, cameraReady)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(cameraReady);

  @JsonKey(ignore: true)
  @override
  _$RecordVideoStateCopyWith<_RecordVideoState> get copyWith =>
      __$RecordVideoStateCopyWithImpl<_RecordVideoState>(this, _$identity);
}

abstract class _RecordVideoState implements RecordVideoState {
  factory _RecordVideoState(
      {BlocAction? action,
      RecordVideoStatus status,
      bool cameraReady}) = _$_RecordVideoState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  RecordVideoStatus get status => throw _privateConstructorUsedError;
  @override
  bool get cameraReady => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecordVideoStateCopyWith<_RecordVideoState> get copyWith =>
      throw _privateConstructorUsedError;
}
