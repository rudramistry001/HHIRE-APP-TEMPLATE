import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/profile_page/models/profile_model.dart';import '../models/fiftynine_item_model.dart';import '../models/profile_item_model.dart';/// A provider class for the ProfilePage.
///
/// This provider manages the state of the ProfilePage, including the
/// current profileModelObj

// ignore_for_file: must_be_immutable
class ProfileProvider extends ChangeNotifier {ProfileModel profileModelObj = ProfileModel();

@override void dispose() { super.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { profileModelObj.fiftynineItemList.forEach((element) {element.isSelected = false;}); profileModelObj.fiftynineItemList[index].isSelected = value; notifyListeners(); } 
 }
