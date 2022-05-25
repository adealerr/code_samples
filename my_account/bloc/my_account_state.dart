part of 'my_account_bloc.dart';

@freezed
class MyAccountState with _$MyAccountState {
  factory MyAccountState({
    BlocAction? action,
    @Default([]) List<CategoryEntity> categories,
    CategoryEntity? selectedCategory,
    ProfileEntity? profile,
    @Default([]) List<BenefitEntity> benefits,
    @Default([]) List<SubscriptionEntity> subscriptions,
}) = _MyAccountState;
}

class ShowSelectCategoryDialog extends BlocAction {
  ShowSelectCategoryDialog({this.selectedCategory});

  final CategoryEntity? selectedCategory;
}

class TurnOnTravel extends BlocAction {}

class TurnOffTravel extends BlocAction {}
