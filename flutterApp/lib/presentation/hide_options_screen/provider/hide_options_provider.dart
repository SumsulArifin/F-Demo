import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/hide_options_screen/models/hide_options_model.dart';

/// A provider class for the HideOptionsScreen.
///
/// This provider manages the state of the HideOptionsScreen, including the
/// current hideOptionsModelObj
class HideOptionsProvider extends ChangeNotifier {
  HideOptionsModel hideOptionsModelObj = HideOptionsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
