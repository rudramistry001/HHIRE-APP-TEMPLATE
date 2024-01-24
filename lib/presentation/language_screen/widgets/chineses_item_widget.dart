import '../models/chineses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ChinesesItemWidget extends StatelessWidget {
  ChinesesItemWidget(
    this.chinesesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChinesesItemModel chinesesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Text(
      chinesesItemModelObj.chineses!,
      style: theme.textTheme.titleMedium,
    );
  }
}
