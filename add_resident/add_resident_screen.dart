import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_24/app/navigation/navigation_actions.dart';
import 'package:service_24/app/resources/app_colors.dart';
import 'package:service_24/app/widgets/buttons/appbar_back_button.dart';
import 'package:service_24/app/widgets/buttons/default_button.dart';
import 'package:service_24/app/widgets/dialogs/loader_dialog.dart';
import 'package:service_24/app/widgets/inputs/default_input.dart';
import 'package:service_24/app/widgets/inputs/phone_input.dart';
import 'package:service_24/app/widgets/list/vehicle_item.dart';
import 'package:service_24/app/widgets/scroll/sliver_footer.dart';
import 'package:service_24/core/bloc/bloc_action.dart';
import 'package:service_24/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:service_24/core/ui/widgets/base_bloc_state.dart';
import 'package:service_24/core/ui/widgets/dialogs.dart';
import 'package:service_24/core/validation/phone.dart';
import 'package:service_24/gen/assets.gen.dart';
import 'package:service_24/localization/app_localizations.dart';

import 'bloc/add_resident_bloc.dart';

class AddResidentScreen extends StatefulWidget {
  @override
  _AddResidentScreenState createState() => _AddResidentScreenState();
}

class _AddResidentScreenState
    extends BaseBlocState<AddResidentScreen, AddResidentBloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) =>
      BlocListener<AddResidentBloc, AddResidentState>(
        listenWhen: (previousState, currentState) =>
            previousState.action != currentState.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateBack) {
            Navigator.pop(context, state.needFetchResidents);
          }
          if (action is ShowMessage) {
            showMessage(context, action: action);
          }
          if (action is ShowLoader) {
            LoaderDialog.show(context: context);
          }
          if (action is HideLoader) {
            Navigator.of(context).pop();
          }
        },
        child: ScrollConfiguration(
          behavior: DisableGrowEffectScrollBehavior(),
          child: CustomScrollView(
            physics: ClampingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildAppBar(context),
                    _buildInfoSection(context),
                     _buildVehicleSection(context),
                    // const SizedBox(height: 28),
                  ],
                ),
              ),
              SliverFooter(
                child: _buildButtons(context),
              ),
            ],
          ),
        ),
      );

  Widget _buildAppBar(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
        child: AppBarBackButton(
          title: AppLocalizations.of(context).addResident,
          spaceBetween: 16,
          titleStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.onBackground1,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      );

  Widget _buildInfoSection(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context).generalInformation,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: AppColors.onBackground1,
              ),
            ),
            const SizedBox(height: 16),
            _buildNameInput(context),
            const SizedBox(height: 16),
            _buildAddressInput(context),
            const SizedBox(height: 16),
            _buildPhoneInput(context),
          ],
        ),
      );

  Widget _buildPhoneInput(BuildContext context) =>
      BlocBuilder<AddResidentBloc, AddResidentState>(
          buildWhen: (previous, current) => previous.phone != current.phone,
          builder: (context, state) {
            String? error;
            switch (state.phone.error) {
              case PhoneValidationError.empty:
                error = AppLocalizations.of(context).youHaveNotEnteredAnything;
                break;
              case PhoneValidationError.invalid:
                error = AppLocalizations.of(context).incorrectDataWereEntered;
                break;
              default:
            }
            return PhoneInput(
              haveError: state.phone.error != null,
              error: error,
              needShowPrefixIcon: false,
              hint: AppLocalizations.of(context).phoneNumber,
              needTitle: false,
              contentPadding: const EdgeInsets.symmetric(vertical: 6),
              number: state.phone.value,
              onChanged: (number) {
                getBloc(context).add(AddResidentEvent.phoneChanged(number));
              },
            );
          });

  Widget _buildAddressInput(BuildContext context) =>
      BlocBuilder<AddResidentBloc, AddResidentState>(
        buildWhen: (previous, current) => previous.address != current.address,
        builder: (context, state) {
          String? error;
          if (state.address.error != null) {
            error = AppLocalizations.of(context).youHaveNotEnteredAnything;
          }
          return DefaultInput(
            haveError: state.address.error != null,
            error: error,
            text: state.address.value,
            maxLines: 1,
            hint: AppLocalizations.of(context).address,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: AppColors.inputText),
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColors.inputHint),
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            onChanged: (text) {
              getBloc(context).add(AddResidentEvent.addressChanged(text));
            },
            // ),
          );
        },
      );

  Widget _buildNameInput(BuildContext context) =>
      BlocBuilder<AddResidentBloc, AddResidentState>(
          buildWhen: (previous, current) => previous.name != current.name,
          builder: (context, state) {
            String? error;
            if (state.address.error != null) {
              error = AppLocalizations.of(context).youHaveNotEnteredAnything;
            }
            return DefaultInput(
              haveError: state.address.error != null,
              error: error,
              text: state.name.value,
              maxLines: 1,
              hint: AppLocalizations.of(context).fio,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: AppColors.inputText),
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.inputHint),
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
              onChanged: (text) {
                getBloc(context).add(AddResidentEvent.nameChanged(text));
              },
            );
          });

  Widget _buildVehicleSection(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22,bottom: 20),
            child: Text(
              AppLocalizations.of(context).vehicles,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: AppColors.onBackground1,
              ),
            ),
          ),
          _buildVehicles(),
          _buildAddVehicleButton(context),
        ],
      );

  Widget _buildVehicles() => BlocBuilder<AddResidentBloc, AddResidentState>(
        buildWhen: (previous, current) => previous.vehicles != current.vehicles,
        builder: (context, state) {
          if (state.vehicles.isEmpty) {
            return SizedBox();
          }
          return ListView.separated(
            itemBuilder: (BuildContext context, int index) => VehicleItem(
              vehicle: state.vehicles[index],
              numberChanged: (String number) {
                getBloc(context).add(AddResidentEvent.vehicleNumberChanged(number,index));
              },
              modelChanged: (String model) {
                getBloc(context).add(AddResidentEvent.vehicleModelChanged(model,index));
              },
              removeClicked: () {
                getBloc(context).add(AddResidentEvent.removeVehicleClicked(index));
              },
            ),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 16),
            itemCount: state.vehicles.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          );
        },
      );

  Widget _buildAddVehicleButton(BuildContext context) =>
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: DefaultButton(
            borderColor: AppColors.blue4,
            color: AppColors.background,
            text: AppLocalizations.of(context).addVehicle,
            textColor: AppColors.onBackground1,
            onPressed: () {
              getBloc(context).add(AddResidentEvent.addVehicleClicked());
            },
      ),
        );

  Widget _buildButtons(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DefaultButton(
              text: AppLocalizations.of(context).save,
              onPressed: () {
                getBloc(context).add(AddResidentEvent.saveClicked());
              },
            ),
            const SizedBox(height: 16),
            DefaultButton(
              borderColor: AppColors.blue4,
              color: AppColors.background,
              text: AppLocalizations.of(context).cancel,
              textColor: AppColors.onBackground1,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
}
