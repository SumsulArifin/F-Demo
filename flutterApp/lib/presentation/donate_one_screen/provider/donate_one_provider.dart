import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/donate_one_screen/models/donate_one_model.dart';

/// A provider class for the DonateOneScreen.
///
/// This provider manages the state of the DonateOneScreen, including the
/// current donateOneModelObj
class DonateOneProvider extends ChangeNotifier {
  DonateOneModel donateOneModelObj = DonateOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
