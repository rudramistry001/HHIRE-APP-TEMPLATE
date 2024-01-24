import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';

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
                  color: appTheme.gray100,
                  borderRadius: BorderRadius.circular(8.h),
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
        borderRadius: BorderRadius.circular(32.h),
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow50,
        borderRadius: BorderRadius.circular(32.h),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green600,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple400,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange500,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillGrayTL16 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillOnPrimaryContainerTL24 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(24.h),
      );
}
