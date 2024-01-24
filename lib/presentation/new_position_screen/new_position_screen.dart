import 'models/new_position_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_title.dart';import 'package:rudra_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:rudra_s_application2/widgets/custom_drop_down.dart';import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';import 'package:rudra_s_application2/widgets/custom_text_form_field.dart';import 'provider/new_position_provider.dart';class NewPositionScreen extends StatefulWidget {const NewPositionScreen({Key? key}) : super(key: key);

@override NewPositionScreenState createState() =>  NewPositionScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => NewPositionProvider(), child: NewPositionScreen()); } 
 }
class NewPositionScreenState extends State<NewPositionScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 36.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_title".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildFrameOneEditText(context), SizedBox(height: 20.v), _buildInputFieldColumn(context), SizedBox(height: 20.v), Text("lbl_company_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), _buildNameEditText(context), SizedBox(height: 18.v), Text("lbl_location2".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildLocationEditText(context), SizedBox(height: 18.v), Text("lbl_start_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildFrameOneRow(context, labelText: "lbl_select_date".tr, onTapFrameOneRow: () {onTapFrameOneRow(context);}), SizedBox(height: 18.v), Text("lbl_end_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildFrameOneRow(context, labelText: "lbl_select_date".tr, onTapFrameOneRow: () {onTapFrameOneRow1(context);}), SizedBox(height: 20.v), Text("msg_job_role_description".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), _buildFrameOneEditText1(context)]))))])), bottomNavigationBar: _buildSaveChangesButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapArrowBack(context);}), centerTitle: true, title: AppbarTitle(text: "msg_add_new_position".tr)); } 
/// Section Widget
Widget _buildFrameOneEditText(BuildContext context) { return Selector<NewPositionProvider, TextEditingController?>(selector: (context, provider) => provider.frameOneEditTextController, builder: (context, frameOneEditTextController, child) {return CustomTextFormField(controller: frameOneEditTextController, hintText: "lbl_ex_ui_designer".tr);}); } 
/// Section Widget
Widget _buildInputFieldColumn(BuildContext context) { return Container(decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_employment_type".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), Selector<NewPositionProvider, NewPositionModel?>(selector: (context, provider) => provider.newPositionModelObj, builder: (context, newPositionModelObj, child) {return CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 19.h, 13.v), child: CustomImageView(imagePath: ImageConstant.imgCheckmarkGray900, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_please_select".tr, items: newPositionModelObj?.dropdownItemList ?? [], onChanged: (value) {context.read<NewPositionProvider>().onSelected(value);});})])); } 
/// Section Widget
Widget _buildNameEditText(BuildContext context) { return Selector<NewPositionProvider, TextEditingController?>(selector: (context, provider) => provider.nameEditTextController, builder: (context, nameEditTextController, child) {return CustomTextFormField(controller: nameEditTextController, hintText: "lbl_ex_shopee".tr);}); } 
/// Section Widget
Widget _buildLocationEditText(BuildContext context) { return Selector<NewPositionProvider, TextEditingController?>(selector: (context, provider) => provider.locationEditTextController, builder: (context, locationEditTextController, child) {return CustomTextFormField(controller: locationEditTextController, hintText: "msg_ex_singapore_singapore".tr);}); } 
/// Section Widget
Widget _buildFrameOneEditText1(BuildContext context) { return Selector<NewPositionProvider, TextEditingController?>(selector: (context, provider) => provider.frameOneEditTextController1, builder: (context, frameOneEditTextController1, child) {return CustomTextFormField(controller: frameOneEditTextController1, hintText: "lbl_lorem_ipsun".tr, textInputAction: TextInputAction.done, maxLines: 6, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v));}); } 
/// Section Widget
Widget _buildSaveChangesButton(BuildContext context) { return CustomElevatedButton(text: "lbl_save_changes".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 37.v), onPressed: () {onTapSaveChangesButton(context);}); } 
/// Common widget
Widget _buildFrameOneRow(BuildContext context, {required String labelText, Function? onTapFrameOneRow, }) { return GestureDetector(onTap: () {onTapFrameOneRow!.call();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text(labelText, style: CustomTextStyles.titleMediumBluegray400.copyWith(color: appTheme.blueGray400))), CustomImageView(imagePath: ImageConstant.imgCalendar, height: 24.adaptSize, width: 24.adaptSize)]))); } 

/// Navigates to the previous screen.
onTapArrowBack(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a date picker dialog and updates the selected date in the
/// [newPositionModelObj] object of the current [labelText] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapFrameOneRow(BuildContext context) async  { DateTime? dateTime  = await showDatePicker(context: context!,initialDate: Provider.of<NewPositionProvider>(context).newPositionModelObj.selectedLabelText ?? DateTime.now() ?? DateTime.now() , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {Provider.of<NewPositionProvider>(context).newPositionModelObj.selectedLabelText  = dateTime;Provider.of<NewPositionProvider>(context).newPositionModelObj.labelText = dateTime.format(dateTimeFormatPattern);} } 

/// Displays a date picker dialog and updates the selected date in the
/// [newPositionModelObj] object of the current [labelText1] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapFrameOneRow1(BuildContext context) async  { DateTime? dateTime  = await showDatePicker(context: context!,initialDate: Provider.of<NewPositionProvider>(context).newPositionModelObj.selectedLabelText1 ?? DateTime.now() ?? DateTime.now() , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {Provider.of<NewPositionProvider>(context).newPositionModelObj.selectedLabelText1  = dateTime;Provider.of<NewPositionProvider>(context).newPositionModelObj.labelText1 = dateTime.format(dateTimeFormatPattern);} } 
/// Navigates to the experienceSettingScreen when the action is triggered.
onTapSaveChangesButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.experienceSettingScreen, ); } 
 }
