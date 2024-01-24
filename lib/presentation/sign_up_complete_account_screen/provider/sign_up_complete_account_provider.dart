import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/sign_up_complete_account_screen/models/sign_up_complete_account_model.dart';/// A provider class for the SignUpCompleteAccountScreen.
///
/// This provider manages the state of the SignUpCompleteAccountScreen, including the
/// current signUpCompleteAccountModelObj

// ignore_for_file: must_be_immutable
class SignUpCompleteAccountProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController passwordController = TextEditingController();

SignUpCompleteAccountModel signUpCompleteAccountModelObj = SignUpCompleteAccountModel();

bool isShowPassword = true;

@override void dispose() { super.dispose(); emailController.dispose(); lastNameController.dispose(); passwordController.dispose(); } 
void changePasswordVisibility() { isShowPassword = !isShowPassword; notifyListeners(); } 
 }
