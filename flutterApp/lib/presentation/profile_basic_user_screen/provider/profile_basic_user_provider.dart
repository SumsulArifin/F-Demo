import 'package:flutter/material.dart';import 'package:mdsumsul_s_application5/core/app_export.dart';import 'package:mdsumsul_s_application5/presentation/profile_basic_user_screen/models/profile_basic_user_model.dart';/// A provider class for the ProfileBasicUserScreen.
///
/// This provider manages the state of the ProfileBasicUserScreen, including the
/// current profileBasicUserModelObj

// ignore_for_file: must_be_immutable
class ProfileBasicUserProvider extends ChangeNotifier {ProfileBasicUserModel profileBasicUserModelObj = ProfileBasicUserModel();

@override void dispose() { super.dispose(); } 
 }
