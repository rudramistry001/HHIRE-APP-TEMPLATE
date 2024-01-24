import '../models/ninetytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class NinetytwoItemWidget extends StatelessWidget {
  NinetytwoItemWidget(
    this.ninetytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetytwoItemModel ninetytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 41.h,
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
              width: 214.h,
              margin: EdgeInsets.symmetric(horizontal: 14.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_application_surely2".tr,
                      style: CustomTextStyles.headlineSmallff0d0140,
                    ),
                    TextSpan(
                      text: "lbl_each_company".tr,
                      style: CustomTextStyles.headlineSmallff0d0140,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 14.v),
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
              width: 156.h,
              text: "lbl_get_started".tr,
            ),
          ],
        ),
      ),
    );
  }
}
