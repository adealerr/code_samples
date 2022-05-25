import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:youz/app/navigation/app_navigator.dart';
import 'package:youz/app/navigation/navigation_action.dart';
import 'package:youz/app/presentation/screens/confirmation_steps/bloc/confirmation_steps_bloc.dart';
import 'package:youz/app/resources/app_colors.dart';
import 'package:youz/app/widgets/app_bars/default_appbar.dart';
import 'package:youz/app/widgets/bottom_sheets/app_bottom_sheet.dart';
import 'package:youz/app/widgets/bottom_sheets/calendar_bottom_sheet.dart';
import 'package:youz/app/widgets/buttons/default_button.dart';
import 'package:youz/app/widgets/check_boxes/app_check_box.dart';
import 'package:youz/app/widgets/inputs/default_input.dart';
import 'package:youz/app/widgets/inputs/passport_numbers_input.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:youz/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:youz/core/ui/widgets/loader_dialog.dart';
import 'package:youz/gen/assets.gen.dart';
import 'package:youz/localization/app_localizations.dart';

import 'bloc/confirmation_step_2_bloc.dart';

class ConfirmationStep2Screen extends BaseBlocStatelessWidget<ConfirmationStep2Bloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Scaffold(appBar: _buildAppBar(context), body: _buildBody(context)),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<ConfirmationStep2Bloc, ConfirmationStep2State>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            FocusScope.of(context).unfocus();
            AppNavigator.navigate(context: context, action: action);
          }
          if (action is ShowCalendarBottomSheet) {
            _showCalendarBottomSheet(context, state.issueDate);
          }
          if (action is Step2IsCompleted) {
            context.read<ConfirmationStepsBloc>().add(
                  ConfirmationStepsEvent.step2Completed(
                    numberSeries: state.numberSeries.value,
                    issuedByWhom: state.issuedByWhom.value,
                    issueDate: state.issueDate!,
                    registrationCity: state.registrationCity.value,
                    registrationStreet: state.registrationStreet.value,
                    registrationHouse: state.registrationHouse.value,
                    registrationFlat: state.registrationFlat.value,
                    residentialCity: state.residentialCity.value,
                    residentialStreet: state.residentialStreet.value,
                    residentialHouse: state.residentialHouse.value,
                    residentialFlat: state.residentialFlat.value,
                  ),
                );
          }
          if (action is ShowLoader) {
            LoaderDialog.show(context: context);
          }
          if (action is HideLoader) {
            Navigator.of(context).pop();
          }
          if (action is BackButtonClicked) {
            context.read<ConfirmationStepsBloc>().add(ConfirmationStepsEvent.backClicked());
          }
        },
        child: ScrollConfiguration(
          behavior: DisableGrowEffectScrollBehavior(),
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                _buildPassportDataTitle(context),
                const SizedBox(height: 16),
                _buildNumberSeries(context),
                const SizedBox(height: 12),
                _buildIssuedByWhom(context),
                const SizedBox(height: 12),
                _buildDateIssue(context),
                const SizedBox(height: 24),
                _buildRegistrationAddressTitle(context),
                const SizedBox(height: 16),
                _buildRegistrationCity(context),
                const SizedBox(height: 12),
                _buildRegistrationStreet(context),
                const SizedBox(height: 12),
                _buildRegistrationHouseAndFlat(context),
                const SizedBox(height: 24),
                _buildResidentialAddressTitle(context),
                const SizedBox(height: 12),
                _buildCoincidenceCheckBox(context),
                _buildResidentialCity(context),
                _buildResidentialStreet(context),
                _buildResidentialHouseAndFlat(context),
                const SizedBox(height: 24),
                _buildFurtherButton(context),
              ],
            ),
          ),
        ),
      );

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    double textSize = MediaQuery.of(context).textScaleFactor;
    print(textSize);
    double appBarHeight = textSize * 64;
    return DefaultAppbar(
      sizeFromHeight: appBarHeight,
      title: AppLocalizations.of(context).confirmation,
      subtitle: AppLocalizations.of(context).step(2.toString(), 3.toString()),
      onBackPressed: () {
        getBloc(context).add(ConfirmationStep2Event.onBackClicked());
      },
    );
  }

  Widget _buildPassportDataTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          AppLocalizations.of(context).passportData.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColors.gray3,
            fontSize: 15,
          ),
        ),
      );

  Widget _buildNumberSeries(BuildContext context) => BlocBuilder<ConfirmationStep2Bloc, ConfirmationStep2State>(
      buildWhen: (previous, current) => previous.numberSeries != current.numberSeries,
      builder: (context, state) {
        // String? error;
        // if (state.numberSeries.error ==
        //     PassportNumberValidationError.empty) {
        //   error = AppLocalizations.of(context).youHaveNotEnteredAnything;
        // }
        // if (state.numberSeries.error ==
        //     PassportNumberValidationError.isNotFully) {
        //   error = AppLocalizations.of(context).youEnteredIncorrectData;
        // }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: PassportNumbersInput(
            // error: error,
            label: AppLocalizations.of(context).numberAndSeries,
            text: state.numberSeries.value,
            onChanged: (text) {
              getBloc(context).add(ConfirmationStep2Event.numberSeriesChanged(text));
            },
          ),
        );
      });

  Widget _buildIssuedByWhom(BuildContext context) => BlocBuilder<ConfirmationStep2Bloc, ConfirmationStep2State>(
      buildWhen: (previous, current) => previous.issuedByWhom != current.issuedByWhom,
      builder: (context, state) {
        // String? error;
        // if (state.issuedByWhom.error != null) {
        //   error = AppLocalizations.of(context).youHaveNotEnteredAnything;
        // }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DefaultInput(
            // error: error,
            textCapitalization: TextCapitalization.sentences,
            label: AppLocalizations.of(context).issuedByWhom,
            text: state.issuedByWhom.value,
            maxLines: 2,
            minLines: 2,
            onChanged: (text) {
              getBloc(context).add(ConfirmationStep2Event.issuedByWhomChanged(text));
            },
          ),
        );
      });

  Widget _buildDateIssue(BuildContext context) => BlocBuilder<ConfirmationStep2Bloc, ConfirmationStep2State>(
      buildWhen: (previous, current) => previous.issueDate != current.issueDate,
      builder: (context, state) {
        // String? error;
        // if (state.issueDate != null) {
        //   error = AppLocalizations.of(context).youHaveNotEnteredAnything;
        // }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DefaultInput(
            enabled: false,
            textCapitalization: TextCapitalization.sentences,
            label: AppLocalizations.of(context).issueDate,
            suffixIcon: SvgPicture.asset(
              Assets.images.calendar,
              width: 32,
              height: 32,
            ),
            text: (state.issueDate != null) ? DateFormat('dd.MM.yyyy').format(state.issueDate!) : null,
            onTap: () {
              getBloc(context).add(ConfirmationStep2Event.onIssueDateClicked());
            },
          ),
        );
      });

  Widget _buildRegistrationCity(BuildContext context) => BlocBuilder<ConfirmationStep2Bloc, ConfirmationStep2State>(
      buildWhen: (previous, current) => previous.registrationCity != current.registrationCity,
      builder: (context, state) {
        // String? error;
        // if (state.issuedByWhom.error != null) {
        //   error = AppLocalizations.of(context).youHaveNotEnteredAnything;
        // }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DefaultInput(
            // error: error,
            textCapitalization: TextCapitalization.sentences,
            label: AppLocalizations.of(context).city,
            text: state.registrationCity.value,
            onChanged: (text) {
              getBloc(context).add(ConfirmationStep2Event.registrationCityChanged(text));
            },
          ),
        );
      });

  Widget _buildRegistrationStreet(BuildContext context) => BlocBuilder<ConfirmationStep2Bloc, ConfirmationStep2State>(
      buildWhen: (previous, current) => previous.registrationStreet != current.registrationStreet,
      builder: (context, state) {
        // String? error;
        // if (state.issuedByWhom.error != null) {
        //   error = AppLocalizations.of(context).youHaveNotEnteredAnything;
        // }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DefaultInput(
            // error: error,
            textCapitalization: TextCapitalization.sentences,
            label: AppLocalizations.of(context).street,
            text: state.registrationStreet.value,
            onChanged: (text) {
              getBloc(context).add(ConfirmationStep2Event.registrationStreetChanged(text));
            },
          ),
        );
      });

  Widget _buildRegistrationHouseAndFlat(BuildContext context) =>
      BlocBuilder<ConfirmationStep2Bloc, ConfirmationStep2State>(
          buildWhen: (previous, current) =>
              previous.registrationHouse != current.registrationHouse ||
              previous.registrationFlat != current.registrationFlat,
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultInput(
                      // error: error,
                      textCapitalization: TextCapitalization.sentences,
                      label: AppLocalizations.of(context).house,
                      text: state.registrationHouse.value,
                      onChanged: (text) {
                        getBloc(context).add(ConfirmationStep2Event.registrationHouseChanged(text));
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DefaultInput(
                      // error: error,
                      textCapitalization: TextCapitalization.sentences,
                      label: AppLocalizations.of(context).flat,
                      text: state.registrationFlat.value,
                      onChanged: (text) {
                        getBloc(context).add(ConfirmationStep2Event.registrationFlatChanged(text));
                      },
                    ),
                  ),
                ],
              ),
            );
          });

  Widget _buildResidentialCity(BuildContext context) => BlocBuilder<ConfirmationStep2Bloc, ConfirmationStep2State>(
      buildWhen: (previous, current) =>
          previous.residentialCity != current.residentialCity || previous.addressesAreSame != current.addressesAreSame,
      builder: (context, state) {
        if (state.addressesAreSame) return SizedBox();
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: DefaultInput(
            // error: error,
            textCapitalization: TextCapitalization.sentences,
            label: AppLocalizations.of(context).city,
            text: state.residentialCity.value,
            onChanged: (text) {
              getBloc(context).add(ConfirmationStep2Event.residentialCityChanged(text));
            },
          ),
        );
      });

  Widget _buildResidentialStreet(BuildContext context) => BlocBuilder<ConfirmationStep2Bloc, ConfirmationStep2State>(
      buildWhen: (previous, current) =>
          previous.residentialStreet != current.residentialStreet ||
          previous.addressesAreSame != current.addressesAreSame,
      builder: (context, state) {
        // String? error;
        // if (state.issuedByWhom.error != null) {
        //   error = AppLocalizations.of(context).youHaveNotEnteredAnything;
        // }
        if (state.addressesAreSame) return SizedBox();
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
          child: DefaultInput(
            // error: error,
            textCapitalization: TextCapitalization.sentences,
            label: AppLocalizations.of(context).street,
            text: state.residentialStreet.value,
            onChanged: (text) {
              getBloc(context).add(ConfirmationStep2Event.residentialStreetChanged(text));
            },
          ),
        );
      });

  Widget _buildResidentialHouseAndFlat(BuildContext context) =>
      BlocBuilder<ConfirmationStep2Bloc, ConfirmationStep2State>(
          buildWhen: (previous, current) =>
              previous.residentialHouse != current.residentialHouse ||
              previous.residentialFlat != current.residentialFlat ||
              previous.addressesAreSame != current.addressesAreSame,
          builder: (context, state) {
            if (state.addressesAreSame) return SizedBox();
            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultInput(
                      // error: error,
                      textCapitalization: TextCapitalization.sentences,
                      label: AppLocalizations.of(context).house,
                      text: state.residentialHouse.value,
                      onChanged: (text) {
                        getBloc(context).add(ConfirmationStep2Event.residentialHouseChanged(text));
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DefaultInput(
                      // error: error,
                      textCapitalization: TextCapitalization.sentences,
                      label: AppLocalizations.of(context).flat,
                      text: state.residentialFlat.value,
                      onChanged: (text) {
                        getBloc(context).add(ConfirmationStep2Event.residentialFlatChanged(text));
                      },
                    ),
                  ),
                ],
              ),
            );
          });

  Widget _buildCoincidenceCheckBox(BuildContext context) => BlocBuilder<ConfirmationStep2Bloc, ConfirmationStep2State>(
        buildWhen: (previous, current) => previous.addressesAreSame != current.addressesAreSame,
        builder: (context, state) => GestureDetector(
          onTap: () {
            getBloc(context).add(ConfirmationStep2Event.onCoincidenceCheckBoxClicked());
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppCheckBox(coincide: state.addressesAreSame),
                const SizedBox(width: 16),
                Flexible(
                  child: Text(
                    AppLocalizations.of(context).matchesRegistrationAddress,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: AppColors.onAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildFurtherButton(BuildContext context) => BlocBuilder<ConfirmationStep2Bloc, ConfirmationStep2State>(
        buildWhen: (previous, current) => previous.buttonEnabled != current.buttonEnabled,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.only(bottom: 48, left: 16, right: 16),
          child: DefaultButton(
            text: AppLocalizations.of(context).further,
            enabled: state.buttonEnabled,
            onPressed: () {
              getBloc(context).add(ConfirmationStep2Event.onFurtherClicked());
              FocusScope.of(context).unfocus();
            },
          ),
        ),
      );

  Widget _buildRegistrationAddressTitle(context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          AppLocalizations.of(context).registrationAddress.toUpperCase(),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: AppColors.inputHint,
            height: 20 / 15,
          ),
        ),
      );

  Widget _buildResidentialAddressTitle(context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          AppLocalizations.of(context).residentialAddress.toUpperCase(),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: AppColors.inputHint,
            height: 20 / 15,
          ),
        ),
      );

  void _showCalendarBottomSheet(BuildContext context, DateTime? selectedDate) async {
    DateTime? result = await AppBottomSheet.show(
        context, CalendarBottomSheet(initialDate: selectedDate, title: AppLocalizations.of(context).dateOfPublishing));
    getBloc(context).add(ConfirmationStep2Event.issueDateChanged(result));
  }
}
