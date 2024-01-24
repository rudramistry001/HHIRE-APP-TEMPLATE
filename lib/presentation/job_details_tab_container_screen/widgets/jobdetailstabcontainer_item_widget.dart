import '../models/jobdetailstabcontainer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class JobdetailstabcontainerItemWidget extends StatelessWidget {
  JobdetailstabcontainerItemWidget(
    this.jobdetailstabcontainerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JobdetailstabcontainerItemModel jobdetailstabcontainerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 67.h,
      child: Column(
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillGreen,
            child: CustomImageView(
              imagePath: jobdetailstabcontainerItemModelObj?.wallet,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            jobdetailstabcontainerItemModelObj.salary!,
            style: CustomTextStyles.labelLargeGray500_1,
          ),
          SizedBox(height: 9.v),
          Text(
            jobdetailstabcontainerItemModelObj.price!,
            style: CustomTextStyles.titleSmallSemiBold,
          ),
        ],
      ),
    );
  }
}
