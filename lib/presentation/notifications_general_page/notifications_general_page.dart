import '../notifications_general_page/widgets/notificationsgeneral_item_widget.dart';import 'models/notifications_general_model.dart';import 'models/notificationsgeneral_item_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'provider/notifications_general_provider.dart';class NotificationsGeneralPage extends StatefulWidget {const NotificationsGeneralPage({Key? key}) : super(key: key);

@override NotificationsGeneralPageState createState() =>  NotificationsGeneralPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => NotificationsGeneralProvider(), child: NotificationsGeneralPage()); } 
 }
class NotificationsGeneralPageState extends State<NotificationsGeneralPage> with  AutomaticKeepAliveClientMixin<NotificationsGeneralPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.background, child: Column(children: [SizedBox(height: 24.v), _buildNotificationsGeneral(context)])))); } 
/// Section Widget
Widget _buildNotificationsGeneral(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer<NotificationsGeneralProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 6.5.v), child: SizedBox(width: 323.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray300)));}, itemCount: provider.notificationsGeneralModelObj.notificationsgeneralItemList.length, itemBuilder: (context, index) {NotificationsgeneralItemModel model = provider.notificationsGeneralModelObj.notificationsgeneralItemList[index]; return NotificationsgeneralItemWidget(model);});})); } 
 }
