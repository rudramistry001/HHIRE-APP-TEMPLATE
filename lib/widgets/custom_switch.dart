import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  bool? value;

  final Function(bool) onChange;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => CupertinoSwitch(
        value: value ?? false,
        trackColor: appTheme.green600,
        thumbColor: (value ?? false)
            ? theme.colorScheme.onPrimaryContainer.withOpacity(1)
            : theme.colorScheme.onPrimaryContainer.withOpacity(1),
        activeColor: appTheme.green600,
        onChanged: (value) {
          onChange(value);
        },
      );
}
