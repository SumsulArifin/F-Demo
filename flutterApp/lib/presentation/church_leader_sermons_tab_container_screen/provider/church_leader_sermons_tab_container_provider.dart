import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/church_leader_sermons_tab_container_screen/models/church_leader_sermons_tab_container_model.dart';

/// A provider class for the ChurchLeaderSermonsTabContainerScreen.
///
/// This provider manages the state of the ChurchLeaderSermonsTabContainerScreen, including the
/// current churchLeaderSermonsTabContainerModelObj
class ChurchLeaderSermonsTabContainerProvider extends ChangeNotifier {
  ChurchLeaderSermonsTabContainerModel churchLeaderSermonsTabContainerModelObj =
      ChurchLeaderSermonsTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
