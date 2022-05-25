// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyAccountEventTearOff {
  const _$MyAccountEventTearOff();

  Init init() {
    return Init();
  }

  SelectCategoryClicked selectCategoryClicked() {
    return SelectCategoryClicked();
  }

  CategorySelected categorySelected(CategoryEntity? category) {
    return CategorySelected(
      category,
    );
  }

  BenefitOnMoreClicked benefitOnMoreClicked(SubscriptionType subscriptionType) {
    return BenefitOnMoreClicked(
      subscriptionType,
    );
  }

  SettingsClicked settingsClicked() {
    return SettingsClicked();
  }

  EditClicked editClicked() {
    return EditClicked();
  }
}

/// @nodoc
const $MyAccountEvent = _$MyAccountEventTearOff();

/// @nodoc
mixin _$MyAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() selectCategoryClicked,
    required TResult Function(CategoryEntity? category) categorySelected,
    required TResult Function(SubscriptionType subscriptionType)
        benefitOnMoreClicked,
    required TResult Function() settingsClicked,
    required TResult Function() editClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? selectCategoryClicked,
    TResult Function(CategoryEntity? category)? categorySelected,
    TResult Function(SubscriptionType subscriptionType)? benefitOnMoreClicked,
    TResult Function()? settingsClicked,
    TResult Function()? editClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(SelectCategoryClicked value)
        selectCategoryClicked,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(BenefitOnMoreClicked value) benefitOnMoreClicked,
    required TResult Function(SettingsClicked value) settingsClicked,
    required TResult Function(EditClicked value) editClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SelectCategoryClicked value)? selectCategoryClicked,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(BenefitOnMoreClicked value)? benefitOnMoreClicked,
    TResult Function(SettingsClicked value)? settingsClicked,
    TResult Function(EditClicked value)? editClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAccountEventCopyWith<$Res> {
  factory $MyAccountEventCopyWith(
          MyAccountEvent value, $Res Function(MyAccountEvent) then) =
      _$MyAccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyAccountEventCopyWithImpl<$Res>
    implements $MyAccountEventCopyWith<$Res> {
  _$MyAccountEventCopyWithImpl(this._value, this._then);

  final MyAccountEvent _value;
  // ignore: unused_field
  final $Res Function(MyAccountEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$MyAccountEventCopyWithImpl<$Res>
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
    return 'MyAccountEvent.init()';
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
    required TResult Function() selectCategoryClicked,
    required TResult Function(CategoryEntity? category) categorySelected,
    required TResult Function(SubscriptionType subscriptionType)
        benefitOnMoreClicked,
    required TResult Function() settingsClicked,
    required TResult Function() editClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? selectCategoryClicked,
    TResult Function(CategoryEntity? category)? categorySelected,
    TResult Function(SubscriptionType subscriptionType)? benefitOnMoreClicked,
    TResult Function()? settingsClicked,
    TResult Function()? editClicked,
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
    required TResult Function(SelectCategoryClicked value)
        selectCategoryClicked,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(BenefitOnMoreClicked value) benefitOnMoreClicked,
    required TResult Function(SettingsClicked value) settingsClicked,
    required TResult Function(EditClicked value) editClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SelectCategoryClicked value)? selectCategoryClicked,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(BenefitOnMoreClicked value)? benefitOnMoreClicked,
    TResult Function(SettingsClicked value)? settingsClicked,
    TResult Function(EditClicked value)? editClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements MyAccountEvent {
  factory Init() = _$Init;
}

/// @nodoc
abstract class $SelectCategoryClickedCopyWith<$Res> {
  factory $SelectCategoryClickedCopyWith(SelectCategoryClicked value,
          $Res Function(SelectCategoryClicked) then) =
      _$SelectCategoryClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectCategoryClickedCopyWithImpl<$Res>
    extends _$MyAccountEventCopyWithImpl<$Res>
    implements $SelectCategoryClickedCopyWith<$Res> {
  _$SelectCategoryClickedCopyWithImpl(
      SelectCategoryClicked _value, $Res Function(SelectCategoryClicked) _then)
      : super(_value, (v) => _then(v as SelectCategoryClicked));

  @override
  SelectCategoryClicked get _value => super._value as SelectCategoryClicked;
}

/// @nodoc

class _$SelectCategoryClicked implements SelectCategoryClicked {
  _$SelectCategoryClicked();

  @override
  String toString() {
    return 'MyAccountEvent.selectCategoryClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectCategoryClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() selectCategoryClicked,
    required TResult Function(CategoryEntity? category) categorySelected,
    required TResult Function(SubscriptionType subscriptionType)
        benefitOnMoreClicked,
    required TResult Function() settingsClicked,
    required TResult Function() editClicked,
  }) {
    return selectCategoryClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? selectCategoryClicked,
    TResult Function(CategoryEntity? category)? categorySelected,
    TResult Function(SubscriptionType subscriptionType)? benefitOnMoreClicked,
    TResult Function()? settingsClicked,
    TResult Function()? editClicked,
    required TResult orElse(),
  }) {
    if (selectCategoryClicked != null) {
      return selectCategoryClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(SelectCategoryClicked value)
        selectCategoryClicked,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(BenefitOnMoreClicked value) benefitOnMoreClicked,
    required TResult Function(SettingsClicked value) settingsClicked,
    required TResult Function(EditClicked value) editClicked,
  }) {
    return selectCategoryClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SelectCategoryClicked value)? selectCategoryClicked,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(BenefitOnMoreClicked value)? benefitOnMoreClicked,
    TResult Function(SettingsClicked value)? settingsClicked,
    TResult Function(EditClicked value)? editClicked,
    required TResult orElse(),
  }) {
    if (selectCategoryClicked != null) {
      return selectCategoryClicked(this);
    }
    return orElse();
  }
}

