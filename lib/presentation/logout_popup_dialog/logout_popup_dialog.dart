import 'models/logout_popup_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';import 'package:rudra_s_application2/widgets/custom_outlined_button.dart';import 'provider/logout_popup_provider.dart';class LogoutPopupDialog extends StatefulWidget {const LogoutPopupDialog({Key? key}) : super(key: key);

@override LogoutPopupDialogState createState() =>  LogoutPopupDialogState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => LogoutPopupProvider(), child: LogoutPopupDialog()); } 
 }
class LogoutPopupDialogState extends State<LogoutPopupDialog> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SingleChildScrollView(child: _buildPopUp(context)); } 
/// Section Widget
Widget _buildPopUp(BuildContext context) { return Container(margin: EdgeInsets.only(left: 34.h, right: 34.h, bottom: 241.v), padding: EdgeInsets.all(32.h), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 9.v), CustomImageView(imagePath: ImageConstant.imgProfileOnprimary, height: 82.adaptSize, width: 82.adaptSize), SizedBox(height: 35.v), Text("lbl_are_you_sure".tr, style: CustomTextStyles.titleMediumBold), SizedBox(height: 8.v), Container(width: 229.h, margin: EdgeInsets.only(left: 6.h, right: 5.h), child: Text("msg_ullamcorper_imperdiet".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallBluegray400SemiBold.copyWith(height: 1.57))), SizedBox(height: 21.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(height: 46.v, text: "lbl_log_out2".tr, margin: EdgeInsets.only(right: 6.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL20, buttonTextStyle: CustomTextStyles.titleSmallSemiBold, onPressed: () {onTapLogOut(context);})), Expanded(child: CustomElevatedButton(height: 46.v, text: "lbl_cancel".tr, margin: EdgeInsets.only(left: 6.h), buttonStyle: CustomButtonStyles.fillPrimaryTL20, buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainerSemiBold, onPressed: () {onTapCancel(context);}))])])); } 
/// Navigates to the signUpCreateAcountScreen when the action is triggered.
onTapLogOut(BuildContext context) { NavigatorService.pushNamedAndRemoveUntil(AppRoutes.signUpCreateAcountScreen, ); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapCancel(BuildContext context) { NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
 }
