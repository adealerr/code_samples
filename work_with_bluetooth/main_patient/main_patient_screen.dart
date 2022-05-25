import 'dart:io';

import 'package:baby_knock/app/navigation/app_navigator.dart';
import 'package:baby_knock/app/navigation/navigation_actions.dart';
import 'package:baby_knock/app/presentation/screens/main_patient/bloc/main_patient_bloc.dart';
import 'package:baby_knock/app/resources/app_colors.dart';
import 'package:baby_knock/app/resources/app_images.dart';
import 'package:baby_knock/app/widgets/bottom_sheets/app_bottom_sheet.dart';
import 'package:baby_knock/app/widgets/bottom_sheets/delete_record_bottom_sheet.dart';
import 'package:baby_knock/app/widgets/bottom_sheets/record_bottom_sheet.dart';
import 'package:baby_knock/app/widgets/bottom_sheets/rename_bottom_sheet.dart';
import 'package:baby_knock/app/widgets/dialogs/loader_dialog.dart';
import 'package:baby_knock/app/widgets/list/record_item.dart';
import 'package:baby_knock/app/widgets/messages/device_message.dart';
import 'package:baby_knock/app/widgets/others/battery_indicator.dart';
import 'package:baby_knock/app/widgets/others/record_player.dart';
import 'package:baby_knock/core/bloc/bloc_action.dart';
import 'package:baby_knock/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:baby_knock/core/ui/widgets/base_bloc_state.dart';
import 'package:baby_knock/core/ui/widgets/dialogs.dart';
import 'package:baby_knock/domain/entities/record_entity.dart';
import 'package:baby_knock/localization/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class MainPatientScreen extends StatefulWidget {
  @override
  _MainPatientScreenState createState() => _MainPatientScreenState();
}

