import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/apply_job_screen/models/apply_job_model.dart';/// A provider class for the ApplyJobScreen.
///
/// This provider manages the state of the ApplyJobScreen, including the
/// current applyJobModelObj

// ignore_for_file: must_be_immutable
class ApplyJobProvider extends ChangeNotifier {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController frameOneController = TextEditingController();

ApplyJobModel applyJobModelObj = ApplyJobModel();

@override void dispose() { super.dispose(); fullNameController.dispose(); emailController.dispose(); frameOneController.dispose(); } 
 }