abstract class SelectCategoryClicked implements MyAccountEvent {
  factory SelectCategoryClicked() = _$SelectCategoryClicked;
}

/// @nodoc
abstract class $CategorySelectedCopyWith<$Res> {
  factory $CategorySelectedCopyWith(
          CategorySelected value, $Res Function(CategorySelected) then) =
      _$CategorySelectedCopyWithImpl<$Res>;
  $Res call({CategoryEntity? category});
}

/// @nodoc
class _$CategorySelectedCopyWithImpl<$Res>
    extends _$MyAccountEventCopyWithImpl<$Res>
    implements $CategorySelectedCopyWith<$Res> {
  _$CategorySelectedCopyWithImpl(
      CategorySelected _value, $Res Function(CategorySelected) _then)
      : super(_value, (v) => _then(v as CategorySelected));

  @override
  CategorySelected get _value => super._value as CategorySelected;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(CategorySelected(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
    ));
  }
}

/// @nodoc

class _$CategorySelected implements CategorySelected {
  _$CategorySelected(this.category);

  @override
  final CategoryEntity? category;

  @override
  String toString() {
    return 'MyAccountEvent.categorySelected(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategorySelected &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  $CategorySelectedCopyWith<CategorySelected> get copyWith =>
      _$CategorySelectedCopyWithImpl<CategorySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() selectCategoryClicked,
    required TResult Function(CategoryEntity? category) categorySelected,
    required TResult Function(SubscriptionType subscriptionType)
        benefitOnMoreClicked,
    required TResult Function() settingsClicked,
    required TResult Function() editClicked,
  }) {
    return categorySelected(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? selectCategoryClicked,
    TResult Function(CategoryEntity? category)? categorySelected,
    TResult Function(SubscriptionType subscriptionType)? benefitOnMoreClicked,
    TResult Function()? settingsClicked,
    TResult Function()? editClicked,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(SelectCategoryClicked value)
        selectCategoryClicked,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(BenefitOnMoreClicked value) benefitOnMoreClicked,
    required TResult Function(SettingsClicked value) settingsClicked,
    required TResult Function(EditClicked value) editClicked,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SelectCategoryClicked value)? selectCategoryClicked,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(BenefitOnMoreClicked value)? benefitOnMoreClicked,
    TResult Function(SettingsClicked value)? settingsClicked,
    TResult Function(EditClicked value)? editClicked,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class CategorySelected implements MyAccountEvent {
  factory CategorySelected(CategoryEntity? category) = _$CategorySelected;

  CategoryEntity? get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategorySelectedCopyWith<CategorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BenefitOnMoreClickedCopyWith<$Res> {
  factory $BenefitOnMoreClickedCopyWith(BenefitOnMoreClicked value,
          $Res Function(BenefitOnMoreClicked) then) =
      _$BenefitOnMoreClickedCopyWithImpl<$Res>;
  $Res call({SubscriptionType subscriptionType});
}

/// @nodoc
class _$BenefitOnMoreClickedCopyWithImpl<$Res>
    extends _$MyAccountEventCopyWithImpl<$Res>
    implements $BenefitOnMoreClickedCopyWith<$Res> {
  _$BenefitOnMoreClickedCopyWithImpl(
      BenefitOnMoreClicked _value, $Res Function(BenefitOnMoreClicked) _then)
      : super(_value, (v) => _then(v as BenefitOnMoreClicked));

  @override
  BenefitOnMoreClicked get _value => super._value as BenefitOnMoreClicked;

  @override
  $Res call({
    Object? subscriptionType = freezed,
  }) {
    return _then(BenefitOnMoreClicked(
      subscriptionType == freezed
          ? _value.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as SubscriptionType,
    ));
  }
}

/// @nodoc

class _$BenefitOnMoreClicked implements BenefitOnMoreClicked {
  _$BenefitOnMoreClicked(this.subscriptionType);

  @override
  final SubscriptionType subscriptionType;

  @override
  String toString() {
    return 'MyAccountEvent.benefitOnMoreClicked(subscriptionType: $subscriptionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BenefitOnMoreClicked &&
            (identical(other.subscriptionType, subscriptionType) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionType, subscriptionType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscriptionType);

  @JsonKey(ignore: true)
  @override
  $BenefitOnMoreClickedCopyWith<BenefitOnMoreClicked> get copyWith =>
      _$BenefitOnMoreClickedCopyWithImpl<BenefitOnMoreClicked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() selectCategoryClicked,
    required TResult Function(CategoryEntity? category) categorySelected,
    required TResult Function(SubscriptionType subscriptionType)
        benefitOnMoreClicked,
    required TResult Function() settingsClicked,
    required TResult Function() editClicked,
  }) {
    return benefitOnMoreClicked(subscriptionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? selectCategoryClicked,
    TResult Function(CategoryEntity? category)? categorySelected,
    TResult Function(SubscriptionType subscriptionType)? benefitOnMoreClicked,
    TResult Function()? settingsClicked,
    TResult Function()? editClicked,
    required TResult orElse(),
  }) {
    if (benefitOnMoreClicked != null) {
      return benefitOnMoreClicked(subscriptionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(SelectCategoryClicked value)
        selectCategoryClicked,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(BenefitOnMoreClicked value) benefitOnMoreClicked,
    required TResult Function(SettingsClicked value) settingsClicked,
    required TResult Function(EditClicked value) editClicked,
  }) {
    return benefitOnMoreClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SelectCategoryClicked value)? selectCategoryClicked,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(BenefitOnMoreClicked value)? benefitOnMoreClicked,
    TResult Function(SettingsClicked value)? settingsClicked,
    TResult Function(EditClicked value)? editClicked,
    required TResult orElse(),
  }) {
    if (benefitOnMoreClicked != null) {
      return benefitOnMoreClicked(this);
    }
    return orElse();
  }
}

