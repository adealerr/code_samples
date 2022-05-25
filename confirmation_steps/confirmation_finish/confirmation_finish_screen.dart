import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youz/app/navigation/app_navigator.dart';
import 'package:youz/app/navigation/navigation_action.dart';
import 'package:youz/app/resources/app_colors.dart';
import 'package:youz/app/resources/app_styles.dart';
import 'package:youz/app/widgets/buttons/default_button.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/core/ui/widgets/base_bloc_state.dart';
import 'package:youz/gen/assets.gen.dart';
import 'package:youz/localization/app_localizations.dart';

import 'bloc/confirmation_finish_bloc.dart';

class ConfirmationFinishScreen extends StatefulWidget {
  @override
  State<ConfirmationFinishScreen> createState() =>
      _ConfirmationFinishScreenState();
}

class _ConfirmationFinishScreenState
    extends BaseBlocState<ConfirmationFinishScreen, ConfirmationFinishBloc> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(AppStyles.mainStyle);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _buildBody(context),
      );

  Widget _buildBody(context) =>
      BlocListener<ConfirmationFinishBloc, ConfirmationFinishState>(
        listenWhen: (previousState, currentState) =>
            previousState.action != currentState.action,
        listener: (context, state) {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
        },
        child: Column(
          children: [
            _buildGradientImage(),
            Spacer(),
            _buildFooter(context),
          ],
        ),
      );

  Widget _buildGradientImage() {
    double height = MediaQuery.of(context).size.height - 300;
    if (height > 812) {
      height = 812;
    }
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Assets.images.confirmationFinishBackground.image(
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 70,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.startImageTopGradient,
                      AppColors.endImageTopGradient
                    ],
                    stops: [0, 0.9],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.startImageBottomGradient,
                        AppColors.endImageBottomGradient
                      ],
                    ),
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 30,
          bottom: 48,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(context),
            const SizedBox(height: 8),
            _buildDescription(context),
            const SizedBox(height: 24),
            _buildFurtherButton(context),
          ],
        ),
      );

  Widget _buildTitle(context) => Text(
        AppLocalizations.of(context).weHaveCollectedAllTheNecessaryData,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24,
          height: 32 / 24,
          color: AppColors.onAccent,
        ),
      );

  Widget _buildDescription(context) => Text(
        AppLocalizations.of(context).confirmationFinishDescription,
        maxLines: 3,
        overflow: TextOverflow.fade,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          height: 20 / 15,
          color: AppColors.onAccent,
        ),
      );

  Widget _buildFurtherButton(context) => DefaultButton(
        text: AppLocalizations.of(context).startUsing,
        onPressed: () {
          getBloc(context).add(ConfirmationFinishEvent.furtherClicked());
        },
      );
}
