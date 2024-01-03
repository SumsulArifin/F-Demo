import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/donate_screen/models/donate_model.dart';

/// A provider class for the DonateScreen.
///
/// This provider manages the state of the DonateScreen, including the
/// current donateModelObj
class DonateProvider extends ChangeNotifier {
  TextEditingController amountController = TextEditingController();

  TextEditingController writeyournoteController = TextEditingController();

  DonateModel donateModelObj = DonateModel();

  @override
  void dispose() {
    super.dispose();
    amountController.dispose();
    writeyournoteController.dispose();
  }
}
