import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/new_position_screen/models/new_position_model.dart';/// A provider class for the NewPositionScreen.
///
/// This provider manages the state of the NewPositionScreen, including the
/// current newPositionModelObj

// ignore_for_file: must_be_immutable
class NewPositionProvider extends ChangeNotifier {TextEditingController frameOneEditTextController = TextEditingController();

TextEditingController nameEditTextController = TextEditingController();

TextEditingController locationEditTextController = TextEditingController();

TextEditingController frameOneEditTextController1 = TextEditingController();

NewPositionModel newPositionModelObj = NewPositionModel();

@override void dispose() { super.dispose(); frameOneEditTextController.dispose(); nameEditTextController.dispose(); locationEditTextController.dispose(); frameOneEditTextController1.dispose(); } 
onSelected(dynamic value) { for (var element in newPositionModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
