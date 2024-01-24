import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/saved_detail_job_page/models/saved_detail_job_model.dart';/// A provider class for the SavedDetailJobPage.
///
/// This provider manages the state of the SavedDetailJobPage, including the
/// current savedDetailJobModelObj

// ignore_for_file: must_be_immutable
class SavedDetailJobProvider extends ChangeNotifier {SavedDetailJobModel savedDetailJobModelObj = SavedDetailJobModel();

@override void dispose() { super.dispose(); } 
 }
