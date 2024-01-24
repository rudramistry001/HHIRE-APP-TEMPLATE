import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/notifications_my_proposals_page/models/notifications_my_proposals_model.dart';import '../models/notificationsmyproposals_item_model.dart';/// A provider class for the NotificationsMyProposalsPage.
///
/// This provider manages the state of the NotificationsMyProposalsPage, including the
/// current notificationsMyProposalsModelObj

// ignore_for_file: must_be_immutable
class NotificationsMyProposalsProvider extends ChangeNotifier {NotificationsMyProposalsModel notificationsMyProposalsModelObj = NotificationsMyProposalsModel();

@override void dispose() { super.dispose(); } 
 }
