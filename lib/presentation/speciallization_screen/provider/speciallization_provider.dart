import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/speciallization_screen/models/speciallization_model.dart';import '../models/specialization_item_model.dart';/// A provider class for the SpeciallizationScreen.
///
/// This provider manages the state of the SpeciallizationScreen, including the
/// current speciallizationModelObj

// ignore_for_file: must_be_immutable
class SpeciallizationProvider extends ChangeNotifier {SpeciallizationModel speciallizationModelObj = SpeciallizationModel();

@override void dispose() { super.dispose(); } 
 }
