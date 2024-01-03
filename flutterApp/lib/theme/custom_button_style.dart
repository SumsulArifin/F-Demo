import 'dart:ui';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              16.h,
            ),
            topRight: Radius.circular(
              16.h,
            ),
            bottomLeft: Radius.circular(
              4.h,
            ),
            bottomRight: Radius.circular(
              16.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillBlueGrayLR16 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              4.h,
            ),
            topRight: Radius.circular(
              16.h,
            ),
            bottomLeft: Radius.circular(
              4.h,
            ),
            bottomRight: Radius.circular(
              16.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillBlueGrayTL8 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray10003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL15 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL16 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              16.h,
            ),
            topRight: Radius.circular(
              4.h,
            ),
            bottomLeft: Radius.circular(
              16.h,
            ),
            bottomRight: Radius.circular(
              16.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillPrimaryTL20 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillPurple => ElevatedButton.styleFrom(
        backgroundColor: appTheme.purple800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillPurpleTL17 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.purple900.withOpacity(0.08),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.h),
        ),
      );
  static ButtonStyle get fillPurpleTL20 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.purple900.withOpacity(0.08),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
        shadowColor: appTheme.black90001.withOpacity(0.04),
        elevation: 1,
      );
  static ButtonStyle get outlineBlackTL4 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
        shadowColor: appTheme.black90001.withOpacity(0.04),
        elevation: 1,
      );
  static ButtonStyle get outlineBlue => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        side: BorderSide(
          color: appTheme.blue600,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get outlineBlueGrayA => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
        shadowColor: appTheme.blueGray8000a,
        elevation: 12,
      );
  static ButtonStyle get outlineBlueGrayC => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.h),
        ),
        shadowColor: appTheme.blueGray3000c,
        elevation: 26,
      );
  static ButtonStyle get outlineBlueGrayCTL25 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.red400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.h),
        ),
        shadowColor: appTheme.blueGray3000c,
        elevation: 26,
      );
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
