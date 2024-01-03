import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/create_groups_screen/models/create_groups_model.dart';

/// A provider class for the CreateGroupsScreen.
///
/// This provider manages the state of the CreateGroupsScreen, including the
/// current createGroupsModelObj
class CreateGroupsProvider extends ChangeNotifier {
  CreateGroupsModel createGroupsModelObj = CreateGroupsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
