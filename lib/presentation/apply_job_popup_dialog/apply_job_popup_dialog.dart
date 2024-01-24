import 'models/apply_job_popup_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';
import 'provider/apply_job_popup_provider.dart';

// ignore_for_file: must_be_immutable
class ApplyJobPopupDialog extends StatefulWidget {
  const ApplyJobPopupDialog({Key? key})
      : super(
          key: key,
        );

  @override
  ApplyJobPopupDialogState createState() => ApplyJobPopupDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApplyJobPopupProvider(),
      child: ApplyJobPopupDialog(),
    );
  }
}

class ApplyJobPopupDialogState extends State<ApplyJobPopupDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 302.h,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp11,
            height: 101.adaptSize,
            width: 101.adaptSize,
          ),
          SizedBox(height: 25.v),
          Text(
            "lbl_success".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
          SizedBox(height: 9.v),
          Text(
            "msg_your_application".tr,
            style: CustomTextStyles.titleSmallBluegray400SemiBold,
          ),
          SizedBox(height: 19.v),
          CustomElevatedButton(
            height: 54.v,
            width: 127.h,
            text: "lbl_continue".tr,
            buttonTextStyle:
                CustomTextStyles.titleSmallOnPrimaryContainerSemiBold,
          ),
        ],
      ),
    );
  }
}
