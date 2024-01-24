import '../message_action_screen/widgets/messageaction_item_widget.dart';import 'models/message_action_model.dart';import 'models/messageaction_item_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/home_page/home_page.dart';import 'package:rudra_s_application2/presentation/message_page/message_page.dart';import 'package:rudra_s_application2/presentation/profile_page/profile_page.dart';import 'package:rudra_s_application2/presentation/saved_page/saved_page.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_title.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:rudra_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:rudra_s_application2/widgets/custom_bottom_bar.dart';import 'package:rudra_s_application2/widgets/custom_elevated_button.dart';import 'package:rudra_s_application2/widgets/custom_search_view.dart';import 'provider/message_action_provider.dart';class MessageActionScreen extends StatefulWidget {const MessageActionScreen({Key? key}) : super(key: key);

@override MessageActionScreenState createState() =>  MessageActionScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => MessageActionProvider(), child: MessageActionScreen()); } 
 }

// ignore_for_file: must_be_immutable
class MessageActionScreenState extends State<MessageActionScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.chatScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 24.v), child: Column(children: [SizedBox(height: 2.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Selector<MessageActionProvider, TextEditingController?>(selector: (context, provider) => provider.searchController, builder: (context, searchController, child) {return CustomSearchView(controller: searchController, hintText: "lbl_search_message".tr);})), SizedBox(height: 24.v), _buildMessageAction(context), Spacer(), CustomElevatedButton(height: 46.v, width: 137.h, text: "lbl_new_chat".tr, margin: EdgeInsets.only(right: 24.h), leftIcon: Container(margin: EdgeInsets.only(right: 4.h), child: CustomImageView(imagePath: ImageConstant.imgPlusOnprimarycontainer, height: 18.adaptSize, width: 18.adaptSize)), buttonStyle: CustomButtonStyles.fillPrimaryTL20, buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainerSemiBold, alignment: Alignment.centerRight)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 97.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_message".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgComponent3, margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v))]); } 
/// Section Widget
Widget _buildMessageAction(BuildContext context) { return Consumer<MessageActionProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 7.5.v), child: SizedBox(width: 327.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray300)));}, itemCount: provider.messageActionModelObj.messageactionItemList.length, itemBuilder: (context, index) {MessageactionItemModel model = provider.messageActionModelObj.messageactionItemList[index]; return MessageactionItemWidget(model, onTapEstherHoward: () {onTapEstherHoward(context);});});}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Saved: return AppRoutes.savedPage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homePage: return HomePage.builder(context); case AppRoutes.messagePage: return MessagePage.builder(context); case AppRoutes.savedPage: return SavedPage.builder(context); case AppRoutes.profilePage: return ProfilePage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the chatScreen when the action is triggered.
onTapEstherHoward(BuildContext context) { NavigatorService.pushNamed(AppRoutes.chatScreen); } 

/// Navigates to the previous screen.
onTapImage(BuildContext context) { NavigatorService.goBack(); } 
 }
