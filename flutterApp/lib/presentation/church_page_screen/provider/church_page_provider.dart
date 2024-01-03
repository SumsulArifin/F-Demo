import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/church_page_screen/models/church_page_model.dart';

/// A provider class for the ChurchPageScreen.
///
/// This provider manages the state of the ChurchPageScreen, including the
/// current churchPageModelObj
class ChurchPageProvider extends ChangeNotifier {
  ChurchPageModel churchPageModelObj = ChurchPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
