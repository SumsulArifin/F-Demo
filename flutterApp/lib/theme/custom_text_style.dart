import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargePoppins => theme.textTheme.bodyLarge!.poppins;
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumGray70004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70004,
      );
  static get bodyMediumInterBluegray40004 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray40004,
      );
  static get bodyMediumInterGray90003 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyMediumInterPurple800 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.purple800,
      );
  static get bodyMediumManropeBluegray20001 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: appTheme.blueGray20001,
      );
  static get bodyMediumManropeBluegray400 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumMulishBluegray200 =>
      theme.textTheme.bodyMedium!.mulish.copyWith(
        color: appTheme.blueGray200,
        fontSize: 13.fSize,
      );
  static get bodyMediumMulishOnPrimary =>
      theme.textTheme.bodyMedium!.mulish.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get bodyMediumPlusJakartaSansBlack90001 =>
      theme.textTheme.bodyMedium!.plusJakartaSans.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumPoppinsGray60002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray60002,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmall9_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmallBlue600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue600,
        fontSize: 8.fSize,
      );
  static get bodySmallBluegray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodySmallBluegray4000111 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray4000111_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray4000111_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray4000111_3 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray4000111_4 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 11.fSize,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 8.fSize,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallGray40002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40002,
      );
  static get bodySmallGray50006 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50006,
        fontSize: 9.fSize,
      );
  static get bodySmallGray60002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60002,
        fontSize: 8.fSize,
      );
  static get bodySmallGray60002_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodySmallGray70002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70002,
        fontSize: 9.fSize,
      );
  static get bodySmallGray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallGray90004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90004,
      );
  static get bodySmallGray90004_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90004.withOpacity(0.5),
      );
  static get bodySmallInterBluegray40004 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray40004,
      );
  static get bodySmallInterBluegray40004_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray40004,
      );
  static get bodySmallInterGray70001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray70001,
        fontSize: 10.fSize,
      );
  static get bodySmallInterGray70005 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray70005,
        fontSize: 8.fSize,
      );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallInterPurple800 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.purple800,
      );
  static get bodySmallManropeBluegray800 =>
      theme.textTheme.bodySmall!.manrope.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodySmallMulishGray60001 =>
      theme.textTheme.bodySmall!.mulish.copyWith(
        color: appTheme.gray60001,
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimary11 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimary11_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodySmallOnPrimary_2 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallPlusJakartaSansBlack90001 =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
      );
  static get bodySmallPlusJakartaSansBlack900018 =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: appTheme.black90001,
        fontSize: 8.fSize,
      );
  static get bodySmallPlusJakartaSansBluegray40002 =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 11.fSize,
      );
  static get bodySmallPlusJakartaSansBluegray90003 =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: appTheme.blueGray90003,
        fontSize: 10.fSize,
      );
  static get bodySmallPlusJakartaSansBluegray90003_1 =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: appTheme.blueGray90003,
      );
  static get bodySmallPlusJakartaSansGray40003 =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: appTheme.gray40003,
      );
  static get bodySmallPlusJakartaSansPrimary =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
  static get bodySmallPlusJakartaSansPrimary11 =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 11.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
  static get bodySmallPrimary10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary11 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 11.fSize,
      );
  static get bodySmallPrimary8 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
  static get bodySmallPrimary8_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
  static get bodySmallPrimary8_2 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
  static get bodySmallPrimary8_3 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineMediumPoppinsGray900 =>
      theme.textTheme.headlineMedium!.poppins.copyWith(
        color: appTheme.gray900,
        fontSize: 26.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmall24 => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 24.fSize,
      );
  static get headlineSmallBluegray90002 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 24.fSize,
      );
  static get headlineSmallInterGray90003 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.gray90003,
        fontSize: 24.fSize,
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 24.fSize,
      );
  static get headlineSmallOnPrimary24 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 24.fSize,
      );
  static get headlineSmallOnPrimary_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  // Inter text style
  static get interPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static get interPrimaryBold => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  // Label text style
  static get labelLargeBluegray90005 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90005,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 13.fSize,
      );
  static get labelLargeGray9000213 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 13.fSize,
      );
  static get labelLargeGray9000213_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 13.fSize,
      );
  static get labelLargeGray90002Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray90002SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90002_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get labelLargeInterBlack90001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black90001,
      );
  static get labelLargeInterBluegray40003 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray40003,
      );
  static get labelLargeInterBluegray40003SemiBold =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray40003,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterBluegray40003_1 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray40003,
      );
  static get labelLargeInterBluegray80001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray80001,
      );
  static get labelLargeInterGray90003 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInterGray90003SemiBold =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterGray90003SemiBold_1 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterOnPrimary =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelLargeManropeBlue600 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.blue600,
      );
  static get labelLargeManropePrimary =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeMulishBlack90001 =>
      theme.textTheme.labelLarge!.mulish.copyWith(
        color: appTheme.black90001.withOpacity(0.3),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMulishGray20003 =>
      theme.textTheme.labelLarge!.mulish.copyWith(
        color: appTheme.gray20003,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMulishGray500 =>
      theme.textTheme.labelLarge!.mulish.copyWith(
        color: appTheme.gray500,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMulishOnPrimary =>
      theme.textTheme.labelLarge!.mulish.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeNunitoSansLightgreenA700 =>
      theme.textTheme.labelLarge!.nunitoSans.copyWith(
        color: appTheme.lightGreenA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePlusJakartaSansBlack90001 =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePlusJakartaSansBluegray90003 =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: appTheme.blueGray90003,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumGray50004 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50004,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray5000410 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50004,
        fontSize: 10.fSize,
      );
  static get labelMediumInterBluegray40001 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumInterPrimary =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPlusJakartaSansGray800 =>
      theme.textTheme.labelMedium!.plusJakartaSans.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPlusJakartaSansOnPrimary =>
      theme.textTheme.labelMedium!.plusJakartaSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsBluegray40001 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPoppinsGray800 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray800,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsGray90002 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsGray90002Medium =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsGray90002Medium_1 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsGray90002Medium_2 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsOnPrimary =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPoppinsOnPrimaryBold =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPoppinsOnPrimaryBold_1 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPoppinsOnPrimaryBold_2 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPoppinsOnPrimaryBold_3 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPoppinsOnPrimaryMedium =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsPrimary =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallInterBluegray10001 =>
      theme.textTheme.labelSmall!.inter.copyWith(
        color: appTheme.blueGray10001,
        fontSize: 9.fSize,
      );
  static get labelSmallInterPrimary =>
      theme.textTheme.labelSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 9.fSize,
      );
  static get labelSmallPoppinsPrimary =>
      theme.textTheme.labelSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Plus text style
  static get plusJakartaSansGray50002 => TextStyle(
        color: appTheme.gray50002,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).plusJakartaSans;
  // Poppins text style
  static get poppinsGray50001 => TextStyle(
        color: appTheme.gray50001,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsGray50006 => TextStyle(
        color: appTheme.gray50006,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsGray600 => TextStyle(
        color: appTheme.gray600,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsGray600b2 => TextStyle(
        color: appTheme.gray600B2,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsGray70002 => TextStyle(
        color: appTheme.gray70002,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsGray800 => TextStyle(
        color: appTheme.gray800,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsPrimaryRegular => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  // Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryBold22 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryRegular => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePlusJakartaSansBluegray90003 =>
      theme.textTheme.titleLarge!.plusJakartaSans.copyWith(
        color: appTheme.blueGray90003,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePlusJakartaSansOnPrimary =>
      theme.textTheme.titleLarge!.plusJakartaSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 16.fSize,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumManropeBluegray800 =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: appTheme.blueGray800,
        fontSize: 16.fSize,
      );
  static get titleMediumManropeOnPrimary =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMulishBlack900 =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMulishBlack90001 =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.black90001.withOpacity(0.3),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMulishBlack90001SemiBold =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansBluegray90001 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumNunitoSansOnPrimary =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumNunitoSansOnPrimaryBold =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPlusJakartaSansBlack90001 =>
      theme.textTheme.titleMedium!.plusJakartaSans.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPlusJakartaSansBluegray90003 =>
      theme.textTheme.titleMedium!.plusJakartaSans.copyWith(
        color: appTheme.blueGray90003,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPlusJakartaSansBluegray90003Bold =>
      theme.textTheme.titleMedium!.plusJakartaSans.copyWith(
        color: appTheme.blueGray90003,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray90001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterBluegray80001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 14.fSize,
      );
  static get titleSmallInterGray90003 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray90003,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterOnPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterPurple800 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.purple800,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallManropeBluegray90004 =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMulishBlack90001 =>
      theme.textTheme.titleSmall!.mulish.copyWith(
        color: appTheme.black90001.withOpacity(0.3),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMulishBlack90001SemiBold =>
      theme.textTheme.titleSmall!.mulish.copyWith(
        color: appTheme.black90001.withOpacity(0.3),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallNunitoSansBluegray90001 =>
      theme.textTheme.titleSmall!.nunitoSans.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallNunitoSansOnPrimary =>
      theme.textTheme.titleSmall!.nunitoSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoSansTeal300 =>
      theme.textTheme.titleSmall!.nunitoSans.copyWith(
        color: appTheme.teal300,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
      );
  static get titleSmallOnPrimarySemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPlusJakartaSansBlack90001 =>
      theme.textTheme.titleSmall!.plusJakartaSans.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get titleSmallRedA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA200,
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
