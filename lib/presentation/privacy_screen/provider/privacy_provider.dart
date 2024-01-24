import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/privacy_screen/models/privacy_model.dart';/// A provider class for the PrivacyScreen.
///
/// This provider manages the state of the PrivacyScreen, including the
/// current privacyModelObj

// ignore_for_file: must_be_immutable
class PrivacyProvider extends ChangeNotifier {PrivacyModel privacyModelObj = PrivacyModel();

@override void dispose() { super.dispose(); } 
 }
