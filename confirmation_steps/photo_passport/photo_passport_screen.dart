import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youz/app/navigation/app_navigator.dart';
import 'package:youz/app/navigation/navigation_action.dart';
import 'package:youz/app/presentation/screens/confirmation_steps/bloc/confirmation_steps_bloc.dart';
import 'package:youz/app/presentation/screens/confirmation_steps/confirmation_step_3/bloc/confirmation_step_3_bloc.dart';
import 'package:youz/app/resources/app_colors.dart';
import 'package:youz/app/resources/app_styles.dart';
import 'package:youz/app/widgets/app_bars/default_appbar.dart';
import 'package:youz/app/widgets/buttons/default_button.dart';
import 'package:youz/app/widgets/others/passport_photo_mask.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/core/ui/widgets/base_bloc_state.dart';
import 'package:youz/domain/enums/confirm_document_part.dart';
import 'package:youz/localization/app_localizations.dart';

import 'bloc/photo_passport_bloc.dart';

class PhotoPassportScreen extends StatefulWidget {
  const PhotoPassportScreen(this.lensDirection);

  final CameraLensDirection lensDirection;

  @override
  _PhotoPassportScreenState createState() => _PhotoPassportScreenState();
}

class _PhotoPassportScreenState
    extends BaseBlocState<PhotoPassportScreen, PhotoPassportBloc>
    with WidgetsBindingObserver {
  CameraController? _cameraController;

  @override
  void initState() {
    _selectCamera(lensDirection: widget.lensDirection);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_cameraController == null || _cameraController!.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      _cameraController!.dispose();
      getBloc(context).add(PhotoPassportEvent.cameraDisposed());
    } else if (state == AppLifecycleState.resumed) {
      _selectCamera();
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    SystemChrome.setSystemUIOverlayStyle(AppStyles.mainStyle);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) =>
      BlocListener<PhotoPassportBloc, PhotoPassportState>(
        listenWhen: (previousState, currentState) =>
            previousState.action != currentState.action,
        listener: (context, state) {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
          if (action is PhotosAreLoaded) {
            context
                .read<ConfirmationStep3Bloc>()
                .add(ConfirmationStep3Event.loadPhotos(photos: state.photos));
            context.read<ConfirmationStepsBloc>().add(
                ConfirmationStepsEvent.photosLoaded(
                    documentParts: state.photos));
          }
          if (action is BackButtonClicked) {
            context
                .read<ConfirmationStepsBloc>()
                .add(ConfirmationStepsEvent.backClicked());
          }
          if (action is StageChanged) {
            if (state.stage == ConfirmDocumentPart.selfieWithMainPage) {
              _selectCamera(lensDirection: CameraLensDirection.front);
            } else {
              _selectCamera(lensDirection: CameraLensDirection.back);
            }
          }
        },
        child: Stack(
          children: [
            Positioned.fill(
              child: _buildCamera(),
            ),
            Positioned.fill(child: _buildMaskOverlay()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildAppBar(context),
                _buildFooter(context),
              ],
            ),
          ],
        ),
      );

  Widget _buildAppBar(context) => Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: DefaultAppbar(
          backButtonColor: AppColors.primary,
          needDivider: false,
          onBackPressed: () {
            getBloc(context).add(PhotoPassportEvent.backClicked());
          },
        ),
      );

  Widget _buildCamera() => BlocBuilder<PhotoPassportBloc, PhotoPassportState>(
        buildWhen: (previous, current) =>
            previous.cameraReady != current.cameraReady,
        builder: (context, state) {
          if (state.cameraReady &&
              _cameraController != null &&
              _cameraController!.value.isInitialized) {
            return Transform.scale(
              scale: _getCameraScale(context),
              child: Center(child: CameraPreview(_cameraController!)),
            );
          } else {
            return Container(color: AppColors.black);
          }
        },
      );

  Widget _buildMaskOverlay() =>
      BlocBuilder<PhotoPassportBloc, PhotoPassportState>(
        buildWhen: (previous, current) => previous.stage != current.stage,
        builder: (context, state) => Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 64),
                color: AppColors.black40,
                child: Padding(
                  padding: state.stage != ConfirmDocumentPart.selfieWithMainPage
                      ? EdgeInsets.symmetric(horizontal: 52)
                      : EdgeInsets.only(left: 24, right: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(),
                      PassportPhotoMask(
                        arrangement: state.stage !=
                                ConfirmDocumentPart.selfieWithMainPage
                            ? Arrangement.vertical
                            : Arrangement.horizontal,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 90,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.startPhotoFooterGradient,
                          AppColors.endPhotoFooterGradient,
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Container(
                    color: AppColors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      );

  double _getCameraScale(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double scale =
        screenSize.aspectRatio * _cameraController!.value.aspectRatio;
    if (scale < 1) scale = 1 / scale;
    return scale;
  }

  Widget _buildFooter(context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(context),
            const SizedBox(height: 8),
            _buildDescription(context),
            const SizedBox(height: 32),
            _buildPhotoButton(context),
          ],
        ),
      );

  Widget _buildTitle(context) =>
      BlocBuilder<PhotoPassportBloc, PhotoPassportState>(
        buildWhen: (previous, current) => previous.stage != current.stage,
        builder: (context, state) {
          return Text(
            _getTitle(context, state.stage),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: AppColors.primary,
            ),
          );
        },
      );

  Widget _buildDescription(context) =>
      BlocBuilder<PhotoPassportBloc, PhotoPassportState>(
        buildWhen: (previous, current) => previous.stage != current.stage,
        builder: (context, state) => Text(
          _getDescription(context, state.stage),
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: AppColors.primary,
          ),
        ),
      );

  Widget _buildPhotoButton(context) =>
      BlocBuilder<PhotoPassportBloc, PhotoPassportState>(
        builder: (context, state) {
          return DefaultButton(
            text: AppLocalizations.of(context).snapPicture,
            onPressed: () async {
              final image = await _cameraController?.takePicture();
              if (image != null) {
                File newImage = File(image!.path);
                getBloc(context).add(PhotoPassportEvent.photoButtonClicked(
                    state.stage, newImage));
              }
              ;
            },
          );
        },
      );

  String _getTitle(context, stage) {
    switch (stage) {
      case ConfirmDocumentPart.mainPage:
        return AppLocalizations.of(context).mainPhotoPassportTitle;
      case ConfirmDocumentPart.registrationPage:
        return AppLocalizations.of(context).registrationPhotoPassportTitle;
      case ConfirmDocumentPart.selfieWithMainPage:
        return AppLocalizations.of(context).selfiePhotoPassportTitle;
      default:
        return '';
    }
  }

  String _getDescription(BuildContext context, stage) {
    switch (stage) {
      case ConfirmDocumentPart.mainPage:
        return AppLocalizations.of(context).mainPhotoPassportDescription;
      case ConfirmDocumentPart.registrationPage:
        return AppLocalizations.of(context)
            .registrationPhotoPassportDescription;
      case ConfirmDocumentPart.selfieWithMainPage:
        return AppLocalizations.of(context).selfiePhotoPassportDescription;
      default:
        return '';
    }
  }

  void _selectCamera({
    CameraLensDirection lensDirection = CameraLensDirection.back,
  }) async {
    CameraDescription? recordCamera;
    List<CameraDescription> availableNowCameras = await availableCameras();
    for (final camera in availableNowCameras) {
      if (lensDirection == camera.lensDirection) {
        recordCamera = camera;
        break;
      }
    }
    if (recordCamera == null) {
      recordCamera = availableNowCameras.first;
    }
    getBloc(context).add(PhotoPassportEvent.cameraDisposed());
    if (_cameraController != null && _cameraController!.value.isInitialized) {
      await _cameraController?.dispose();
    }
    _cameraController = CameraController(
      recordCamera,
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.yuv420,
    );

    _cameraController!.addListener(() {
      if (!_cameraController!.value.isInitialized) {
        getBloc(context).add(PhotoPassportEvent.cameraDisposed());
      }
    });
    try {
      await _cameraController?.initialize();
      getBloc(context).add(PhotoPassportEvent.cameraPrepared());
    } on CameraException catch (e) {
      print('');
    }
  }
}
