import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/add_new_education_screen/models/add_new_education_model.dart';/// A provider class for the AddNewEducationScreen.
///
/// This provider manages the state of the AddNewEducationScreen, including the
/// current addNewEducationModelObj

// ignore_for_file: must_be_immutable
class AddNewEducationProvider extends ChangeNotifier {TextEditingController schoolEditTextController = TextEditingController();

TextEditingController fieldOfStudyEditTextController = TextEditingController();

TextEditingController gradeEditTextController = TextEditingController();

TextEditingController descriptionEditTextController = TextEditingController();

AddNewEducationModel addNewEducationModelObj = AddNewEducationModel();

@override void dispose() { super.dispose(); schoolEditTextController.dispose(); fieldOfStudyEditTextController.dispose(); gradeEditTextController.dispose(); descriptionEditTextController.dispose(); } 
onSelected(dynamic value) { for (var element in addNewEducationModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
