import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/presentation/select_a_country_screen/models/select_a_country_model.dart';

/// A provider class for the SelectACountryScreen.
///
/// This provider manages the state of the SelectACountryScreen, including the
/// current selectACountryModelObj
class SelectACountryProvider extends ChangeNotifier {
  SelectACountryModel selectACountryModelObj = SelectACountryModel();

  String radioGroup = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeRadioButton1(String value) {
    radioGroup = value;
    notifyListeners();
  }
}
