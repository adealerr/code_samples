import 'package:dating_app/app/navigation/app_navigator.dart';
import 'package:dating_app/app/navigation/navigation_actions.dart';
import 'package:dating_app/app/presentation/screens/chats/bloc/chats_bloc.dart';
import 'package:dating_app/app/presentation/screens/feed/bloc/feed_bloc.dart';
import 'package:dating_app/app/resources/app_colors.dart';
import 'package:dating_app/app/widgets/app_bars/account_appbar.dart';
import 'package:dating_app/app/widgets/bottom_sheets/app_bottom_sheet.dart';
import 'package:dating_app/app/widgets/bottom_sheets/select_category_bottom_sheet.dart';
import 'package:dating_app/app/widgets/dialogs/loader_dialog.dart';
import 'package:dating_app/app/widgets/forms/selector_form.dart';
import 'package:dating_app/app/widgets/list/benefit_item.dart';
import 'package:dating_app/app/widgets/list/subscription_item.dart';
import 'package:dating_app/app/widgets/profile/avatar_image.dart';
import 'package:dating_app/core/bloc/bloc_action.dart';
import 'package:dating_app/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:dating_app/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:dating_app/core/ui/widgets/dialogs.dart';
import 'package:dating_app/domain/entities/category_entity.dart';
import 'package:dating_app/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dating_app/app/bloc/app_bloc.dart';


import 'bloc/my_account_bloc.dart';

