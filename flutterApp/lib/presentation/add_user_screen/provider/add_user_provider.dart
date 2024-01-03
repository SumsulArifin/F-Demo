import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/add_user_screen/models/add_user_model.dart';

/// A provider class for the AddUserScreen.
///
/// This provider manages the state of the AddUserScreen, including the
/// current addUserModelObj
class AddUserProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  AddUserModel addUserModelObj = AddUserModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
