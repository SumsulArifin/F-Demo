import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/sign_up_screen/models/sign_up_model.dart';

/// A provider class for the SignUpScreen.
///
/// This provider manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  SignUpModel signUpModelObj = SignUpModel();

  @override
  void dispose() {
    super.dispose();
  }
}
