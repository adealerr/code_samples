import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_app/app/resources/app_colors.dart';
import 'package:dating_app/domain/entities/profile_entity.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/localization/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vector_math/vector_math.dart' as vm;

class AvatarImage extends StatelessWidget {
  const AvatarImage({
    // required this.width,
    // required this.height,
    required this.profile,
    // this.imageUrl,
  });

  // final double width;
  // final double height;
  final ProfileEntity profile;
  // final String? imageUrl;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 256,
        width: double.infinity,
        child: Stack(
          // fit: StackFit.expand,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Stack(children: [
                _buildShowProgress(),
                _buildImage(context),
                _buildBlurStatus(context),
              ]),
            ),
            Align(alignment: Alignment.topCenter, child: _buildProgressStatus(context)),
          ],
        ),
      );

  Widget _buildImage(BuildContext context) => profile.photos != null
      ? Padding(
          padding: const EdgeInsets.all(6),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: profile.profilePhoto,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        )
      : Padding(
          padding: const EdgeInsets.all(6),
          child: Container(
            decoration: BoxDecoration(color: AppColors.border, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                AppLocalizations.of(context).failedToUploadYourProfilePicture,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.darkGrey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );

  Widget _buildBlurStatus(BuildContext context) => Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                width: double.infinity,
                height: 58,
                decoration: BoxDecoration(
                  color: AppColors.blurBrown,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${profile.name}, ${profile.age}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: AppColors.onAccent,
                        ),
                      ),
                      profile.verified
                          ? Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: SvgPicture.asset(
                                Assets.icons.verifiedCheckbox,
                                width: 22,
                                height: 22,
                                color: AppColors.onAccent,
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Widget _buildShowProgress() => profile.fullness != null
      ? CustomPaint(
          size: Size(double.infinity, double.infinity),
          // size: Size(330, 240),
          painter: _ProgressIndicator(fullness: profile.fullness!),
        )
      : SizedBox();

  Widget _buildProgressStatus(context) => Container(
        // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        width: 140,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.accent,
        ),
        child: Center(
          child: Text(
            AppLocalizations.of(context).completedForPercent(profile.fullness.toString()),
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: AppColors.onAccent,
            ),
          ),
        ),
      );
}

class _ProgressIndicator extends CustomPainter {
  const _ProgressIndicator({
    required this.fullness,
  });

  final int fullness;

