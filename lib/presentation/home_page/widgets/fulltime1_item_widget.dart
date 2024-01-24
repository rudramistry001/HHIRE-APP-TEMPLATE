import '../models/fulltime1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Fulltime1ItemWidget extends StatelessWidget {
  Fulltime1ItemWidget(
    this.fulltime1ItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  Fulltime1ItemModel fulltime1ItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        fulltime1ItemModelObj.fulltime!,
        style: TextStyle(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.64),
          fontSize: 12.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (fulltime1ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.indigo900,
      selectedColor: appTheme.indigo900,
      shape: (fulltime1ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
