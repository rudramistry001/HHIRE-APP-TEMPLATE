import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/job_details_tab_container_screen/models/job_details_tab_container_model.dart';import '../models/framefive_item_model.dart';import '../models/jobdetailstabcontainer_item_model.dart';/// A provider class for the JobDetailsTabContainerScreen.
///
/// This provider manages the state of the JobDetailsTabContainerScreen, including the
/// current jobDetailsTabContainerModelObj

// ignore_for_file: must_be_immutable
class JobDetailsTabContainerProvider extends ChangeNotifier {JobDetailsTabContainerModel jobDetailsTabContainerModelObj = JobDetailsTabContainerModel();

@override void dispose() { super.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { jobDetailsTabContainerModelObj.framefiveItemList.forEach((element) {element.isSelected = false;}); jobDetailsTabContainerModelObj.framefiveItemList[index].isSelected = value; notifyListeners(); } 
 }
