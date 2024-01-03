import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/groups_screen/models/groups_model.dart';

/// A provider class for the GroupsScreen.
///
/// This provider manages the state of the GroupsScreen, including the
/// current groupsModelObj
class GroupsProvider extends ChangeNotifier {
  GroupsModel groupsModelObj = GroupsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
