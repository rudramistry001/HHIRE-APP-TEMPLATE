import 'models/home_container_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/home_page/home_page.dart';import 'package:rudra_s_application2/presentation/message_page/message_page.dart';import 'package:rudra_s_application2/presentation/profile_page/profile_page.dart';import 'package:rudra_s_application2/presentation/saved_page/saved_page.dart';import 'package:rudra_s_application2/widgets/custom_bottom_bar.dart';import 'provider/home_container_provider.dart';class HomeContainerScreen extends StatefulWidget {const HomeContainerScreen({Key? key}) : super(key: key);

@override HomeContainerScreenState createState() =>  HomeContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HomeContainerProvider(), child: HomeContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class HomeContainerScreenState extends State<HomeContainerScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.messagePage, );NavigatorService.pushNamed(AppRoutes.homePage, );NavigatorService.pushNamed(AppRoutes.profilePage, );NavigatorService.pushNamed(AppRoutes.savedPage, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Saved: return AppRoutes.savedPage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homePage: return HomePage.builder(context); case AppRoutes.messagePage: return MessagePage.builder(context); case AppRoutes.savedPage: return SavedPage.builder(context); case AppRoutes.profilePage: return ProfilePage.builder(context); default: return DefaultWidget();} } 
 }
