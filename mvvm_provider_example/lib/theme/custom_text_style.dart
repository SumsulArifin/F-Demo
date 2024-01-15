import 'package:flutter/material.dart';
import 'package:mvvm_provider_example/theme/theme_helper.dart';
import 'package:mvvm_provider_example/utils/view_utils/size_utils.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline text style
  static TextStyle get headlineSmallArialGray200 => theme.textTheme.headlineSmall!.arial.copyWith(
    color: appTheme.gray200,
  );

  // Label text style
  static TextStyle get labelLargeMontserratBlack900 => theme.textTheme.labelLarge!.montserrat.copyWith(
    color: appTheme.black900,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get labelLargeOpenSansGray900 => theme.textTheme.labelLarge!.openSans.copyWith(
    color: appTheme.gray900.withOpacity(0.56),
    fontSize: 13.fSize,
  );

  static TextStyle get labelLargeOpenSansGray90013 => theme.textTheme.labelLarge!.openSans.copyWith(
    color: appTheme.gray900.withOpacity(0.53),
    fontSize: 13.fSize,
  );

  static TextStyle get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.primaryContainer,
  );

  // Title text style
  static TextStyle get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.black900.withOpacity(0.72),
  );

  static TextStyle get titleSmallPoppins => theme.textTheme.titleSmall!.poppins.copyWith(
    fontWeight: FontWeight.w600,
  );
}

extension TextStyleExtensions on TextStyle {
  TextStyle get kaushanScript => copyWith(
    fontFamily: 'Kaushan Script',
  );

  TextStyle get abhayaLibreExtraBold => copyWith(
    fontFamily: 'Abhaya Libre ExtraBold',
  );

  TextStyle get montserrat => copyWith(
    fontFamily: 'Montserrat',
  );

  TextStyle get poppins => copyWith(
    fontFamily: 'Poppins',
  );

  TextStyle get arial => copyWith(
    fontFamily: 'Arial',
  );

  TextStyle get openSans => copyWith(
    fontFamily: 'Open Sans',
  );
}
