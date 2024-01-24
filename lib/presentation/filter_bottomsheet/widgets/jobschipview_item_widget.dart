import '../models/jobschipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class JobschipviewItemWidget extends StatelessWidget {
  JobschipviewItemWidget(
    this.jobschipviewItemModelObj, {
    Key? key,
    this.onSelectedChipView2,
  }) : super(
          key: key,
        );

  JobschipviewItemModel jobschipviewItemModelObj;

  Function(bool)? onSelectedChipView2;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 14.v,
        right: 16.h,
        bottom: 14.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        jobschipviewItemModelObj.jobs!,
        style: TextStyle(
          color: (jobschipviewItemModelObj.isSelected ?? false)
              ? theme.colorScheme.primary
              : theme.colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgCheckmarkOnprimarycontainer,
        height: 18.adaptSize,
        width: 18.adaptSize,
        margin: EdgeInsets.only(right: 4.h),
      ),
      selected: (jobschipviewItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.deepOrangeA200,
      selectedColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      shape: (jobschipviewItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray300,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                22.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                22.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView2?.call(value);
      },
    );
  }
}
