// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'confirmation_finish_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConfirmationFinishEventTearOff {
  const _$ConfirmationFinishEventTearOff();

  FurtherClicked furtherClicked() {
    return FurtherClicked();
  }
}

/// @nodoc
const $ConfirmationFinishEvent = _$ConfirmationFinishEventTearOff();

/// @nodoc
mixin _$ConfirmationFinishEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() furtherClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? furtherClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FurtherClicked value) furtherClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FurtherClicked value)? furtherClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationFinishEventCopyWith<$Res> {
  factory $ConfirmationFinishEventCopyWith(ConfirmationFinishEvent value,
          $Res Function(ConfirmationFinishEvent) then) =
      _$ConfirmationFinishEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmationFinishEventCopyWithImpl<$Res>
    implements $ConfirmationFinishEventCopyWith<$Res> {
  _$ConfirmationFinishEventCopyWithImpl(this._value, this._then);

  final ConfirmationFinishEvent _value;
  // ignore: unused_field
  final $Res Function(ConfirmationFinishEvent) _then;
}

/// @nodoc
abstract class $FurtherClickedCopyWith<$Res> {
  factory $FurtherClickedCopyWith(
          FurtherClicked value, $Res Function(FurtherClicked) then) =
      _$FurtherClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FurtherClickedCopyWithImpl<$Res>
    extends _$ConfirmationFinishEventCopyWithImpl<$Res>
    implements $FurtherClickedCopyWith<$Res> {
  _$FurtherClickedCopyWithImpl(
      FurtherClicked _value, $Res Function(FurtherClicked) _then)
      : super(_value, (v) => _then(v as FurtherClicked));

  @override
  FurtherClicked get _value => super._value as FurtherClicked;
}

/// @nodoc

class _$FurtherClicked implements FurtherClicked {
  _$FurtherClicked();

  @override
  String toString() {
    return 'ConfirmationFinishEvent.furtherClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FurtherClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() furtherClicked,
  }) {
    return furtherClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? furtherClicked,
    required TResult orElse(),
  }) {
    if (furtherClicked != null) {
      return furtherClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FurtherClicked value) furtherClicked,
  }) {
    return furtherClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FurtherClicked value)? furtherClicked,
    required TResult orElse(),
  }) {
    if (furtherClicked != null) {
      return furtherClicked(this);
    }
    return orElse();
  }
}

abstract class FurtherClicked implements ConfirmationFinishEvent {
  factory FurtherClicked() = _$FurtherClicked;
}

/// @nodoc
class _$ConfirmationFinishStateTearOff {
  const _$ConfirmationFinishStateTearOff();

  _ConfirmationFinishState call({BlocAction? action}) {
    return _ConfirmationFinishState(
      action: action,
    );
  }
}

/// @nodoc
const $ConfirmationFinishState = _$ConfirmationFinishStateTearOff();

/// @nodoc
mixin _$ConfirmationFinishState {
  BlocAction? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmationFinishStateCopyWith<ConfirmationFinishState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationFinishStateCopyWith<$Res> {
  factory $ConfirmationFinishStateCopyWith(ConfirmationFinishState value,
          $Res Function(ConfirmationFinishState) then) =
      _$ConfirmationFinishStateCopyWithImpl<$Res>;
  $Res call({BlocAction? action});
}

/// @nodoc
class _$ConfirmationFinishStateCopyWithImpl<$Res>
    implements $ConfirmationFinishStateCopyWith<$Res> {
  _$ConfirmationFinishStateCopyWithImpl(this._value, this._then);

  final ConfirmationFinishState _value;
  // ignore: unused_field
  final $Res Function(ConfirmationFinishState) _then;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
    ));
  }
}

/// @nodoc
abstract class _$ConfirmationFinishStateCopyWith<$Res>
    implements $ConfirmationFinishStateCopyWith<$Res> {
  factory _$ConfirmationFinishStateCopyWith(_ConfirmationFinishState value,
          $Res Function(_ConfirmationFinishState) then) =
      __$ConfirmationFinishStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocAction? action});
}

/// @nodoc
class __$ConfirmationFinishStateCopyWithImpl<$Res>
    extends _$ConfirmationFinishStateCopyWithImpl<$Res>
    implements _$ConfirmationFinishStateCopyWith<$Res> {
  __$ConfirmationFinishStateCopyWithImpl(_ConfirmationFinishState _value,
      $Res Function(_ConfirmationFinishState) _then)
      : super(_value, (v) => _then(v as _ConfirmationFinishState));

  @override
  _ConfirmationFinishState get _value =>
      super._value as _ConfirmationFinishState;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_ConfirmationFinishState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
    ));
  }
}

/// @nodoc

class _$_ConfirmationFinishState implements _ConfirmationFinishState {
  _$_ConfirmationFinishState({this.action});

  @override
  final BlocAction? action;

  @override
  String toString() {
    return 'ConfirmationFinishState(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmationFinishState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$ConfirmationFinishStateCopyWith<_ConfirmationFinishState> get copyWith =>
      __$ConfirmationFinishStateCopyWithImpl<_ConfirmationFinishState>(
          this, _$identity);
}

abstract class _ConfirmationFinishState implements ConfirmationFinishState {
  factory _ConfirmationFinishState({BlocAction? action}) =
      _$_ConfirmationFinishState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConfirmationFinishStateCopyWith<_ConfirmationFinishState> get copyWith =>
      throw _privateConstructorUsedError;
}
