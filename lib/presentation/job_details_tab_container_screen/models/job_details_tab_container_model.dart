import 'framefive_item_model.dart';import '../../../core/app_export.dart';import 'jobdetailstabcontainer_item_model.dart';class JobDetailsTabContainerModel {List<FramefiveItemModel> framefiveItemList = List.generate(2,(index) =>FramefiveItemModel());

List<JobdetailstabcontainerItemModel> jobdetailstabcontainerItemList = [JobdetailstabcontainerItemModel(wallet:ImageConstant.imgWallet,salary: "Salary",price: "6k - 11k"),JobdetailstabcontainerItemModel(wallet:ImageConstant.imgWorkDeepPurple400,salary: "Job Type",price: "Remote"),JobdetailstabcontainerItemModel(wallet:ImageConstant.imgProfileOrange500,salary: "Position",price: "Senior")];

 }
