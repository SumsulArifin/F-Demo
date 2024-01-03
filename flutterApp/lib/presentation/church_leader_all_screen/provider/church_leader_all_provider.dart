import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/church_leader_all_screen/models/church_leader_all_model.dart';

/// A provider class for the ChurchLeaderAllScreen.
///
/// This provider manages the state of the ChurchLeaderAllScreen, including the
/// current churchLeaderAllModelObj
class ChurchLeaderAllProvider extends ChangeNotifier {
  ChurchLeaderAllModel churchLeaderAllModelObj = ChurchLeaderAllModel();

  @override
  void dispose() {
    super.dispose();
  }
}
