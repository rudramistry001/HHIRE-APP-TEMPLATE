import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/message_action_screen/models/message_action_model.dart';import '../models/messageaction_item_model.dart';/// A provider class for the MessageActionScreen.
///
/// This provider manages the state of the MessageActionScreen, including the
/// current messageActionModelObj

// ignore_for_file: must_be_immutable
class MessageActionProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

MessageActionModel messageActionModelObj = MessageActionModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
