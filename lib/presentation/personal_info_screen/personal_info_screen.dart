import 'models/personal_info_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/core/utils/validation_functions.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_title.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:rudra_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';import 'package:rudra_s_application2/widgets/custom_text_form_field.dart';import 'provider/personal_info_provider.dart';class PersonalInfoScreen extends StatefulWidget {const PersonalInfoScreen({Key? key}) : super(key: key);

@override PersonalInfoScreenState createState() =>  PersonalInfoScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PersonalInfoProvider(), child: PersonalInfoScreen()); } 
 }

// ignore_for_file: must_be_immutable
class PersonalInfoScreenState extends State<PersonalInfoScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override void initState() { super.initState();
WidgetsBinding.instance.addPostFrameCallback((_) {Provider.of<PersonalInfoProvider>(context, listen: false).callFetchMe();
}); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 32.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_first_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildPersonalInfoFirstName(context), SizedBox(height: 18.v), Text("lbl_last_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildPersonalInfoLastName(context), SizedBox(height: 18.v), Text("lbl_email".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildPersonalInfoEmail(context), SizedBox(height: 18.v), Text("lbl_phone".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildPersonalInfoPhone(context), SizedBox(height: 18.v), Text("lbl_location".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildPersonalInfoLocation(context)]))))]))), bottomNavigationBar: _buildSaveChanges(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_personal_info".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgEditSquare, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 
/// Section Widget
Widget _buildPersonalInfoFirstName(BuildContext context) { return Selector<PersonalInfoProvider, TextEditingController?>(selector: (context, provider) => provider.personalInfoFirstNameController, builder: (context, personalInfoFirstNameController, child) {return CustomTextFormField(controller: personalInfoFirstNameController, hintText: "lbl_gustavo".tr);}); } 
/// Section Widget
Widget _buildPersonalInfoLastName(BuildContext context) { return Selector<PersonalInfoProvider, TextEditingController?>(selector: (context, provider) => provider.personalInfoLastNameController, builder: (context, personalInfoLastNameController, child) {return CustomTextFormField(controller: personalInfoLastNameController, hintText: "lbl_lipshutz".tr);}); } 
/// Section Widget
Widget _buildPersonalInfoEmail(BuildContext context) { return Selector<PersonalInfoProvider, TextEditingController?>(selector: (context, provider) => provider.personalInfoEmailController, builder: (context, personalInfoEmailController, child) {return CustomTextFormField(controller: personalInfoEmailController, hintText: "lbl_xyz_gmail_com".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;});}); } 
/// Section Widget
Widget _buildPersonalInfoPhone(BuildContext context) { return Selector<PersonalInfoProvider, TextEditingController?>(selector: (context, provider) => provider.personalInfoPhoneController, builder: (context, personalInfoPhoneController, child) {return CustomTextFormField(controller: personalInfoPhoneController, hintText: "lbl_1_1234567890".tr);}); } 
/// Section Widget
Widget _buildPersonalInfoLocation(BuildContext context) { return Selector<PersonalInfoProvider, TextEditingController?>(selector: (context, provider) => provider.personalInfoLocationController, builder: (context, personalInfoLocationController, child) {return CustomTextFormField(controller: personalInfoLocationController, hintText: "lbl_lorem_ipsun".tr, textInputAction: TextInputAction.done, maxLines: 6, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v));}); } 
/// Section Widget
Widget _buildSaveChanges(BuildContext context) { return CustomElevatedButton(text: "lbl_save_changes".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 44.v), buttonStyle: CustomButtonStyles.fillGrayTL24, buttonTextStyle: CustomTextStyles.titleMediumGray50001); } 

/// Navigates to the previous screen.
onTapImage(BuildContext context) { NavigatorService.goBack(); } 
 }
