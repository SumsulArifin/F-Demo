import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/forums_screen/models/forums_model.dart';

/// A provider class for the ForumsScreen.
///
/// This provider manages the state of the ForumsScreen, including the
/// current forumsModelObj
class ForumsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  ForumsModel forumsModelObj = ForumsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
