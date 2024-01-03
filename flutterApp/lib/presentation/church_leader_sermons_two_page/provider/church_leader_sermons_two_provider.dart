import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/church_leader_sermons_two_page/models/church_leader_sermons_two_model.dart';

/// A provider class for the ChurchLeaderSermonsTwoPage.
///
/// This provider manages the state of the ChurchLeaderSermonsTwoPage, including the
/// current churchLeaderSermonsTwoModelObj
class ChurchLeaderSermonsTwoProvider extends ChangeNotifier {
  ChurchLeaderSermonsTwoModel churchLeaderSermonsTwoModelObj =
      ChurchLeaderSermonsTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
