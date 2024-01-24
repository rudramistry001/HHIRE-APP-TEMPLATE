import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/applied_job_page/models/applied_job_model.dart';/// A provider class for the AppliedJobPage.
///
/// This provider manages the state of the AppliedJobPage, including the
/// current appliedJobModelObj

// ignore_for_file: must_be_immutable
class AppliedJobProvider extends ChangeNotifier {AppliedJobModel appliedJobModelObj = AppliedJobModel();

@override void dispose() { super.dispose(); } 
 }
