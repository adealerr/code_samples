part of 'main_patient_bloc.dart';

@freezed
class MainPatientState with _$MainPatientState {
  factory MainPatientState({
    BlocAction? action,
    @Default(DeviceMessageType.notConnected) DeviceMessageType deviceMessage,
    int? deviceCharge,
    RecordEntity? selectedRecord,
    RecordEntity? longPressedRecord,
    @Default(false) bool resetPlayer,
    @Default(false) bool recording,
    @Default('') String recordingDuration,
    @Default('') String errorMessage,
    @Default([]) List<RecordEntity> records,
    @Default('') String name,
  }) = _MainPatientState;
}
