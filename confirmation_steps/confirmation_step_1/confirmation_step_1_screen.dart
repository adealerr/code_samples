import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
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
import 'package:youz/app/widgets/buttons/default_selector.dart';
import 'package:youz/app/widgets/inputs/default_input.dart';
import 'package:youz/app/widgets/inputs/default_phone_input.dart';
import 'package:youz/app/widgets/scroll/sliver_footer.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/core/enums/gender.dart';
import 'package:youz/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:youz/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:youz/gen/assets.gen.dart';
import 'package:youz/localization/app_localizations.dart';

import 'bloc/confirmation_step_1_bloc.dart';

class ConfirmationStep1Screen extends BaseBlocStatelessWidget<ConfirmationStep1Bloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Scaffold(appBar: _buildAppbar(context), body: _buildBody(context)),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<ConfirmationStep1Bloc, ConfirmationStep1State>(
        listenWhen: (previousState, currentState) => previousState.action != currentState.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
          if (action is ShowMessage) {}
          if (action is ShowCalendarBottomSheet) {
            _showCalendarBottomSheet(context, state.dateOfBirth);
          }
          if (action is Step1IsCompleted) {
            context.read<ConfirmationStepsBloc>().add(ConfirmationStepsEvent.step1Completed(
                name: state.name!,
                secondName: state.secondName!,
                surname: state.surname!,
                dateOfBirth: state.dateOfBirth!,
                gender: state.gender!,
                phone: state.phoneNumber!,
                email: state.email.value));
          }
          if (action is BackButtonCLicked) {
            context.read<ConfirmationStepsBloc>().add(ConfirmationStepsEvent.backClicked());
          }
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                _buildPersonalDataTitle(context),
                SizedBox(height: 16),
                _buildSurnameInput(context),
                SizedBox(height: 12),
                _buildNameInput(context),
                SizedBox(height: 12),
                _buildSecondNameInput(context),
                SizedBox(height: 12),
                _buildDateOfBirth(context),
                SizedBox(height: 12),
                _buildGenderSelectors(context),
                SizedBox(height: 24),
                _buildContactDataTitle(context),
                SizedBox(height: 16),
                _buildPhoneInput(),
                SizedBox(height: 12),
                _buildEmailInput(context),
                SizedBox(height: 48),
                _buildButton(context)
              ],
            ),
          ),
        ),
      );

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    double textSize = MediaQuery.of(context).textScaleFactor;
    print(textSize);
    double appBarHeight = textSize * 64;
    return DefaultAppbar(
      sizeFromHeight: appBarHeight,
      title: AppLocalizations.of(context).confirmation,
      subtitle: AppLocalizations.of(context).step(1.toString(), 3.toString()),
      needDivider: true,
      onBackPressed: () {
        getBloc(context).add(ConfirmationStep1Event.backClicked());
      },
    );
  }

  Widget _buildPersonalDataTitle(context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          AppLocalizations.of(context).personalData.toUpperCase(),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: AppColors.inputHint,
            height: 20 / 15,
          ),
        ),
      );

  Widget _buildContactDataTitle(context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          AppLocalizations.of(context).contactData.toUpperCase(),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: AppColors.inputHint,
            height: 20 / 15,
          ),
        ),
      );

  Widget _buildSurnameInput(context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: BlocBuilder<ConfirmationStep1Bloc, ConfirmationStep1State>(
          buildWhen: (previous, current) => previous.surname != current.surname,
          builder: (context, state) {
            return DefaultInput(
              text: state.surname,
              keyboardType: TextInputType.name,
              hint: AppLocalizations.of(context).surname,
              label: AppLocalizations.of(context).surname,
              onChanged: (text) {
                getBloc(context).add(ConfirmationStep1Event.surnameChanged(text));
              },
            );
          },
        ),
      );

  Widget _buildNameInput(context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: BlocBuilder<ConfirmationStep1Bloc, ConfirmationStep1State>(
          buildWhen: (previous, current) => previous.name != current.name,
          builder: (context, state) {
            return DefaultInput(
              text: state.name,
              keyboardType: TextInputType.name,
              hint: AppLocalizations.of(context).name,
              label: AppLocalizations.of(context).name,
              onChanged: (text) {
                getBloc(context).add(ConfirmationStep1Event.nameChanged(text));
              },
            );
          },
        ),
      );

  Widget _buildSecondNameInput(context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: BlocBuilder<ConfirmationStep1Bloc, ConfirmationStep1State>(
          buildWhen: (previous, current) => previous.secondName != current.secondName,
          builder: (context, state) {
            return DefaultInput(
              text: state.secondName,
              keyboardType: TextInputType.name,
              hint: AppLocalizations.of(context).secondName,
              label: AppLocalizations.of(context).secondName,
              onChanged: (text) {
                getBloc(context).add(ConfirmationStep1Event.secondNameChanged(text));
              },
            );
          },
        ),
      );

  Widget _buildDateOfBirth(context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: BlocBuilder<ConfirmationStep1Bloc, ConfirmationStep1State>(
          buildWhen: (previous, current) => previous.dateOfBirth != current.dateOfBirth,
          builder: (context, state) {
            return DefaultInput(
              enabled: false,
              text: (state.dateOfBirth != null) ? DateFormat('dd.MM.yyyy').format(state.dateOfBirth!) : null,
              hint: AppLocalizations.of(context).dateOfBirth,
              label: AppLocalizations.of(context).dateOfBirth,
              suffixIcon: SvgPicture.asset(Assets.images.calendar, width: 32, height: 32),
              onTap: () {
                getBloc(context).add(ConfirmationStep1Event.calendarClicked());
              },
            );
          },
        ),
      );

  Widget _buildGenderSelectors(context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: BlocBuilder<ConfirmationStep1Bloc, ConfirmationStep1State>(
          buildWhen: (previous, current) => previous.gender != current.gender,
          builder: (context, state) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: DefaultSelector(
                    text: AppLocalizations.of(context).man,
                    onPressed: () {
                      getBloc(context).add(ConfirmationStep1Event.genderChanged(Gender.man));
                    },
                    enabled: state.gender == Gender.man,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DefaultSelector(
                    text: AppLocalizations.of(context).woman,
                    onPressed: () {
                      getBloc(context).add(ConfirmationStep1Event.genderChanged(Gender.woman));
                    },
                    enabled: state.gender == Gender.woman,
                  ),
                ),
              ],
            );
          },
        ),
      );

  Widget _buildPhoneInput() => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: BlocBuilder<ConfirmationStep1Bloc, ConfirmationStep1State>(
          buildWhen: (previous, current) => previous.phoneNumber != current.phoneNumber,
          builder: (context, state) {
            return DefaultInput(
              text: state.phoneNumber,
              enabled: false,
              title: AppLocalizations.of(context).phoneNumber,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 17, color: AppColors.inputHint),
              //haveError: state.errorMessage != null,
              // onChanged: (number) {
              //   getBloc(context).add(ConfirmationStep1Event.phoneChanged(number));
              // },
              label: AppLocalizations.of(context).phoneNumber,
              hint: AppLocalizations.of(context).phoneNumber,
              contentPadding: null,
            );
          },
        ),
      );

  Widget _buildEmailInput(context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: BlocBuilder<ConfirmationStep1Bloc, ConfirmationStep1State>(
          buildWhen: (previous, current) => previous.email != current.email,
          builder: (context, state) {
            return DefaultInput(
              text: state.email.value,
              hint: AppLocalizations.of(context).email,
              label: AppLocalizations.of(context).email,
              keyboardType: TextInputType.emailAddress,
              onChanged: (text) {
                getBloc(context).add(ConfirmationStep1Event.emailChanged(text));
              },
            );
          },
        ),
      );

  Widget _buildButton(context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: BlocBuilder<ConfirmationStep1Bloc, ConfirmationStep1State>(
          buildWhen: (previous, current) => previous.buttonEnabled != current.buttonEnabled,
          builder: (context, state) {
            return DefaultButton(
              text: AppLocalizations.of(context).further,
              enabled: state.buttonEnabled,
              onPressed: () {
                getBloc(context).add(ConfirmationStep1Event.furtherClicked());
              },
            );
          },
        ),
      );

  void _showCalendarBottomSheet(BuildContext context, DateTime? selectedDate) async {
    DateTime? result = await AppBottomSheet.show(context, CalendarBottomSheet(initialDate: selectedDate));
    getBloc(context).add(ConfirmationStep1Event.dateOfBirthChanged(result));
  }
}