class _MainPatientScreenState extends BaseBlocState<MainPatientScreen, MainPatientBloc> {
  ScrollController _scrollController = ScrollController();
  ScrollController _screenScrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: _buildBody(context),
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<MainPatientBloc, MainPatientState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          BlocAction? action = state.action;
          if (action is ShowRecordBottomSheet) {
            _showRecordBottomSheet(context, longPressedRecord: state.longPressedRecord, records: state.records);
          }
          if (action is NavigateToPatientSettings) {
            AppNavigator.navigateToPatientSettings(context, recordsLength: action.recordsLength);
          }
          if (action is ShowRenameRecordBottomSheet) {
            Navigator.pop(context);
            _showRenameRecordBottomSheet(
              context,
              longPressedRecord: state.longPressedRecord,
              name: state.name,
              // isSaveClicked: state.isSaveClicked
            );
          }
          if (action is ShowDeleteRecordBottomSheet) {
            Navigator.pop(context);
            _showDeleteRecordBottomSheet(context, longPressedRecord: state.longPressedRecord, records: state.records);
          }
          if (action is ShowMessage) {
            showMessage(context, action);
          }
          if (action is ShowLoader) {
            LoaderDialog.show(context: context);
          }
          if (action is HideLoader) {
            Navigator.pop(context);
          }
          if (action is NavigateBack) {
            Navigator.pop(context);
          }
        },
        child: Stack(children: [
          ScrollConfiguration(
            behavior: DisableGrowEffectScrollBehavior(),
            child: SingleChildScrollView(
              controller: _screenScrollController,
              physics: ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDeviceMessage(context),
                  _buildAppBar(context),
                  const SizedBox(height: 16),
                  _buildTitle(context),
                  const SizedBox(height: 21),
                  _buildRecordsList(context),
                  (MediaQuery.of(context).size.height < 800)
                      ? (MediaQuery.of(context).size.height < 650)
                          ? SizedBox(height: MediaQuery.of(context).size.height / 30)
                          : SizedBox(height: MediaQuery.of(context).size.height / 20)
                      : SizedBox(height: MediaQuery.of(context).size.height / 9),
                  _buildLotusSection(context),
                  if (MediaQuery.of(context).size.height > 750)
                    SizedBox(height: MediaQuery.of(context).size.height / 9),
                  // : SizedBox(),
                  // _buildPlayer(context),
                  // SizedBox(height: MediaQuery.of(context).size.height / 5.5),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildPlayer(context),
          ),
        ]),
      );

  Widget _buildDeviceMessage(BuildContext context) => BlocBuilder<MainPatientBloc, MainPatientState>(
        buildWhen: (previousState, currentState) => previousState.deviceMessage != currentState.deviceMessage,
        builder: (context, state) => DeviceMessage(messageType: state.deviceMessage),
      );

  Widget _buildAppBar(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 11, bottom: 11, left: 14, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_buildPatientImage(context), _buildBatteryIndicator(context)],
        ),
      );

  Widget _buildPatientImage(BuildContext context) => BlocBuilder<MainPatientBloc, MainPatientState>(
        builder: (context, state) => GestureDetector(
            onTap: () {
              getBloc(context).add(MainPatientEvent.profileClicked());
            },
            child: SvgPicture.asset(
              AppImages.patientProfile,
              width: 43,
              height: 43,
            )),
      );

  Widget _buildBatteryIndicator(BuildContext context) => BlocBuilder<MainPatientBloc, MainPatientState>(
        buildWhen: (previousState, currentState) => previousState.deviceCharge != currentState.deviceCharge,
        builder: (context, state) => BatteryIndicator(
          batteryLevel: state.deviceCharge,
        ),
      );

  Widget _buildTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          AppLocalizations.of(context).myHeartbeats,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28,
            color: AppColors.mainTitle,
          ),
        ),
      );

  Widget _buildRecordsList(BuildContext context) => BlocBuilder<MainPatientBloc, MainPatientState>(
        buildWhen: (previousState, currentState) =>
            previousState.records != currentState.records ||
            previousState.selectedRecord != currentState.selectedRecord ||
            previousState.longPressedRecord != currentState.longPressedRecord,
        builder: (context, state) => state.records.length != null && state.records.length != 0
            ? ScrollConfiguration(
                behavior: const DisableGrowEffectScrollBehavior(),
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 92,
                    child: ListView.separated(
                      padding: (state.records[0] == state.selectedRecord)
                          ? EdgeInsets.only(left: 37, right: 20)
                          : EdgeInsets.symmetric(horizontal: 20),
                      controller: _scrollController,
                      itemCount: state.records.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => RecordItem(
                        onLongPress: () {
                          getBloc(context).add(MainPatientEvent.recordLongPressed(state.records[index]));
                        },
                        record: state.records[index],
                        isSelected: state.records[index] == state.selectedRecord,
                        onPressed: () {
                          getBloc(context).add(MainPatientEvent.recordSelected(state.records[index]));
                          _scrollController.animateTo(202 * index.toDouble(),
                              duration: Duration(milliseconds: 250), curve: Curves.linearToEaseOut);
                          _screenScrollController.animateTo(
                            (MediaQuery.of(context).size.height < 750)
                                ? MediaQuery.of(context).size.height + 110
                                : MediaQuery.of(context).size.height,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.fastOutSlowIn,
                          );
                        },
                        backgroundColor: AppColors.recordBackground,
                      ),
                      separatorBuilder: (BuildContext context, int index) => SizedBox(width: 13),
                    ),
                  ),
                ),
              )
            : SizedBox(),
      );

  Widget _buildLotusSection(BuildContext context) => BlocBuilder<MainPatientBloc, MainPatientState>(
        buildWhen: (previousState, currentState) =>
            previousState.recording != currentState.recording ||
            previousState.selectedRecord != currentState.selectedRecord ||
            previousState.recordingDuration != currentState.recordingDuration,
        builder: (context, state) => Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(children: [
            ScaleTap(
              duration: Duration(milliseconds: 350),
              onPressed: () {
                getBloc(context).add(MainPatientEvent.lotusClicked());
              },
              child: Image.asset(
                state.recording ? AppImages.stopLotus : AppImages.startLotus,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              state.recording
                  ? '${AppLocalizations.of(context).listeningToTheHeart}\n${state.recordingDuration}'
                  : AppLocalizations.of(context).pressToStartRecordingHeartbeat,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColors.lotusSubtitle,
              ),
              textAlign: TextAlign.center,
            ),
            (state.selectedRecord != null && MediaQuery.of(context).size.height < 700)
                ? SizedBox(height: 110)
                : SizedBox(),
          ]),
        ),
      );

  Widget _buildPlayer(BuildContext context) => BlocBuilder<MainPatientBloc, MainPatientState>(
        buildWhen: (previousState, currentState) =>
            previousState.selectedRecord != currentState.selectedRecord ||
            previousState.resetPlayer != currentState.resetPlayer ||
            previousState.records != currentState.records,
        builder: (context, state) => state.selectedRecord != null
            ? RecordPlayer(
                record: state.selectedRecord!,
                resetPlayer: state.resetPlayer,
                onStopPressed: () {
                  getBloc(context).add(MainPatientEvent.playerStop());
                },
                onAudioPlayed: () {
                  getBloc(context).add(MainPatientEvent.playerStop());
                },
              )
            : const SizedBox(),
      );

  void _showRecordBottomSheet(
    BuildContext context, {
    RecordEntity? longPressedRecord,
    List<RecordEntity>? records,
  }) async {
    await AppBottomSheet.show(
      context,
      RecordBottomSheet(
        onRenamePressed: () {
          getBloc(context).add(MainPatientEvent.renameClicked());
        },
        onDeletePressed: () {
          getBloc(context).add(MainPatientEvent.deleteClicked());
        },
        onSharePressed: () {
          if (longPressedRecord != null) {
            getBloc(context).add(MainPatientEvent.shareClicked(longPressedRecord));
          }
        },
        onCancelPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showRenameRecordBottomSheet(
    BuildContext context, {
    RecordEntity? longPressedRecord,
    String? name,
  }) async {
    await AppBottomSheet.show(
      context,
      RenameRecordBottomSheet(
        name: (longPressedRecord!.name == null)
            ? DateFormat('dd.MM.yyyy').format(longPressedRecord.date)
            : longPressedRecord.name,
        longPressedRecord: longPressedRecord,
        onChanged: (name) {
          getBloc(context).add(MainPatientEvent.enteredNameChanged(name));
        },
        onSavePressed: () {
          getBloc(context).add(MainPatientEvent.saveClicked());
          // Navigator.pop(context);
        },
        onRenamePressed: () {
          Navigator.pop(context);
          _showRecordBottomSheet(context);
        },
      ),
    );
  }

  void _showDeleteRecordBottomSheet(
    BuildContext context, {
    RecordEntity? longPressedRecord,
    required List<RecordEntity> records,
  }) async {
    await AppBottomSheet.show(
      context,
      DeleteRecordBottomSheet(
        longPressedRecord: longPressedRecord,
        onCancelPressed: () {
          Navigator.pop(context);
        },
        onDeletePressed: () {
          Navigator.pop(context);
          _showRecordBottomSheet(context);
        },
        onConfirmPressed: () {
          getBloc(context).add(MainPatientEvent.confirmDeletingClicked());
          Navigator.pop(context);
        },
        // onConfirmPressed: stat,
      ),
    );
  }

  Future<bool> _onWillPop() async {
    if (Platform.isAndroid) {
      if (await FlutterBlue.instance.isScanning.first) {
        // Also close any open connections you may have.
        await FlutterBlue.instance.stopScan();
        // not sure if 200 milliseconds is enough on every device. Slower devices may need more time.
        await Future.delayed(Duration(milliseconds: 200));
      }
    }
    return true;
  }
}
