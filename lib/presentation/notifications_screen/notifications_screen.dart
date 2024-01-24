import '../notifications_screen/widgets/notifications_item_widget.dart';import 'models/notifications_item_model.dart';import 'models/notifications_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_title.dart';import 'package:rudra_s_application2/widgets/app_bar/custom_app_bar.dart';import 'provider/notifications_provider.dart';class NotificationsScreen extends StatefulWidget {const NotificationsScreen({Key? key}) : super(key: key);

@override NotificationsScreenState createState() =>  NotificationsScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => NotificationsProvider(), child: NotificationsScreen()); } 
 }
class NotificationsScreenState extends State<NotificationsScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: 327.h, margin: EdgeInsets.fromLTRB(24.h, 30.v, 24.h, 5.v), padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_messages_notifications".tr, style: CustomTextStyles.labelLargeGray50002), SizedBox(height: 19.v), Expanded(child: Consumer<NotificationsProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 11.0.v), child: SizedBox(width: 295.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray300)));}, itemCount: provider.notificationsModelObj.notificationsItemList.length, itemBuilder: (context, index) {NotificationsItemModel model = provider.notificationsModelObj.notificationsItemList[index]; return NotificationsItemWidget(model, changeSwitchBox1: (value) {provider.changeSwitchBox1(index, value);});});}))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapArrowBack(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_notifications".tr)); } 

/// Navigates to the previous screen.
onTapArrowBack(BuildContext context) { NavigatorService.goBack(); } 
 }
