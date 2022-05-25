part of 'confirmation_step_2_bloc.dart';

@freezed
class ConfirmationStep2Event with _$ConfirmationStep2Event {
  factory ConfirmationStep2Event.init() = Init;
  factory ConfirmationStep2Event.numberSeriesChanged(String numberSeries) = NumberSeriesChanged;
  factory ConfirmationStep2Event.issuedByWhomChanged(String text) = IssuedByWhomChanged;
  factory ConfirmationStep2Event.issueDateChanged(DateTime? issueDate) = IssueDateChanged;
  factory ConfirmationStep2Event.onIssueDateClicked() = OnIssueDateClicked;
  factory ConfirmationStep2Event.registrationCityChanged(String city) = RegistrationCityChanged;
  factory ConfirmationStep2Event.registrationStreetChanged(String street) = RegistrationStreetChanged;
  factory ConfirmationStep2Event.registrationHouseChanged(String house) = RegistrationHouseChanged;
  factory ConfirmationStep2Event.registrationFlatChanged(String flat) = RegistrationFlatChanged;
  factory ConfirmationStep2Event.residentialCityChanged(String city) = ResidentialCityChanged;
  factory ConfirmationStep2Event.residentialStreetChanged(String street) = ResidentialStreetChanged;
  factory ConfirmationStep2Event.residentialHouseChanged(String house) = ResidentialHouseChanged;
  factory ConfirmationStep2Event.residentialFlatChanged(String flat) = ResidentialFlatChanged;
  factory ConfirmationStep2Event.onBackClicked() = OnBackClicked;
  factory ConfirmationStep2Event.onCoincidenceCheckBoxClicked() = OnCoincidenceCheckBoxClicked;
  factory ConfirmationStep2Event.onFurtherClicked() = OnFurtherClicked;

}