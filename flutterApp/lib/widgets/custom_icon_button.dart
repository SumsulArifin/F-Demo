import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  borderRadius: BorderRadius.circular(4.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillPrimaryTL4 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray20004,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get outlineBlueGrayC => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray3000c.withOpacity(0.12),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              26,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(25.h),
        border: Border.all(
          color: appTheme.gray10003,
          width: 1.h,
        ),
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
  static BoxDecoration get outlineRed => BoxDecoration(
        color: appTheme.red400,
        borderRadius: BorderRadius.circular(33.h),
        border: Border.all(
          color: appTheme.red400.withOpacity(0.2),
          width: 8.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray7000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGrayTL16 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.gray10003,
          width: 1.h,
        ),
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
  static BoxDecoration get outlineGrayTL25 => BoxDecoration(
        color: appTheme.blueGray80002,
        borderRadius: BorderRadius.circular(25.h),
        border: Border.all(
          color: appTheme.gray10003,
          width: 1.h,
        ),
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
}
