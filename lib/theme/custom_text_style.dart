import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get bodySmallGray600Regular => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGray600_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static get bodySmallRegular => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRoboto => theme.textTheme.bodySmall!.roboto.copyWith(
        fontSize: 8.fSize,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRed300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red300,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumMedium => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
