import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:baby_knock/app/navigation/navigation_actions.dart';
import 'package:baby_knock/core/bloc/bloc_action.dart';
import 'package:baby_knock/core/enums/device_message_type.dart';
import 'package:baby_knock/core/enums/message_type.dart';
import 'package:baby_knock/core/failures.dart';
import 'package:baby_knock/data/gateways/local/device_gateway.dart';
import 'package:baby_knock/data/gateways/local/preferences_local_gateway.dart';
import 'package:baby_knock/data/repositories/mothers_repository.dart';
import 'package:baby_knock/data/repositories/sounds_repository.dart';
import 'package:baby_knock/domain/entities/record_entity.dart';
import 'package:baby_knock/localization/app_localizations.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:pausable_timer/pausable_timer.dart';

part 'main_patient_bloc.freezed.dart';
part 'main_patient_event.dart';
part 'main_patient_state.dart';

class MainPatientBloc extends Bloc<MainPatientEvent, MainPatientState> {
  MainPatientBloc({
    required this.preferencesLocalGateway,
    required this.mothersRepository,
    required this.soundsRepository,
    required this.deviceGateway,
    required this.localizations,
  }) : super(MainPatientState()) {
    this.add(MainPatientEvent.init());
  }

  List<RecordEntity> allRecords = [];

  MothersRepository mothersRepository;
  SoundsRepository soundsRepository;
  PreferencesLocalGateway preferencesLocalGateway;
  DeviceGateway deviceGateway;
  AppLocalizations localizations;

  List<String> _recordData = [];
  List<List<int>> _allRecordData = [];
  Timer? _recordTimer;
  Timer? _connectTimer;
  PausableTimer? _sendingRecordDataTimer;
  Duration _recordingDuration = Duration(seconds: 1);

  @override
  Stream<MainPatientState> mapEventToState(
    MainPatientEvent event,
  ) async* {
    yield* event.when(
      init: _init,
      enteredNameChanged: _enteredNameChanged,
      saveClicked: _saveClicked,
      confirmDeletingClicked: _confirmDeletingClicked,
      shareClicked: _shareClicked,
      recordSelected: _recordSelected,
      recordLongPressed: _recordLongPressed,
      renameClicked: _renameClicked,
      lotusClicked: _lotusClicked,
      profileClicked: _profileClicked,
      deleteClicked: _deleteClicked,
      playerStop: _playerStop,
      playerStart: _playerStart,
      recordingDurationChanged: _recordingDurationChanged,
      deviceStatusChanged: _deviceStatusChanged,
      sendingRecordDataErrorReceived: _sendingRecordDataErrorReceived,
      deviceChargeChanged: _deviceChargeChanged,
    );
  }

  @override
  Future<void> close() async {
    _recordTimer?.cancel();
    _connectTimer?.cancel();
    _sendingRecordDataTimer?.cancel();
    return super.close();
  }

  Stream<MainPatientState> _init() async* {
    yield* _fetchRecords(needShowLoader: true);
    deviceGateway.init();
    deviceGateway.dataStream.listen((data) {
      _recordData.add(Uint8List.fromList(data).toString());
      if (data.isNotEmpty) {
        // _recordData.add(Uint8List.fromList(data).toString());
        _allRecordData.add(data);
      }
    });
    deviceGateway.statusStream.listen((data) {
      this.add(MainPatientEvent.deviceStatusChanged(data));
    });
    deviceGateway.statusStream.listen((data) {
      this.add(MainPatientEvent.deviceStatusChanged(data));
    });
    deviceGateway.chargeStream.listen((data) {
      this.add(MainPatientEvent.deviceChargeChanged(data));
    });
  }

  Stream<MainPatientState> _enteredNameChanged(String name) async* {
    yield state.copyWith(name: name);
  }

  Stream<MainPatientState> _saveClicked() async* {
    RecordEntity renamedSelectedRecord = state.longPressedRecord!;
    String oldName = renamedSelectedRecord.name;
    if (oldName != state.name && state.name.isNotEmpty) {
      int recordId = renamedSelectedRecord.id;
      String newName = state.name;

      var result = await mothersRepository.renameRecord(
        recordId: recordId,
        name: newName,
      );
      result.fold(
          (data) => {
                if (data == true) {renamedSelectedRecord.name = state.name}
              },
          (error) => _handleError(error));
      yield state.copyWith(longPressedRecord: renamedSelectedRecord, name: '', action: NavigateBack());
    } else {
      yield state.copyWith(action: NavigateBack(), name: '');
    }
  }

