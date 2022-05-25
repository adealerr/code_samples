import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youz/app/navigation/app_navigator.dart';
import 'package:youz/app/navigation/navigation_action.dart';
import 'package:youz/app/presentation/screens/confirmation_steps/confirmation_step_1/confirmation_step_1_screen.dart';
import 'package:youz/app/presentation/screens/confirmation_steps/photo_passport/photo_passport_screen.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:youz/core/ui/widgets/loader_dialog.dart';
import 'package:youz/domain/enums/confirmation_stage.dart';

import 'bloc/confirmation_steps_bloc.dart';
import 'confirmation_finish/confirmation_finish_screen.dart';
import 'confirmation_step_2/confirmation_step_2_screen.dart';
import 'confirmation_step_3/confirmation_step_3_screen.dart';

class ConfirmationStepsScreen extends BaseBlocStatelessWidget<ConfirmationStepsBloc> {
  @override
  Widget build(BuildContext context) => BlocListener<ConfirmationStepsBloc, ConfirmationStepsState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          BlocAction? action = state.action;
          if (action is ShowLoader) {
            LoaderDialog.show(context: context);
          }
          if (action is NavigateBack) {
            AppNavigator.navigate(context: context, action: action);
          }
          if (action is HideLoader) {
            Navigator.of(context).pop();
          }
        },
        child: WillPopScope(
          onWillPop: () async {
            getBloc(context).add(BackClicked());
            return false;
          },
          child: _buildStage(),
        ),
      );

  Widget _buildStage() => BlocBuilder<ConfirmationStepsBloc, ConfirmationStepsState>(
        buildWhen: (previousState, currentState) => previousState.stage != currentState.stage,
        builder: (context, state) {
          switch (state.stage) {
            case ConfirmationStage.step1:
              return ConfirmationStep1Screen();
            case ConfirmationStage.step2:
              return ConfirmationStep2Screen();
            case ConfirmationStage.takingPhotos:
              return PhotoPassportScreen(state.cameraLensDirection);
            case ConfirmationStage.step3:
              return ConfirmationStep3Screen(state.photos);
            case ConfirmationStage.finishStep:
              return ConfirmationFinishScreen();
            default:
              return ConfirmationStep1Screen();
          }
        },
      );
}
