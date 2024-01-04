import 'dart:ui';
import 'package:i_scan/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillRed => ElevatedButton.styleFrom(
        backgroundColor: appTheme.red300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientGreenAToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.greenA200,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenAToPrimaryTL10Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.greenA200,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenAToSecondaryContainerDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.greenA200,
            theme.colorScheme.secondaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientGreenAToSecondaryContainerTL10Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.greenA200,
            theme.colorScheme.secondaryContainer,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
