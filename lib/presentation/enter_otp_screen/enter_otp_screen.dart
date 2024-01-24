import 'models/enter_otp_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:rudra_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';import 'package:rudra_s_application2/widgets/custom_pin_code_text_field.dart';import 'provider/enter_otp_provider.dart';class EnterOtpScreen extends StatefulWidget {const EnterOtpScreen({Key? key}) : super(key: key);

@override EnterOtpScreenState createState() =>  EnterOtpScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => EnterOtpProvider(), child: EnterOtpScreen()); } 
 }
class EnterOtpScreenState extends State<EnterOtpScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 31.v), child: Column(children: [Text("lbl_enter_otp".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 10.v), Container(width: 282.h, margin: EdgeInsets.symmetric(horizontal: 22.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_we_have_just_sent2".tr, style: CustomTextStyles.titleSmallff87868c), TextSpan(text: "msg_example_gmail_com".tr, style: CustomTextStyles.titleSmallff0d0140)]), textAlign: TextAlign.center)), SizedBox(height: 37.v), Padding(padding: EdgeInsets.only(left: 16.h, right: 15.h), child: Selector<EnterOtpProvider, TextEditingController?>(selector: (context, provider) => provider.otpController, builder: (context, otpController, child) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});})), SizedBox(height: 40.v), CustomElevatedButton(text: "lbl_continue".tr, onPressed: () {onTapContinue(context);}), SizedBox(height: 26.v), Padding(padding: EdgeInsets.symmetric(horizontal: 30.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_didn_t_receive_code".tr, style: CustomTextStyles.titleMediumGray500), Text("lbl_resend_code".tr, style: theme.textTheme.titleMedium)])), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapImage(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgComponent3, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 

/// Navigates to the previous screen.
onTapImage(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the jobTypeScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.jobTypeScreen, ); } 
 }
