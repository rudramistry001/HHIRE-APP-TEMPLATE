import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/filter_bottomsheet/models/filter_model.dart';import '../models/thirtyfourchipview_item_model.dart';import '../models/jobschipview_item_model.dart';/// A provider class for the FilterBottomsheet.
///
/// This provider manages the state of the FilterBottomsheet, including the
/// current filterModelObj

// ignore_for_file: must_be_immutable
class FilterProvider extends ChangeNotifier {FilterModel filterModelObj = FilterModel();

@override void dispose() { super.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { filterModelObj.thirtyfourchipviewItemList.forEach((element) {element.isSelected = false;}); filterModelObj.thirtyfourchipviewItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView2(int index, bool value, ) { filterModelObj.jobschipviewItemList.forEach((element) {element.isSelected = false;}); filterModelObj.jobschipviewItemList[index].isSelected = value; notifyListeners(); } 
 }
