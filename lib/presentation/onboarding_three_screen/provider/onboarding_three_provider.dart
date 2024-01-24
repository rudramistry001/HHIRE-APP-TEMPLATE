import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/onboarding_three_screen/models/onboarding_three_model.dart';import '../models/ninetytwo_item_model.dart';/// A provider class for the OnboardingThreeScreen.
///
/// This provider manages the state of the OnboardingThreeScreen, including the
/// current onboardingThreeModelObj

// ignore_for_file: must_be_immutable
class OnboardingThreeProvider extends ChangeNotifier {OnboardingThreeModel onboardingThreeModelObj = OnboardingThreeModel();

int sliderIndex = 0;

@override void dispose() { super.dispose(); } 
 }