abstract class BenefitOnMoreClicked implements MyAccountEvent {
  factory BenefitOnMoreClicked(SubscriptionType subscriptionType) =
      _$BenefitOnMoreClicked;

  SubscriptionType get subscriptionType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BenefitOnMoreClickedCopyWith<BenefitOnMoreClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsClickedCopyWith<$Res> {
  factory $SettingsClickedCopyWith(
          SettingsClicked value, $Res Function(SettingsClicked) then) =
      _$SettingsClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsClickedCopyWithImpl<$Res>
    extends _$MyAccountEventCopyWithImpl<$Res>
    implements $SettingsClickedCopyWith<$Res> {
  _$SettingsClickedCopyWithImpl(
      SettingsClicked _value, $Res Function(SettingsClicked) _then)
      : super(_value, (v) => _then(v as SettingsClicked));

  @override
  SettingsClicked get _value => super._value as SettingsClicked;
}

/// @nodoc

class _$SettingsClicked implements SettingsClicked {
  _$SettingsClicked();

  @override
  String toString() {
    return 'MyAccountEvent.settingsClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SettingsClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() selectCategoryClicked,
    required TResult Function(CategoryEntity? category) categorySelected,
    required TResult Function(SubscriptionType subscriptionType)
        benefitOnMoreClicked,
    required TResult Function() settingsClicked,
    required TResult Function() editClicked,
  }) {
    return settingsClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? selectCategoryClicked,
    TResult Function(CategoryEntity? category)? categorySelected,
    TResult Function(SubscriptionType subscriptionType)? benefitOnMoreClicked,
    TResult Function()? settingsClicked,
    TResult Function()? editClicked,
    required TResult orElse(),
  }) {
    if (settingsClicked != null) {
      return settingsClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(SelectCategoryClicked value)
        selectCategoryClicked,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(BenefitOnMoreClicked value) benefitOnMoreClicked,
    required TResult Function(SettingsClicked value) settingsClicked,
    required TResult Function(EditClicked value) editClicked,
  }) {
    return settingsClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SelectCategoryClicked value)? selectCategoryClicked,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(BenefitOnMoreClicked value)? benefitOnMoreClicked,
    TResult Function(SettingsClicked value)? settingsClicked,
    TResult Function(EditClicked value)? editClicked,
    required TResult orElse(),
  }) {
    if (settingsClicked != null) {
      return settingsClicked(this);
    }
    return orElse();
  }
}

