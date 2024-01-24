import '../models/specialization_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SpecializationItemWidget extends StatelessWidget {
  SpecializationItemWidget(
    this.specializationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SpecializationItemModel specializationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: specializationItemModelObj?.designCreative,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
            ),
            child: Text(
              specializationItemModelObj.designCreative1!,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
