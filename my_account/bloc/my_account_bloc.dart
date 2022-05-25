import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dating_app/app/navigation/navigation_actions.dart';
import 'package:dating_app/app/resources/app_colors.dart';
import 'package:dating_app/core/bloc/bloc_action.dart';
import 'package:dating_app/core/enums/message_type.dart';
import 'package:dating_app/core/failures.dart';
import 'package:dating_app/domain/entities/benefit_entity.dart';
import 'package:dating_app/domain/entities/category_entity.dart';
import 'package:dating_app/domain/entities/profile_entity.dart';
import 'package:dating_app/domain/entities/subscription_entity.dart';
import 'package:dating_app/domain/enums/categories.dart';
import 'package:dating_app/domain/enums/subscription_type.dart';
import 'package:dating_app/domain/gateways/local/preferences_local_gateway.dart';
import 'package:dating_app/domain/repositories/categories_repository.dart';
import 'package:dating_app/domain/repositories/profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_account_bloc.freezed.dart';
part 'my_account_event.dart';
part 'my_account_state.dart';

class MyAccountBloc extends Bloc<MyAccountEvent, MyAccountState> {
  MyAccountBloc({
    required this.categoriesRepository,
    required this.preferencesLocalGateway,
    required this.profileRepository,
  }) : super(MyAccountState()) {
    this.add(MyAccountEvent.init());
  }

  CategoriesRepository categoriesRepository;
  PreferencesLocalGateway preferencesLocalGateway;
  ProfileRepository profileRepository;

  @override
  Stream<MyAccountState> mapEventToState(
    MyAccountEvent event,
  ) async* {
    yield* event.map(
      init: _init,
      selectCategoryClicked: _selectCategoryClicked,
      categorySelected: _categorySelected,
      benefitOnMoreClicked: _benefitOnMoreClicked,
      settingsClicked: _settingsClicked,
      editClicked: _editClicked,
    );
  }

  Stream<MyAccountState> _init(Init value) async* {
    yield* _fetchData();
    yield* _loadCategories();

    final List<BenefitEntity> benefits = [
      BenefitEntity(type: SubscriptionType.silver),
      BenefitEntity(type: SubscriptionType.gold),
      BenefitEntity(type: SubscriptionType.platinum),
    ];
    yield state.copyWith(benefits: benefits);
  }

  Stream<MyAccountState> _fetchData({bool needShowLoader = true}) async* {
    if (needShowLoader) {
      yield state.copyWith(action: ShowLoader());
    }

    String token = (await preferencesLocalGateway.getToken()) ?? '';
    bool haveError = false;
    String locale = (await preferencesLocalGateway.getLocale()) ?? 'ru';

    Either<ProfileEntity, Failure> getProfileResult =
        await profileRepository.getProfileByToken(token: token, locale: locale);

    yield* getProfileResult.fold(
      (data) => _handleGetProfile(data),
      (error) {
        haveError = true;
        return _handleError(error);
      },
    );
    if (needShowLoader) {
      yield state.copyWith(action: HideLoader());
    }
  }

  Stream<MyAccountState> _handleGetProfile(ProfileEntity data) async* {
    yield state.copyWith(
        profile: data,
        subscriptions: data.subscriptions != null ? data.subscriptions! : [],
        selectedCategory: data.chosenCategory);
  }

  Stream<MyAccountState> _selectCategoryClicked(SelectCategoryClicked value) async* {
    if (state.categories == null) {
      yield state.copyWith(action: ShowSelectCategoryDialog());
    } else if (state.profile != null && state.profile!.chosenCategory != null) {
      yield state.copyWith(
          action: ShowSelectCategoryDialog(
              selectedCategory:
                  state.categories.firstWhere((category) => category.id == state.profile!.chosenCategory!.id)));
    }
  }

  Stream<MyAccountState> _benefitOnMoreClicked(BenefitOnMoreClicked value) async* {
    yield state.copyWith(action: NavigateToPurchase(subscriptionType: value.subscriptionType));
  }

  Stream<MyAccountState> _settingsClicked(SettingsClicked value) async* {
    yield state.copyWith(action: NavigateToSettings());
  }

  Stream<MyAccountState> _editClicked(EditClicked value) async* {
    if (state.profile != null) {
      yield state.copyWith(action: NavigateToEditProfile(profileEntity: state.profile!));
    }
  }

  Stream<MyAccountState> _categorySelected(CategorySelected value) async* {
    if (value.category != null) {
      String token = (await preferencesLocalGateway.getToken()) ?? '';
      bool haveError = false;
      Either<bool, Failure> getUpdateCategoryResult = await profileRepository.updateCategory(
        token: token,
        categoryName: CategoryEntity.getUniqueName(value.category!.uniqueName),
      );

      yield* getUpdateCategoryResult.fold(
        (data) async* {
          if (value.category!.uniqueName == CategoryName.travelCompany) {
                preferencesLocalGateway.setTravelMode(true);
                AppColors.accent = Color(0xFF61BA8A);
                AppColors.accentLight = Color(0xFFBEE2CE);
                AppColors.onBackgroundAccent = Color(0xFFE4F2E9);
                AppColors.orange = Color(0xFF5AB680);
                yield* _turnOnTravelMode(selectedCategory: value.category!);
              }else {
                bool? previousResult = await preferencesLocalGateway.getTravelMode();
                if (previousResult != null && previousResult) {
                  preferencesLocalGateway.setTravelMode(null);
                  AppColors.accent = Color(0xFFE3B687);
                  AppColors.accentLight = Color(0xFFF7E9DB);
                  AppColors.onBackgroundAccent = Color(0xFFF2E0D0);
                  AppColors.orange = Color(0xFFC27D53);
                  yield* _turnOffTravelMode(selectedCategory: value.category!);
                }
                yield state.copyWith(selectedCategory: value.category);
                preferencesLocalGateway.setTravelMode(null);
              }
        },
        (error) {
          haveError = true;
          return _handleError(error);
        },
      );
    }
  }

  Stream<MyAccountState> _turnOnTravelMode({required CategoryEntity selectedCategory}) async* {
    yield state.copyWith(action: TurnOnTravel(),selectedCategory: selectedCategory);
  }

  Stream<MyAccountState> _turnOffTravelMode({required CategoryEntity selectedCategory}) async* {
    yield state.copyWith(action: TurnOffTravel(),selectedCategory: selectedCategory);
  }

  Stream<MyAccountState> _loadCategories() async* {
    // yield state.copyWith(action: ShowLoader());

    String token = (await preferencesLocalGateway.getToken()) ?? '';

    String locale = (await preferencesLocalGateway.getLocale()) ?? 'ru';

    yield* (await categoriesRepository.getCategories(
      token: token,
      locale: locale,
    ))
        .fold(
      (data) => _handleGetCategories(data),
      (error) => _handleError(error),
    );
  }

  Stream<MyAccountState> _handleError(Failure error) async* {
    yield state.copyWith(action: HideLoader());
    if (error is NetworkFailure) {
      yield state.copyWith(action: ShowMessage(messageType: MessageType.noConnection));
    }
    if (error is UndefinedFailure) {
      yield state.copyWith(action: ShowMessage(messageType: MessageType.undefinedError));
    }
  }

  Stream<MyAccountState> _handleGetCategories(List<CategoryEntity> categories) async* {
    yield state.copyWith(categories: categories);
  }
}