abstract class SettingsClicked implements MyAccountEvent {
  factory SettingsClicked() = _$SettingsClicked;
}

/// @nodoc
abstract class $EditClickedCopyWith<$Res> {
  factory $EditClickedCopyWith(
          EditClicked value, $Res Function(EditClicked) then) =
      _$EditClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditClickedCopyWithImpl<$Res> extends _$MyAccountEventCopyWithImpl<$Res>
    implements $EditClickedCopyWith<$Res> {
  _$EditClickedCopyWithImpl(
      EditClicked _value, $Res Function(EditClicked) _then)
      : super(_value, (v) => _then(v as EditClicked));

  @override
  EditClicked get _value => super._value as EditClicked;
}

/// @nodoc

class _$EditClicked implements EditClicked {
  _$EditClicked();

  @override
  String toString() {
    return 'MyAccountEvent.editClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() selectCategoryClicked,
    required TResult Function(CategoryEntity? category) categorySelected,
    required TResult Function(SubscriptionType subscriptionType)
        benefitOnMoreClicked,
    required TResult Function() settingsClicked,
    required TResult Function() editClicked,
  }) {
    return editClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? selectCategoryClicked,
    TResult Function(CategoryEntity? category)? categorySelected,
    TResult Function(SubscriptionType subscriptionType)? benefitOnMoreClicked,
    TResult Function()? settingsClicked,
    TResult Function()? editClicked,
    required TResult orElse(),
  }) {
    if (editClicked != null) {
      return editClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(SelectCategoryClicked value)
        selectCategoryClicked,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(BenefitOnMoreClicked value) benefitOnMoreClicked,
    required TResult Function(SettingsClicked value) settingsClicked,
    required TResult Function(EditClicked value) editClicked,
  }) {
    return editClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SelectCategoryClicked value)? selectCategoryClicked,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(BenefitOnMoreClicked value)? benefitOnMoreClicked,
    TResult Function(SettingsClicked value)? settingsClicked,
    TResult Function(EditClicked value)? editClicked,
    required TResult orElse(),
  }) {
    if (editClicked != null) {
      return editClicked(this);
    }
    return orElse();
  }
}

abstract class EditClicked implements MyAccountEvent {
  factory EditClicked() = _$EditClicked;
}

/// @nodoc
class _$MyAccountStateTearOff {
  const _$MyAccountStateTearOff();

  _MyAccountState call(
      {BlocAction? action,
      List<CategoryEntity> categories = const [],
      CategoryEntity? selectedCategory,
      ProfileEntity? profile,
      List<BenefitEntity> benefits = const [],
      List<SubscriptionEntity> subscriptions = const []}) {
    return _MyAccountState(
      action: action,
      categories: categories,
      selectedCategory: selectedCategory,
      profile: profile,
      benefits: benefits,
      subscriptions: subscriptions,
    );
  }
}

/// @nodoc
const $MyAccountState = _$MyAccountStateTearOff();

/// @nodoc
mixin _$MyAccountState {
  BlocAction? get action => throw _privateConstructorUsedError;
  List<CategoryEntity> get categories => throw _privateConstructorUsedError;
  CategoryEntity? get selectedCategory => throw _privateConstructorUsedError;
  ProfileEntity? get profile => throw _privateConstructorUsedError;
  List<BenefitEntity> get benefits => throw _privateConstructorUsedError;
  List<SubscriptionEntity> get subscriptions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyAccountStateCopyWith<MyAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAccountStateCopyWith<$Res> {
  factory $MyAccountStateCopyWith(
          MyAccountState value, $Res Function(MyAccountState) then) =
      _$MyAccountStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      List<CategoryEntity> categories,
      CategoryEntity? selectedCategory,
      ProfileEntity? profile,
      List<BenefitEntity> benefits,
      List<SubscriptionEntity> subscriptions});
}

