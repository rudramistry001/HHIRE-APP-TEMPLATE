import '../job_type_screen/widgets/jobtype_item_widget.dart';import 'models/job_type_model.dart';import 'models/jobtype_item_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:rudra_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';import 'provider/job_type_provider.dart';class JobTypeScreen extends StatefulWidget {const JobTypeScreen({Key? key}) : super(key: key);

@override JobTypeScreenState createState() =>  JobTypeScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => JobTypeProvider(), child: JobTypeScreen()); } 
 }
class JobTypeScreenState extends State<JobTypeScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 34.v), child: Column(children: [Text("lbl_choose_job_type".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 7.v), SizedBox(width: 209.h, child: Text("msg_are_you_looking".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallBluegray400.copyWith(height: 1.57))), SizedBox(height: 37.v), _buildJobType(context)])), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapImage(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgComponent3, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 
/// Section Widget
Widget _buildJobType(BuildContext context) { return SizedBox(height: 229.v, child: Consumer<JobTypeProvider>(builder: (context, provider, child) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 15.h);}, itemCount: provider.jobTypeModelObj.jobtypeItemList.length, itemBuilder: (context, index) {JobtypeItemModel model = provider.jobTypeModelObj.jobtypeItemList[index]; return JobtypeItemWidget(model);});})); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 55.v), onPressed: () {onTapContinue(context);}); } 

/// Navigates to the previous screen.
onTapImage(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the speciallizationScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.speciallizationScreen, ); } 
 }
