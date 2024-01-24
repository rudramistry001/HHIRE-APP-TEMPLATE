import 'models/add_new_education_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_title.dart';import 'package:rudra_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:rudra_s_application2/widgets/custom_drop_down.dart';import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';import 'package:rudra_s_application2/widgets/custom_text_form_field.dart';import 'provider/add_new_education_provider.dart';class AddNewEducationScreen extends StatefulWidget {const AddNewEducationScreen({Key? key}) : super(key: key);

@override AddNewEducationScreenState createState() =>  AddNewEducationScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => AddNewEducationProvider(), child: AddNewEducationScreen()); } 
 }
class AddNewEducationScreenState extends State<AddNewEducationScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 32.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_school".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildSchoolEditText(context), SizedBox(height: 20.v), Text("lbl_degree".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), Selector<AddNewEducationProvider, AddNewEducationModel?>(selector: (context, provider) => provider.addNewEducationModelObj, builder: (context, addNewEducationModelObj, child) {return CustomDropDown(hintText: "lbl_ex_bachelor".tr, items: addNewEducationModelObj?.dropdownItemList ?? [], contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v), onChanged: (value) {context.read<AddNewEducationProvider>().onSelected(value);});}), SizedBox(height: 20.v), Text("lbl_field_of_study".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), _buildFieldOfStudyEditText(context), SizedBox(height: 18.v), Text("lbl_start_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildEndDateRow(context, smallLabelRegular: "lbl_select_date".tr, onTapEndDateRow: () {onTapEndDateRow(context);}), SizedBox(height: 18.v), Text("lbl_end_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildEndDateRow(context, smallLabelRegular: "lbl_select_date".tr, onTapEndDateRow: () {onTapEndDateRow1(context);}), SizedBox(height: 18.v), Text("lbl_grade".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildGradeEditText(context), SizedBox(height: 20.v), Text("lbl_description".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), _buildDescriptionEditText(context)]))))])), bottomNavigationBar: _buildSaveChangesButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapArrowBack(context);}), centerTitle: true, title: AppbarTitle(text: "msg_add_new_education".tr)); } 
/// Section Widget
Widget _buildSchoolEditText(BuildContext context) { return Selector<AddNewEducationProvider, TextEditingController?>(selector: (context, provider) => provider.schoolEditTextController, builder: (context, schoolEditTextController, child) {return CustomTextFormField(controller: schoolEditTextController, hintText: "msg_ex_harvard_university".tr);}); } 
/// Section Widget
Widget _buildFieldOfStudyEditText(BuildContext context) { return Selector<AddNewEducationProvider, TextEditingController?>(selector: (context, provider) => provider.fieldOfStudyEditTextController, builder: (context, fieldOfStudyEditTextController, child) {return CustomTextFormField(controller: fieldOfStudyEditTextController, hintText: "lbl_ex_business".tr);}); } 
/// Section Widget
Widget _buildGradeEditText(BuildContext context) { return Selector<AddNewEducationProvider, TextEditingController?>(selector: (context, provider) => provider.gradeEditTextController, builder: (context, gradeEditTextController, child) {return CustomTextFormField(controller: gradeEditTextController, hintText: "lbl_ex_business".tr);}); } 
/// Section Widget
Widget _buildDescriptionEditText(BuildContext context) { return Selector<AddNewEducationProvider, TextEditingController?>(selector: (context, provider) => provider.descriptionEditTextController, builder: (context, descriptionEditTextController, child) {return CustomTextFormField(controller: descriptionEditTextController, hintText: "lbl_lorem_ipsun".tr, textInputAction: TextInputAction.done, maxLines: 6, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v));}); } 
/// Section Widget
Widget _buildSaveChangesButton(BuildContext context) { return CustomElevatedButton(text: "lbl_save_changes".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 37.v), onPressed: () {onTapSaveChangesButton(context);}); } 
/// Common widget
Widget _buildEndDateRow(BuildContext context, {required String smallLabelRegular, Function? onTapEndDateRow, }) { return GestureDetector(onTap: () {onTapEndDateRow!.call();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text(smallLabelRegular, style: CustomTextStyles.titleMediumBluegray400.copyWith(color: appTheme.blueGray400))), CustomImageView(imagePath: ImageConstant.imgCalendar, height: 24.adaptSize, width: 24.adaptSize)]))); } 

/// Navigates to the previous screen.
onTapArrowBack(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a date picker dialog and updates the selected date in the
/// [addNewEducationModelObj] object of the current [smallLabelRegular] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapEndDateRow(BuildContext context) async  { DateTime? dateTime  = await showDatePicker(context: context!,initialDate: Provider.of<AddNewEducationProvider>(context).addNewEducationModelObj.selectedSmallLabelRegular ?? DateTime.now() ?? DateTime.now() , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {Provider.of<AddNewEducationProvider>(context).addNewEducationModelObj.selectedSmallLabelRegular  = dateTime;Provider.of<AddNewEducationProvider>(context).addNewEducationModelObj.smallLabelRegular = dateTime.format(dateTimeFormatPattern);} } 

/// Displays a date picker dialog and updates the selected date in the
/// [addNewEducationModelObj] object of the current [smallLabelRegular1] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapEndDateRow1(BuildContext context) async  { DateTime? dateTime  = await showDatePicker(context: context!,initialDate: Provider.of<AddNewEducationProvider>(context).addNewEducationModelObj.selectedSmallLabelRegular1 ?? DateTime.now() ?? DateTime.now() , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {Provider.of<AddNewEducationProvider>(context).addNewEducationModelObj.selectedSmallLabelRegular1  = dateTime;Provider.of<AddNewEducationProvider>(context).addNewEducationModelObj.smallLabelRegular1 = dateTime.format(dateTimeFormatPattern);} } 
/// Navigates to the experienceSettingScreen when the action is triggered.
onTapSaveChangesButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.experienceSettingScreen, ); } 
 }