/// @nodoc
class _$MyAccountStateCopyWithImpl<$Res>
    implements $MyAccountStateCopyWith<$Res> {
  _$MyAccountStateCopyWithImpl(this._value, this._then);

  final MyAccountState _value;
  // ignore: unused_field
  final $Res Function(MyAccountState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? categories = freezed,
    Object? selectedCategory = freezed,
    Object? profile = freezed,
    Object? benefits = freezed,
    Object? subscriptions = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
      benefits: benefits == freezed
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<BenefitEntity>,
      subscriptions: subscriptions == freezed
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionEntity>,
    ));
  }
}

/// @nodoc
abstract class _$MyAccountStateCopyWith<$Res>
    implements $MyAccountStateCopyWith<$Res> {
  factory _$MyAccountStateCopyWith(
          _MyAccountState value, $Res Function(_MyAccountState) then) =
      __$MyAccountStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      List<CategoryEntity> categories,
      CategoryEntity? selectedCategory,
      ProfileEntity? profile,
      List<BenefitEntity> benefits,
      List<SubscriptionEntity> subscriptions});
}

/// @nodoc
class __$MyAccountStateCopyWithImpl<$Res>
    extends _$MyAccountStateCopyWithImpl<$Res>
    implements _$MyAccountStateCopyWith<$Res> {
  __$MyAccountStateCopyWithImpl(
      _MyAccountState _value, $Res Function(_MyAccountState) _then)
      : super(_value, (v) => _then(v as _MyAccountState));

  @override
  _MyAccountState get _value => super._value as _MyAccountState;

  @override
  $Res call({
    Object? action = freezed,
    Object? categories = freezed,
    Object? selectedCategory = freezed,
    Object? profile = freezed,
    Object? benefits = freezed,
    Object? subscriptions = freezed,
  }) {
    return _then(_MyAccountState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
      benefits: benefits == freezed
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<BenefitEntity>,
      subscriptions: subscriptions == freezed
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionEntity>,
    ));
  }
}

/// @nodoc

class _$_MyAccountState implements _MyAccountState {
  _$_MyAccountState(
      {this.action,
      this.categories = const [],
      this.selectedCategory,
      this.profile,
      this.benefits = const [],
      this.subscriptions = const []});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: const [])
  @override
  final List<CategoryEntity> categories;
  @override
  final CategoryEntity? selectedCategory;
  @override
  final ProfileEntity? profile;
  @JsonKey(defaultValue: const [])
  @override
  final List<BenefitEntity> benefits;
  @JsonKey(defaultValue: const [])
  @override
  final List<SubscriptionEntity> subscriptions;

  @override
  String toString() {
    return 'MyAccountState(action: $action, categories: $categories, selectedCategory: $selectedCategory, profile: $profile, benefits: $benefits, subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyAccountState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.selectedCategory, selectedCategory) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCategory, selectedCategory)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.benefits, benefits) ||
                const DeepCollectionEquality()
                    .equals(other.benefits, benefits)) &&
            (identical(other.subscriptions, subscriptions) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptions, subscriptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(selectedCategory) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(benefits) ^
      const DeepCollectionEquality().hash(subscriptions);

  @JsonKey(ignore: true)
  @override
  _$MyAccountStateCopyWith<_MyAccountState> get copyWith =>
      __$MyAccountStateCopyWithImpl<_MyAccountState>(this, _$identity);
}

abstract class _MyAccountState implements MyAccountState {
  factory _MyAccountState(
      {BlocAction? action,
      List<CategoryEntity> categories,
      CategoryEntity? selectedCategory,
      ProfileEntity? profile,
      List<BenefitEntity> benefits,
      List<SubscriptionEntity> subscriptions}) = _$_MyAccountState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  List<CategoryEntity> get categories => throw _privateConstructorUsedError;
  @override
  CategoryEntity? get selectedCategory => throw _privateConstructorUsedError;
  @override
  ProfileEntity? get profile => throw _privateConstructorUsedError;
  @override
  List<BenefitEntity> get benefits => throw _privateConstructorUsedError;
  @override
  List<SubscriptionEntity> get subscriptions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyAccountStateCopyWith<_MyAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
