import '../models/eightynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class EightynineItemWidget extends StatelessWidget {
  EightynineItemWidget(
    this.eightynineItemModelObj, {
    Key? key,
    this.onTapLabel,
  }) : super(
          key: key,
        );

  EightynineItemModel eightynineItemModelObj;

  VoidCallback? onTapLabel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 32.v,
        ),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 273.h,
              margin: EdgeInsets.only(left: 6.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_better".tr,
                      style: CustomTextStyles.headlineSmallff0d0140,
                    ),
                    TextSpan(
                      text: "msg_future_is_starting".tr,
                      style: CustomTextStyles.headlineSmallff0d0140,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 14.v),
            Container(
              width: 243.h,
              margin: EdgeInsets.symmetric(horizontal: 17.h),
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
              onPressed: () {
                onTapLabel!.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
