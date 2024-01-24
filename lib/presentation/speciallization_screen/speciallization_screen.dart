import '../speciallization_screen/widgets/specialization_item_widget.dart';import 'models/specialization_item_model.dart';import 'models/speciallization_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:rudra_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';import 'provider/speciallization_provider.dart';import 'package:rudra_s_application2/presentation/confirmation_dialog/confirmation_dialog.dart';class SpeciallizationScreen extends StatefulWidget {const SpeciallizationScreen({Key? key}) : super(key: key);

@override SpeciallizationScreenState createState() =>  SpeciallizationScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SpeciallizationProvider(), child: SpeciallizationScreen()); } 
 }
class SpeciallizationScreenState extends State<SpeciallizationScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 31.v), child: Column(children: [SizedBox(width: 177.h, child: Text("msg_what_is_your_specialization".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.headlineSmall!.copyWith(height: 1.33))), SizedBox(height: 7.v), Text("msg_lorem_ipsum_dolor2".tr, style: CustomTextStyles.titleSmallBluegray400), SizedBox(height: 31.v), _buildSpecialization(context)])), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapImage(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgComponent3, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 
/// Section Widget
Widget _buildSpecialization(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Consumer<SpeciallizationProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: provider.speciallizationModelObj.specializationItemList.length, itemBuilder: (context, index) {SpecializationItemModel model = provider.speciallizationModelObj.specializationItemList[index]; return SpecializationItemWidget(model);});})); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 39.v), onPressed: () {onTapContinue(context);}); } 

/// Navigates to the previous screen.
onTapImage(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a dialog with the [ConfirmationDialog] content.
onTapContinue(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: ConfirmationDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
