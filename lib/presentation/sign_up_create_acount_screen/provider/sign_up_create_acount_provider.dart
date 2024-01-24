import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/sign_up_create_acount_screen/models/sign_up_create_acount_model.dart';/// A provider class for the SignUpCreateAcountScreen.
///
/// This provider manages the state of the SignUpCreateAcountScreen, including the
/// current signUpCreateAcountModelObj

// ignore_for_file: must_be_immutable
class SignUpCreateAcountProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

SignUpCreateAcountModel signUpCreateAcountModelObj = SignUpCreateAcountModel();

@override void dispose() { super.dispose(); emailController.dispose(); } 
 }
