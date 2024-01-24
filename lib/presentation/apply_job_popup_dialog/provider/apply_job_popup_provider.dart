import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/presentation/apply_job_popup_dialog/models/apply_job_popup_model.dart';

/// A provider class for the ApplyJobPopupDialog.
///
/// This provider manages the state of the ApplyJobPopupDialog, including the
/// current applyJobPopupModelObj
class ApplyJobPopupProvider extends ChangeNotifier {
  ApplyJobPopupModel applyJobPopupModelObj = ApplyJobPopupModel();

  @override
  void dispose() {
    super.dispose();
  }
}
