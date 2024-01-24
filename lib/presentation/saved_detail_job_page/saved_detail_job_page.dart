import 'models/saved_detail_job_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';import 'provider/saved_detail_job_provider.dart';class SavedDetailJobPage extends StatefulWidget {const SavedDetailJobPage({Key? key}) : super(key: key);

@override SavedDetailJobPageState createState() =>  SavedDetailJobPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SavedDetailJobProvider(), child: SavedDetailJobPage()); } 
 }
class SavedDetailJobPageState extends State<SavedDetailJobPage> with  AutomaticKeepAliveClientMixin<SavedDetailJobPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: _buildJobDescription(context))); } 
/// Section Widget
Widget _buildJobDescription(BuildContext context) { return SingleChildScrollView(child: Padding(padding: EdgeInsets.only(top: 419.v), child: Column(children: [SizedBox(height: 20.v), Column(mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_job_description".tr, style: CustomTextStyles.titleMediumBold_1))), SizedBox(height: 13.v), Container(width: 319.h, margin: EdgeInsets.only(left: 31.h, right: 24.h), child: Text("msg_lorem_ipsum_dolor3".tr, maxLines: 10, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallBluegray400.copyWith(height: 1.57))), SizedBox(height: 3.v), Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v), decoration: AppDecoration.linear, child: Column(children: [SizedBox(height: 12.v), CustomElevatedButton(text: "lbl_apply_now".tr, onPressed: () {onTapApplyNow(context);})]))])]))); } 
/// Navigates to the applyJobScreen when the action is triggered.
onTapApplyNow(BuildContext context) { NavigatorService.pushNamed(AppRoutes.applyJobScreen, ); } 
 }
