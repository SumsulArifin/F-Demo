import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/sign_up_two_screen/models/sign_up_two_model.dart';

/// A provider class for the SignUpTwoScreen.
///
/// This provider manages the state of the SignUpTwoScreen, including the
/// current signUpTwoModelObj
class SignUpTwoProvider extends ChangeNotifier {
  TextEditingController firstNameSectionController = TextEditingController();

  TextEditingController lastNameSectionController = TextEditingController();

  TextEditingController emailSectionController = TextEditingController();

  TextEditingController passwordSectionController = TextEditingController();

  SignUpTwoModel signUpTwoModelObj = SignUpTwoModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    firstNameSectionController.dispose();
    lastNameSectionController.dispose();
    emailSectionController.dispose();
    passwordSectionController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
