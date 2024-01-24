import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/job_details_page/models/job_details_model.dart';/// A provider class for the JobDetailsPage.
///
/// This provider manages the state of the JobDetailsPage, including the
/// current jobDetailsModelObj

// ignore_for_file: must_be_immutable
class JobDetailsProvider extends ChangeNotifier {JobDetailsModel jobDetailsModelObj = JobDetailsModel();

@override void dispose() { super.dispose(); } 
 }
