import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youz/app/navigation/app_navigator.dart';
import 'package:youz/app/navigation/navigation_action.dart';
import 'package:youz/app/presentation/screens/confirmation_steps/bloc/confirmation_steps_bloc.dart';
import 'package:youz/app/presentation/screens/confirmation_steps/photo_passport/bloc/photo_passport_bloc.dart';
import 'package:youz/app/resources/app_colors.dart';
import 'package:youz/app/widgets/app_bars/default_appbar.dart';
import 'package:youz/app/widgets/buttons/default_button.dart';
import 'package:youz/app/widgets/lists/document_part_item.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:youz/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:youz/core/ui/widgets/loader_dialog.dart';
import 'package:youz/localization/app_localizations.dart';

import 'bloc/confirmation_step_3_bloc.dart';

class ConfirmationStep3Screen extends BaseBlocStatelessWidget<ConfirmationStep3Bloc> {
  ConfirmationStep3Screen(this.photos);

  final List<File> photos;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Scaffold(
            appBar: _buildAppbar(context),
            body: _buildBody(context),
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<ConfirmationStep3Bloc, ConfirmationStep3State>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
          if (action is Step3IsCompleted) {
            context.read<ConfirmationStepsBloc>().add(ConfirmationStepsEvent.step3Completed());
          }
          if (action is BackButtonCLicked) {
            context.read<ConfirmationStepsBloc>().add(ConfirmationStepsEvent.backClicked());
          }
          if (action is ChangePhoto) {
            context.read<PhotoPassportBloc>().add(PhotoPassportEvent.changeStage(action.stage));
            context
                .read<ConfirmationStepsBloc>()
                .add(ConfirmationStepsEvent.backClicked(photoPassportStage: action.stage));
          }
          if (action is ShowLoader) {
            LoaderDialog.show(context: context);
          }
          if (action is HideLoader) {
            Navigator.of(context).pop();
          }
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: _buildDocumentParts()),
              _buildConfirmAccountButton(context),
              _buildUserAndOfferAgreement(context),
            ],
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
      subtitle: AppLocalizations.of(context).step(3.toString(), 3.toString()),
      onBackPressed: () {
        getBloc(context).add(ConfirmationStep3Event.backClicked());
      },
    );
  }

  Widget _buildDocumentParts() => BlocBuilder<ConfirmationStep3Bloc, ConfirmationStep3State>(
        buildWhen: (previous, current) => previous.documentParts != current.documentParts,
        builder: (context, state) {
          if (state.documentParts.isEmpty) {
            return SizedBox();
          }
          return ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
            itemCount: state.documentParts.length,
            itemBuilder: (context, position) => DocumentPartItem(
              documentPart: state.documentParts[position],
              onPressed: () {
                getBloc(context)
                    .add(ConfirmationStep3Event.changePhotoClicked(state.documentParts[position].documentPart));
              },
            ),
            separatorBuilder: (context, position) => SizedBox(height: 16),
          );
        },
      );

  Widget _buildConfirmAccountButton(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: DefaultButton(
          text: AppLocalizations.of(context).confirmAccount,
          onPressed: () {
            getBloc(context).add(ConfirmationStep3Event.confirmAccountClicked());
          },
        ),
      );

  Widget _buildUserAndOfferAgreement(context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
        child: RichText(
          textDirection: TextDirection.ltr,
          text: TextSpan(
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                height: 18 / 13,
                color: AppColors.onSurface.withOpacity(0.4)),
            children: <TextSpan>[
              TextSpan(
                text: AppLocalizations.of(context).confirmationStep3Description,
              ),
              TextSpan(
                  text: ' ' + AppLocalizations.of(context).termsOfUse,
                  style: TextStyle(color: AppColors.onSurface, fontWeight: FontWeight.w500)),
              TextSpan(
                text: ' ' + AppLocalizations.of(context).andGive,
              ),
              TextSpan(
                  text: ' ' + AppLocalizations.of(context).agreementForProcessingPersonalData,
                  style: TextStyle(
                    color: AppColors.onSurface,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),
      );
}