  Stream<MainPatientState> _confirmDeletingClicked() async* {
    List<RecordEntity> records = List.from(state.records);

    int recordId = state.longPressedRecord!.id;

    var result = await mothersRepository.deleteRecord(recordId: recordId);
    result.fold(
      (unit) => {
        if (unit == true)
          {
            records.remove(state.longPressedRecord),
            if (state.longPressedRecord == state.selectedRecord) {this.add(PlayerStop())}
          }
      },
      (error) => _handleError(error),
    );
    yield state.copyWith(records: records);
  }

  Stream<MainPatientState> _shareClicked(RecordEntity record) async* {
    HttpClientRequest request = await HttpClient().getUrl(Uri.parse(record.path));
    HttpClientResponse response = await request.close();
    Uint8List bytes = await consolidateHttpClientResponseBytes(response);
    await Share.file(record.name, '${record.name}.wav', bytes, 'audio/wav');
  }

  Stream<MainPatientState> _recordSelected(RecordEntity record) async* {
    if (state.selectedRecord == record) {
      yield state.copyWith(resetPlayer: !state.resetPlayer);
    } else {
      yield state.copyWith(selectedRecord: record);
    }
  }

  Stream<MainPatientState> _recordLongPressed(RecordEntity record) async* {
    yield state.copyWith(longPressedRecord: record, action: ShowRecordBottomSheet(), name: '');
  }

  Stream<MainPatientState> _renameClicked() async* {
    yield state.copyWith(action: ShowRenameRecordBottomSheet());
  }

  Stream<MainPatientState> _recordingDurationChanged(Duration recordingDuration) async* {
    _recordingDuration = recordingDuration;
    yield state.copyWith(recordingDuration: _recordingDurationString);
  }

