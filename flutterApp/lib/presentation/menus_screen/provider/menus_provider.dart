import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/menus_screen/models/menus_model.dart';

/// A provider class for the MenusScreen.
///
/// This provider manages the state of the MenusScreen, including the
/// current menusModelObj
class MenusProvider extends ChangeNotifier {
  MenusModel menusModelObj = MenusModel();

  @override
  void dispose() {
    super.dispose();
  }
}
