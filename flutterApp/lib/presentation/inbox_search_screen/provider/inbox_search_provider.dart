import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/inbox_search_screen/models/inbox_search_model.dart';

/// A provider class for the InboxSearchScreen.
///
/// This provider manages the state of the InboxSearchScreen, including the
/// current inboxSearchModelObj
class InboxSearchProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  InboxSearchModel inboxSearchModelObj = InboxSearchModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }
}
