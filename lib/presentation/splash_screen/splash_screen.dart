import 'models/splash_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'provider/splash_provider.dart';class SplashScreen extends StatefulWidget {const SplashScreen({Key? key}) : super(key: key);

@override SplashScreenState createState() =>  SplashScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SplashProvider(), child: SplashScreen()); } 
 }
class SplashScreenState extends State<SplashScreen> {@override void initState() { super.initState();Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.pushNamed(AppRoutes.onboardingOneScreen, );}); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClarityEmployeeSolid, height: 102.adaptSize, width: 102.adaptSize), SizedBox(height: 24.v), Text("lbl_hired".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 5.v)])))); } 
 }
