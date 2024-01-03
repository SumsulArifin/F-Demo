import 'package:flutter/material.dart';import 'package:mdsumsul_s_application5/core/app_export.dart';import 'package:mdsumsul_s_application5/presentation/inbox_delete_screen/models/inbox_delete_model.dart';import '../models/chatcomponentlist_item_model.dart';/// A provider class for the InboxDeleteScreen.
///
/// This provider manages the state of the InboxDeleteScreen, including the
/// current inboxDeleteModelObj

// ignore_for_file: must_be_immutable
class InboxDeleteProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

InboxDeleteModel inboxDeleteModelObj = InboxDeleteModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
