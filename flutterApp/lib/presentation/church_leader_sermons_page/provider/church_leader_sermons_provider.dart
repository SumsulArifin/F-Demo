import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/church_leader_sermons_page/models/church_leader_sermons_model.dart';

/// A provider class for the ChurchLeaderSermonsPage.
///
/// This provider manages the state of the ChurchLeaderSermonsPage, including the
/// current churchLeaderSermonsModelObj
class ChurchLeaderSermonsProvider extends ChangeNotifier {
  ChurchLeaderSermonsModel churchLeaderSermonsModelObj =
      ChurchLeaderSermonsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
