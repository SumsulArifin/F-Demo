import 'package:flutter/material.dart';import 'package:mdsumsul_s_application5/core/app_export.dart';import 'package:mdsumsul_s_application5/presentation/inbox_screen/models/inbox_model.dart';import '../models/userprofilelist_item_model.dart';/// A provider class for the InboxScreen.
///
/// This provider manages the state of the InboxScreen, including the
/// current inboxModelObj

// ignore_for_file: must_be_immutable
class InboxProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

InboxModel inboxModelObj = InboxModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
