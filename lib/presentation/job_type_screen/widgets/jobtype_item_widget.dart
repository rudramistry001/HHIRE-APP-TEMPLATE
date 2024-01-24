import '../models/jobtype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class JobtypeItemWidget extends StatelessWidget {
  JobtypeItemWidget(
    this.jobtypeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JobtypeItemModel jobtypeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      width: 156.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomIconButton(
            height: 64.adaptSize,
            width: 64.adaptSize,
            padding: EdgeInsets.all(16.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: jobtypeItemModelObj?.work,
            ),
          ),
          SizedBox(height: 29.v),
          Text(
            jobtypeItemModelObj.findAJob!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 9.v),
          SizedBox(
            width: 120.h,
            child: Text(
              jobtypeItemModelObj.itSEasyToFind!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeGray500_1.copyWith(
                height: 1.67,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
