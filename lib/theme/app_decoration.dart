import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.7),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200.withOpacity(0.93),
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA200,
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen100,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientGreenAToGreenA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.greenA200,
            appTheme.greenA200.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToGreenA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 0),
          end: Alignment(0, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            appTheme.greenA200,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray200,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.7),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration();
  static BoxDecoration get outlineBlack900011 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              3,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineErrorContainer => BoxDecoration(
        color: appTheme.gray200.withOpacity(0.93),
        border: Border.all(
          color: theme.colorScheme.errorContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray800.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration();
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderBL30 => BorderRadius.vertical(
        bottom: Radius.circular(30.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder34 => BorderRadius.circular(
        34.h,
      );
  static BorderRadius get roundedBorder45 => BorderRadius.circular(
        45.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
