import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10003,
      );
  static BoxDecoration get fillBluegray50 => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: appTheme.blueGray900.withOpacity(0.6),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray10004 => BoxDecoration(
        color: appTheme.gray10004,
      );
  static BoxDecoration get fillGray20004 => BoxDecoration(
        color: appTheme.gray20004,
      );
  static BoxDecoration get fillGray40005 => BoxDecoration(
        color: appTheme.gray40005,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray5002 => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillGray5004 => BoxDecoration(
        color: appTheme.gray5004,
      );
  static BoxDecoration get fillGray5005 => BoxDecoration(
        color: appTheme.gray5005,
      );
  static BoxDecoration get fillGray5006 => BoxDecoration(
        color: appTheme.gray5006,
      );
  static BoxDecoration get fillGray5007 => BoxDecoration(
        color: appTheme.gray5007,
      );
  static BoxDecoration get fillGray5008 => BoxDecoration(
        color: appTheme.gray5008,
      );
  static BoxDecoration get fillGray5009 => BoxDecoration(
        color: appTheme.gray5009,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green800,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.5),
      );
  static BoxDecoration get fillOrangeA => BoxDecoration(
        color: appTheme.orangeA200,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.56),
      );
  static BoxDecoration get fillPrimary2 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.08),
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple900.withOpacity(0.08),
      );
  static BoxDecoration get fillPurple200 => BoxDecoration(
        color: appTheme.purple200,
      );
  static BoxDecoration get fillPurple50 => BoxDecoration(
        color: appTheme.purple50,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red50001,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueAToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blueA40023.withOpacity(0.17),
            appTheme.gray10000,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.01, 0.36),
          end: Alignment(1, 0.36),
          colors: [
            appTheme.gray10002,
            appTheme.blueGray10003.withOpacity(0),
            appTheme.blue600,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1.64,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1.62,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900011 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900012 => BoxDecoration();
  static BoxDecoration get outlineBlack900013 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.06),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1.45,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900014 => BoxDecoration(
        color: appTheme.gray10002,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1.67,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900015 => BoxDecoration(
        color: appTheme.gray10002,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1.66,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueA => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray80019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGrayA => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray2003a.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              16,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGrayF => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray5003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              12.68,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray2003a => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray2003a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              19,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray8000a => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray8000a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray80019 => BoxDecoration(
        color: appTheme.gray10005,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray80019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray10004 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.gray10004,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray70011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray600 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray600.withOpacity(0.65),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray6001 => BoxDecoration();
  static BoxDecoration get outlineGrayE => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray5001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: appTheme.blueGray10003,
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray6001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.08),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 4.h,
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray7001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary2 => BoxDecoration(
        color: appTheme.blueGray10003,
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 4.h,
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray7001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get circleBorder66 => BorderRadius.circular(
        66.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL16 => BorderRadius.only(
        topLeft: Radius.circular(4.h),
        topRight: Radius.circular(16.h),
        bottomLeft: Radius.circular(16.h),
        bottomRight: Radius.circular(16.h),
      );
  static BorderRadius get customBorderBL22 => BorderRadius.vertical(
        bottom: Radius.circular(22.h),
      );
  static BorderRadius get customBorderTL16 => BorderRadius.only(
        topLeft: Radius.circular(16.h),
        topRight: Radius.circular(16.h),
        bottomLeft: Radius.circular(16.h),
        bottomRight: Radius.circular(4.h),
      );
  static BorderRadius get customBorderTL161 => BorderRadius.only(
        topLeft: Radius.circular(16.h),
        topRight: Radius.circular(4.h),
        bottomLeft: Radius.circular(16.h),
        bottomRight: Radius.circular(16.h),
      );
  static BorderRadius get customBorderTL25 => BorderRadius.vertical(
        top: Radius.circular(25.h),
      );
  static BorderRadius get customBorderTL4 => BorderRadius.vertical(
        top: Radius.circular(4.h),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );
  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        top: Radius.circular(8.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder27 => BorderRadius.circular(
        27.h,
      );
  static BorderRadius get roundedBorder36 => BorderRadius.circular(
        36.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder54 => BorderRadius.circular(
        54.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
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
    