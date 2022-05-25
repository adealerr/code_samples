part of 'main_patient_bloc.dart';

@freezed
class MainPatientEvent with _$MainPatientEvent {
  factory MainPatientEvent.init() = Init;
  factory MainPatientEvent.enteredNameChanged(String name) = EnteredNameChanged;
  factory MainPatientEvent.profileClicked() = ProfileClicked;
  factory MainPatientEvent.saveClicked() = SaveClicked;
  factory MainPatientEvent.recordSelected(RecordEntity record) = RecordSelected;
  factory MainPatientEvent.lotusClicked() = LotusClicked;
  factory MainPatientEvent.confirmDeletingClicked() = ConfirmDeletingClicked;
  factory MainPatientEvent.recordLongPressed(RecordEntity record) = RecordLongPressed;
  factory MainPatientEvent.shareClicked(RecordEntity record) = ShareClicked;
  factory MainPatientEvent.renameClicked() = RenameClicked;
  factory MainPatientEvent.deleteClicked() = DeleteClicked;
  factory MainPatientEvent.playerStop() = PlayerStop;
  factory MainPatientEvent.playerStart() = PlayerStart;
  factory MainPatientEvent.recordingDurationChanged(Duration duration) = RecordingDurationChanged;
  factory MainPatientEvent.deviceStatusChanged(DeviceStatus status) = DeviceStatusChanged;
  factory MainPatientEvent.deviceChargeChanged(int? charge) = DeviceChargeChanged;
  factory MainPatientEvent.sendingRecordDataErrorReceived() = SendingRecordDataErrorReceived;
}

class ShowRecordBottomSheet extends BlocAction {}

class ShowRenameRecordBottomSheet extends BlocAction {}

class ShowDeleteRecordBottomSheet extends BlocAction {}