  @override
  void paint(Canvas canvas, Size size) {
    final double shortSizeWidth = size.width - 34;
    final double topSideWidth = shortSizeWidth - 140;
    final double shortSizeHeight = size.height - 34;

    final double perimeter = shortSizeWidth + 2 * shortSizeHeight + topSideWidth;
    final double widthPercents = (shortSizeWidth / perimeter) * 100;
    final double topSideWidthPercents = (topSideWidth / perimeter) * 100;
    final double heightPercents = (shortSizeHeight / perimeter) * 100;
    final double doubleProgress = fullness.toDouble();
    // final double progressPercentValue = perimeter / 100;

    final Paint stroke = Paint()
      ..color = AppColors.accent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    Path path = Path()..moveTo(size.width / 2 + 70, 0);

    if (doubleProgress <= topSideWidthPercents / 2) {
      path..lineTo(size.width / 2 + 70 + doubleProgress / 100 * perimeter, 0);
    } else if (doubleProgress <= topSideWidthPercents / 2 + heightPercents) {
      path
        ..lineTo(size.width - 17, 0)
        ..addArc(Rect.fromLTWH(shortSizeWidth, 0, 34, 34), vm.radians(0), vm.radians(-90))
        ..moveTo(size.width, 17)
        ..lineTo(size.width, ((doubleProgress - topSideWidthPercents / 2) / 100 * perimeter) + 17);
    } else if (doubleProgress <= topSideWidthPercents / 2 + heightPercents + widthPercents) {
      path
        ..lineTo(size.width - 17, 0)
        ..addArc(Rect.fromLTWH(shortSizeWidth, 0, 34, 34), vm.radians(0), vm.radians(-90))
        ..moveTo(size.width, 17)
        ..lineTo(size.width, size.height - 17)
        ..addArc(Rect.fromLTWH(shortSizeWidth, shortSizeHeight, 34, 34), vm.radians(0), vm.radians(90))
        ..moveTo(size.width - 17, size.height)
        ..lineTo(
            (widthPercents - (doubleProgress - (topSideWidthPercents / 2 + heightPercents))) / 100 * perimeter + 17,
            size.height);
      canvas.drawPath(path, stroke);
    } else if (doubleProgress <= topSideWidthPercents / 2 + heightPercents + widthPercents + heightPercents) {
      path
        ..lineTo(size.width - 17, 0)
        ..addArc(Rect.fromLTWH(shortSizeWidth, 0, 34, 34), vm.radians(0), vm.radians(-90))
        ..moveTo(size.width, 17)
        ..lineTo(size.width, size.height - 17)
        ..addArc(Rect.fromLTWH(shortSizeWidth, shortSizeHeight, 34, 34), vm.radians(0), vm.radians(90))
        ..moveTo(size.width - 17, size.height)
        ..lineTo(17, size.height)
        ..addArc(Rect.fromLTWH(0, shortSizeHeight, 34, 34), vm.radians(-180), vm.radians(-90))
        ..moveTo(0, size.height - 17)
        ..lineTo(
            0,
            (heightPercents - (doubleProgress - (topSideWidthPercents / 2 + heightPercents + widthPercents))) /
                    100 *
                    perimeter +
                17);
    } else {
      path
        ..lineTo(size.width - 17, 0)
        ..addArc(Rect.fromLTWH(shortSizeWidth, 0, 34, 34), vm.radians(0), vm.radians(-90))
        ..moveTo(size.width, 17)
        ..lineTo(size.width, size.height - 17)
        ..addArc(Rect.fromLTWH(shortSizeWidth, shortSizeHeight, 34, 34), vm.radians(0), vm.radians(90))
        ..moveTo(size.width - 17, size.height)
        ..lineTo(17, size.height)
        ..addArc(Rect.fromLTWH(0, shortSizeHeight, 34, 34), vm.radians(-180), vm.radians(-90))
        ..moveTo(0, size.height - 17)
        ..lineTo(0, 17)
        ..addArc(Rect.fromLTWH(0, 0, 34, 34), vm.radians(-180), vm.radians(90))
        ..moveTo(17, 0)
        ..lineTo(
            (doubleProgress - (topSideWidthPercents / 2 + heightPercents + widthPercents + heightPercents)) /
                    100 *
                    perimeter +
                17,
            0);
    }
    canvas.drawPath(path, stroke);

    // Rect _rect = Rect.fromLTWH(0, 0, size.width, size.height);
    // Radius _radius = Radius.circular(17);
    // RRect _rrect = RRect.fromRectAndRadius(_rect, _radius);
    // canvas.drawRRect(_rrect, _stroke);

    // canvas.drawRRect(Rect.fromLTWH(0, 0, 100, 100), paint)e(
    //   center,
    //   size.width / 2,
    //   Paint()
    //     ..color = _getColor()
    //   // ..color = AppColors.accent
    //     ..style = PaintingStyle.fill,
    // );

    // canvas.drawArc(
    //   Rect.fromCenter(center: center, width: 42, height: 42),
    //   -pi/2,
    //   (batteryLevel != null) ? (-2 * pi *(batteryLevel!/100)) : (-2 * pi),
    //   false,
    //   Paint()
    //     ..style = PaintingStyle.stroke
    //     ..strokeCap = StrokeCap.round
    //     ..color = AppColors.focusedInputBorder
    //     ..strokeWidth = 1,
    // );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
