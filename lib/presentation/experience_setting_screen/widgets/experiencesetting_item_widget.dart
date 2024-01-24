import '../models/experiencesetting_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ExperiencesettingItemWidget extends StatelessWidget {
  ExperiencesettingItemWidget(
    this.experiencesettingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExperiencesettingItemModel experiencesettingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16.v),
          child: CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: experiencesettingItemModelObj?.bag,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 5.v,
            bottom: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                experiencesettingItemModelObj.internshipUIUX!,
                style: CustomTextStyles.titleSmallSemiBold,
              ),
              SizedBox(height: 6.v),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      experiencesettingItemModelObj.smallLabelRegular!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      top: 1.v,
                    ),
                    child: Text(
                      experiencesettingItemModelObj.smallLabelRegular1!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      experiencesettingItemModelObj.zipcode!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
