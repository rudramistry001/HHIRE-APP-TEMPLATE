import '../notifications_my_proposals_page/widgets/notificationsmyproposals_item_widget.dart';import 'models/notifications_my_proposals_model.dart';import 'models/notificationsmyproposals_item_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'provider/notifications_my_proposals_provider.dart';class NotificationsMyProposalsPage extends StatefulWidget {const NotificationsMyProposalsPage({Key? key}) : super(key: key);

@override NotificationsMyProposalsPageState createState() =>  NotificationsMyProposalsPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => NotificationsMyProposalsProvider(), child: NotificationsMyProposalsPage()); } 
 }
class NotificationsMyProposalsPageState extends State<NotificationsMyProposalsPage> with  AutomaticKeepAliveClientMixin<NotificationsMyProposalsPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.background, child: Column(children: [SizedBox(height: 24.v), _buildNotificationsMyProposals(context)])))); } 
/// Section Widget
Widget _buildNotificationsMyProposals(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: Text("msg_application_status".tr, style: CustomTextStyles.titleMediumBold_1)), CustomImageView(imagePath: ImageConstant.imgArrowUp, height: 24.adaptSize, width: 24.adaptSize)]), SizedBox(height: 23.v), Consumer<NotificationsMyProposalsProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 8.5.v), child: SizedBox(width: 327.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray300)));}, itemCount: provider.notificationsMyProposalsModelObj.notificationsmyproposalsItemList.length, itemBuilder: (context, index) {NotificationsmyproposalsItemModel model = provider.notificationsMyProposalsModelObj.notificationsmyproposalsItemList[index]; return NotificationsmyproposalsItemWidget(model);});})])); } 
 }
