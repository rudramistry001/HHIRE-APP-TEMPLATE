import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/logout_popup_dialog/models/logout_popup_model.dart';/// A provider class for the LogoutPopupDialog.
///
/// This provider manages the state of the LogoutPopupDialog, including the
/// current logoutPopupModelObj

// ignore_for_file: must_be_immutable
class LogoutPopupProvider extends ChangeNotifier {LogoutPopupModel logoutPopupModelObj = LogoutPopupModel();

@override void dispose() { super.dispose(); } 
 }
