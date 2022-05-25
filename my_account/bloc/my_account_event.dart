part of 'my_account_bloc.dart';

@freezed
class MyAccountEvent with _$MyAccountEvent {
  factory MyAccountEvent.init() = Init;
  factory MyAccountEvent.selectCategoryClicked() = SelectCategoryClicked;
  factory MyAccountEvent.categorySelected(CategoryEntity? category) = CategorySelected;
  factory MyAccountEvent.benefitOnMoreClicked(SubscriptionType subscriptionType) = BenefitOnMoreClicked;
  factory MyAccountEvent.settingsClicked() = SettingsClicked;
  factory MyAccountEvent.editClicked() = EditClicked;
}