class MyAccountScreen extends BaseBlocStatelessWidget<MyAccountBloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Scaffold(
            appBar: AccountAppBar(
              onSettingsPressed: () {
                getBloc(context).add(MyAccountEvent.settingsClicked());
              },
              onEditPressed: () {
                getBloc(context).add(MyAccountEvent.editClicked());
              },
            ),
            body: _buildBody(context),
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<MyAccountBloc, MyAccountState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          BlocAction? action = state.action;
          if (action is ShowSelectCategoryDialog) {
            _showSelectCategoryDialog(context, categories: state.categories, selectedCategory: state.selectedCategory);
          }
          if (action is NavigateToPurchase) {
            AppNavigator.navigateToPurchase(context, subscriptionType: action.subscriptionType);
          }
          if (action is NavigateToEditProfile) {
            AppNavigator.navigateToEditProfile(context, profileEntity: action.profileEntity);
          }
          if (action is NavigateToSettings) {
            if(state.profile != null){
              AppNavigator.navigateToSettings(context, profile: state.profile!);
            }
          }
          if (action is TurnOnTravel) {
            context.read<AppBloc>().add(AppEvent.turnOnTravelMode());
            context.read<FeedBloc>().add(FeedEvent.travelModeOn());
            context.read<ChatsBloc>().add(ChatsEvent.travelModeOn());
          }
          if (action is TurnOffTravel) {
            context.read<AppBloc>().add(AppEvent.turnOffTravelMode());
            context.read<FeedBloc>().add(FeedEvent.travelModeOff());
            context.read<ChatsBloc>().add(ChatsEvent.travelModeOff());
          }
          if (action is ShowLoader) {
            LoaderDialog.show(context: context);
          }
          if (action is ShowMessage) {
            showMessage(context, action);
          }
          if (action is HideLoader) {
            Navigator.of(context, rootNavigator: true).pop(context);
          }
        },
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: const DisableGrowEffectScrollBehavior(),
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40, left: 16, right: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTitle(context),
                      _buildAvatar(),
                      _buildAppCategoryTitle(context),
                      _buildSelectCategory(context),
                      _buildSubscriptionSection(context),
                      _buildDivider(),
                      _buildBenefitsSection(context),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget _buildTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 24),
        child: Text(
          AppLocalizations.of(context).myAccount,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 32,
            color: AppColors.onPrimary,
          ),
        ),
      );

  Widget _buildAvatar() => BlocBuilder<MyAccountBloc, MyAccountState>(
        buildWhen: (previous, current) =>
            (previous.profile?.name != current.profile?.name) ||
            (previous.profile?.age != current.profile?.age) ||
            (previous.profile?.verified != current.profile?.verified) ||
            (current.action is TurnOnTravel) || (current.action is TurnOffTravel),
        builder: (context, state) {
          if (state.profile == null) return SizedBox();
          return Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: AvatarImage(
              profile: state.profile!,
            ),
          );
        },
      );

  Widget _buildAppCategoryTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Text(
          AppLocalizations.of(context).appCategory,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColors.grey40,
          ),
        ),
      );

  Widget _buildSelectCategory(BuildContext context) => BlocBuilder<MyAccountBloc, MyAccountState>(
        buildWhen: (previous, current) => previous.selectedCategory != current.selectedCategory,
        builder: (context,state) => Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: SelectorForm(
            text: state.selectedCategory?.name, //text
            hint: AppLocalizations.of(context).selectCategory,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.inputLabel,
            ),
            padding: const EdgeInsets.only(top: 13, bottom: 13),
            needBigArrow: true,
            needLeftIcon: true,
            iconsWidth: 24,
            iconsHeight: 24,
            onPressed: () {
              getBloc(context).add(MyAccountEvent.selectCategoryClicked());
            },
          ),
        ),
      );

  Widget _buildSubscriptionSection(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMySubscriptionsTitle(context),
            _buildSubscriptions(context),
          ],
        ),
      );

  Widget _buildMySubscriptionsTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          AppLocalizations.of(context).mySubscriptions,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColors.grey40,
          ),
        ),
      );

  Widget _buildSubscriptions(BuildContext context) => BlocBuilder<MyAccountBloc, MyAccountState>(
        buildWhen: (previous, current) => previous.subscriptions != current.subscriptions,
        builder: (context, state) => ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.subscriptions.length, // state.profile!.questionNames!.length,
          itemBuilder: (context, index) => SubscriptionItem(
              subscription: state.subscriptions[index], textWidth: MediaQuery.of(context).size.width * 0.7),
        ),
      );

  Widget _buildDivider() =>
      Padding(padding: const EdgeInsets.only(bottom: 24), child: Container(height: 1, color: AppColors.divider));

  Widget _buildBenefitsSection(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBenefitsTitle(context),
          _buildBenefits(context),
        ],
      );

  Widget _buildBenefitsTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Text(
          AppLocalizations.of(context).specialOpportunities,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColors.grey40,
          ),
        ),
      );

  Widget _buildBenefits(BuildContext context) => BlocBuilder<MyAccountBloc, MyAccountState>(
        buildWhen: (previous, current) => previous.benefits != current.benefits,
        builder: (context, state) => ListView.separated(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.benefits.length, // state.profile!.questionNames!.length,
          itemBuilder: (context, index) => BenefitItem(
            benefit: state.benefits[index],
            onMorePressed: () {
              getBloc(context).add(MyAccountEvent.benefitOnMoreClicked(state.benefits[index].type));
            },
          ),
          separatorBuilder: (BuildContext context, int index) => SizedBox(height: 16),
        ),
      );

  void _showSelectCategoryDialog(
    BuildContext context, {
    required List<CategoryEntity> categories,
    CategoryEntity? selectedCategory,
  }) async {
    CategoryEntity? newSelectedCategory = await AppBottomSheet.show<CategoryEntity?>(
      context,
        SelectCategoryBottomSheet(
        availableTextWidth: MediaQuery.of(context).size.width * 0.75,
        unavailableTextWidth: MediaQuery.of(context).size.width * 0.6,
        categories: categories,
        selectedCategory: selectedCategory,
    ),
      rootNavigator: true,

    );
    if (newSelectedCategory == null) newSelectedCategory = selectedCategory;
    getBloc(context).add(MyAccountEvent.categorySelected(newSelectedCategory));
  }
}
