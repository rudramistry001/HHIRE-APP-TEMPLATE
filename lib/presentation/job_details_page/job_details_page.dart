import 'models/job_details_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';import 'provider/job_details_provider.dart';class JobDetailsPage extends StatefulWidget {const JobDetailsPage({Key? key}) : super(key: key);

@override JobDetailsPageState createState() =>  JobDetailsPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => JobDetailsProvider(), child: JobDetailsPage()); } 
 }
class JobDetailsPageState extends State<JobDetailsPage> with  AutomaticKeepAliveClientMixin<JobDetailsPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: _buildJobDescription(context))); } 
/// Section Widget
Widget _buildJobDescription(BuildContext context) { return SingleChildScrollView(child: Padding(padding: EdgeInsets.only(top: 419.v), child: Column(children: [SizedBox(height: 20.v), Column(mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_job_description".tr, style: CustomTextStyles.titleMediumBold_1))), SizedBox(height: 13.v), Container(width: 319.h, margin: EdgeInsets.only(left: 31.h, right: 24.h), child: Text("msg_lorem_ipsum_dolor3".tr, maxLines: 10, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallBluegray400.copyWith(height: 1.57))), SizedBox(height: 3.v), Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v), decoration: AppDecoration.linear, child: Column(children: [SizedBox(height: 12.v), CustomElevatedButton(text: "lbl_apply_now".tr, onPressed: () {onTapApplyNow(context);})]))])]))); } 
/// Navigates to the applyJobScreen when the action is triggered.
onTapApplyNow(BuildContext context) { NavigatorService.pushNamed(AppRoutes.applyJobScreen, ); } 
 }
