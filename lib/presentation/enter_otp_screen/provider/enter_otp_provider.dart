import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/enter_otp_screen/models/enter_otp_model.dart';/// A provider class for the EnterOtpScreen.
///
/// This provider manages the state of the EnterOtpScreen, including the
/// current enterOtpModelObj

// ignore_for_file: must_be_immutable
class EnterOtpProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

EnterOtpModel enterOtpModelObj = EnterOtpModel();

@override void dispose() { super.dispose(); } 
 }
