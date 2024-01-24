import '../models/label_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class LabelItemWidget extends StatelessWidget {
  LabelItemWidget(
    this.labelItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LabelItemModel labelItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 39.h,
          vertical: 32.v,
        ),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 246.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_the_best_app_for2".tr,
                      style: CustomTextStyles.headlineSmallff0d0140,
                    ),
                    TextSpan(
                      text: "msg_find_your_dream".tr,
                      style: CustomTextStyles.headlineSmallff0d0140,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 18.v),
            SizedBox(
              width: 243.h,
              child: Text(
                "msg_semper_in_cursus".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleSmallGray500SemiBold.copyWith(
                  height: 1.57,
                ),
              ),
            ),
            SizedBox(height: 69.v),
            CustomElevatedButton(
              width: 101.h,
              text: "lbl_next".tr,
            ),
          ],
        ),
      ),
    );
  }
}
