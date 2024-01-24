import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/experience_setting_screen/models/experience_setting_model.dart';import '../models/experiencesetting_item_model.dart';/// A provider class for the ExperienceSettingScreen.
///
/// This provider manages the state of the ExperienceSettingScreen, including the
/// current experienceSettingModelObj

// ignore_for_file: must_be_immutable
class ExperienceSettingProvider extends ChangeNotifier {ExperienceSettingModel experienceSettingModelObj = ExperienceSettingModel();

@override void dispose() { super.dispose(); } 
 }