  String get _recordingDurationString {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String oneDigit(int n) {
      return "$n";
    }

    String oneDigitMinutes = oneDigit(_recordingDuration.inMinutes.remainder(60));
    String twoDigitsMinutes = twoDigits(_recordingDuration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(_recordingDuration.inSeconds.remainder(60));
    if (_recordingDuration.inHours > 0)
      return "${twoDigits(_recordingDuration.inHours)}:$oneDigitMinutes:$twoDigitSeconds";
    else if (_recordingDuration.inMinutes >= 10)
      return "$twoDigitsMinutes:$twoDigitSeconds";
    else
      return "$oneDigitMinutes:$twoDigitSeconds";
  }

  Stream<MainPatientState> _lotusClicked() async* {
    List<List<int>> currentData = List.from(_allRecordData);
    bool recording = !state.recording;
    if (recording) {
      switch (state.deviceMessage) {
        case DeviceMessageType.connected:
          yield* _startRecording();
          break;
        case DeviceMessageType.connecting:
          yield state.copyWith(
            action: ShowMessage(
              message: localizations.deviceIsConnectingPleaseWait,
              messageType: MessageType.customMessage,
            ),
          );
          break;
        case DeviceMessageType.notConnected:
          yield state.copyWith(
            action: ShowMessage(
              message: localizations.connectDevice,
              messageType: MessageType.customMessage,
            ),
          );
          break;
      }
    } else {
      yield* _stopRecording(needSendData: true);
    }
  }

  Stream<MainPatientState> _profileClicked() async* {
    yield state.copyWith(action: NavigateToPatientSettings(recordsLength: state.records.length));
  }

  Stream<MainPatientState> _deleteClicked() async* {
    yield state.copyWith(action: ShowDeleteRecordBottomSheet());
  }

  Stream<MainPatientState> _playerStop() async* {
    yield state.copyWith(selectedRecord: null);
  }

  Stream<MainPatientState> _playerStart() async* {}

  Stream<MainPatientState> _deviceStatusChanged(DeviceStatus status) async* {
    switch (status) {
      case DeviceStatus.notFound:
        yield state.copyWith(deviceMessage: DeviceMessageType.notConnected);
        if (state.recording) {
          yield* _stopRecording();
        }
        break;
      case DeviceStatus.notConnected:
        yield state.copyWith(deviceMessage: DeviceMessageType.notConnected);
        if (state.recording) {
          yield* _stopRecording();
        }
        break;
      case DeviceStatus.connecting:
        yield state.copyWith(deviceMessage: DeviceMessageType.connecting);
        break;
      case DeviceStatus.connected:
        yield state.copyWith(deviceMessage: DeviceMessageType.connecting);
        break;

      case DeviceStatus.readyToUse:
        yield state.copyWith(deviceMessage: DeviceMessageType.connected);
        break;
    }
  }

  Stream<MainPatientState> _sendingRecordDataErrorReceived() async* {
    yield state.copyWith(
      action: ShowMessage(
        title: localizations.error,
        message: localizations.failedToSendDataToServer,
        messageType: MessageType.customMessage,
      ),
    );
    yield* _stopRecording();
  }

  Stream<MainPatientState> _deviceChargeChanged(int? charge) async* {
    yield state.copyWith(deviceCharge: charge);
  }

  Stream<MainPatientState> _handleError(Failure? error) async* {
    if (error is RequestFailure) {
      switch (error.code) {
        case 404:
          yield state.copyWith(errorMessage: localizations.userDoesNotExist);
          break;
        case 403:
          yield state.copyWith(errorMessage: localizations.invalidLoginOrPassword);
          break;
        default:
          yield state.copyWith(action: ShowMessage(messageType: MessageType.serverError));
      }
    }
    if (error is NetworkFailure) {
      yield state.copyWith(action: ShowMessage(messageType: MessageType.noConnection));
    }
    if (error is UndefinedFailure) {
      yield state.copyWith(action: ShowMessage(messageType: MessageType.serverError));
    }
  }

  Stream<MainPatientState> _fetchRecords({bool needShowLoader = true}) async* {
    if (needShowLoader) {
      yield state.copyWith(action: ShowLoader());
    }
    var result = await mothersRepository.getMomRecords();
    result.fold(
      (records) {
        allRecords = records;
      },
      (error) => _handleError(error),
    );
    allRecords.sort((min, max) => max.date.compareTo(min.date));
    if (needShowLoader) {
      yield state.copyWith(action: HideLoader(), records: allRecords);
    } else {
      yield state.copyWith(records: allRecords);
    }
  }

  void _startRecordingTimer() {
    if (!(_recordTimer?.isActive ?? false)) {
      _recordTimer?.cancel();
      _recordingDuration = Duration.zero;
      this.add(MainPatientEvent.recordingDurationChanged(_recordingDuration));
      _recordTimer = Timer.periodic(Duration(seconds: 1), (timer) {
        if (state.recording) {
          this.add(MainPatientEvent.recordingDurationChanged(_recordingDuration + Duration(seconds: 1)));
        }
      });
    }
  }

  void _startSendingRecordDataTimer() {
    if (!(_sendingRecordDataTimer?.isActive ?? false)) {
      _sendingRecordDataTimer?.cancel();

      _sendingRecordDataTimer = PausableTimer(Duration(seconds: 5), () async {
        _sendingRecordDataTimer?.pause();
        if (_recordData.isNotEmpty) {
          List<String> data = List.from(_recordData);
          _recordData.clear();

          Either<bool, Failure> result = await soundsRepository.sendStream(data: data);

          bool? success;
          result.fold(
            (data) => success = data,
            (error) => null,
          );
          if (success != true) {
            this.add(MainPatientEvent.sendingRecordDataErrorReceived());
          } else {
            _sendingRecordDataTimer?.reset();
            _sendingRecordDataTimer?.start();
          }
        } else {
          _sendingRecordDataTimer?.reset();
          _sendingRecordDataTimer?.start();
        }
      });
      _sendingRecordDataTimer?.start();
    }
  }

  Stream<MainPatientState> _startRecording() async* {
    _allRecordData.clear();
    deviceGateway.startReadingData();
    _startRecordingTimer();
    _startSendingRecordDataTimer();
    yield state.copyWith(recording: true, selectedRecord: null);
  }

  Stream<MainPatientState> _stopRecording({
    bool needSendData = false,
  }) async* {
    MainPatientState state = this.state;
    deviceGateway.stopReadingData();
    _recordTimer?.cancel();
    _sendingRecordDataTimer?.cancel();
    _recordingDuration = Duration.zero;
    state = state.copyWith(recording: false, selectedRecord: null, recordingDuration: _recordingDurationString);
    yield state;

    if (needSendData) {
      state = state.copyWith(action: ShowLoader());
      yield state;

      bool success = true;
      if (_recordData.isNotEmpty) {
        List<String> data = List.from(_recordData);
        _recordData.clear();

        Either<bool, Failure> sendStreamResult = await soundsRepository.sendStream(data: data);
        sendStreamResult.fold(
          (response) => success = response,
          (error) => null,
        );
        if (success != true) {
          this.add(MainPatientEvent.sendingRecordDataErrorReceived());
        }
      }
      if (success == true) {
        Either<bool, Failure> saveSoundResult = await soundsRepository.saveSound();
        saveSoundResult.fold(
          (response) => success = response,
          (error) => null,
        );
        if (success != true) {
          this.add(MainPatientEvent.sendingRecordDataErrorReceived());
        }
      }
      state = state.copyWith(action: HideLoader());
      yield state;
      if (success == true) {
        yield* _fetchRecords(needShowLoader: true);
      }
    }
  }
}
