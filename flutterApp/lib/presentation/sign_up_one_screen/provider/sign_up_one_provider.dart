import 'package:flutter/material.dart';import 'package:mdsumsul_s_application5/core/app_export.dart';import 'package:mdsumsul_s_application5/presentation/sign_up_one_screen/models/sign_up_one_model.dart';/// A provider class for the SignUpOneScreen.
///
/// This provider manages the state of the SignUpOneScreen, including the
/// current signUpOneModelObj

// ignore_for_file: must_be_immutable
class SignUpOneProvider extends ChangeNotifier {SignUpOneModel signUpOneModelObj = SignUpOneModel();

@override void dispose() { super.dispose(); } 
 }
