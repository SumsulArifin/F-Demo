import 'package:flutter/material.dart';import 'package:mdsumsul_s_application5/core/app_export.dart';import 'package:mdsumsul_s_application5/presentation/donate_home_screen/models/donate_home_model.dart';import '../models/donatehomegrid_item_model.dart';/// A provider class for the DonateHomeScreen.
///
/// This provider manages the state of the DonateHomeScreen, including the
/// current donateHomeModelObj

// ignore_for_file: must_be_immutable
class DonateHomeProvider extends ChangeNotifier {DonateHomeModel donateHomeModelObj = DonateHomeModel();

@override void dispose() { super.dispose(); } 
 }
