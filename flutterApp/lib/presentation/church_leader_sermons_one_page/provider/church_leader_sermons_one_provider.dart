import 'package:flutter/material.dart';import 'package:mdsumsul_s_application5/core/app_export.dart';import 'package:mdsumsul_s_application5/presentation/church_leader_sermons_one_page/models/church_leader_sermons_one_model.dart';import '../models/followerscountsection_item_model.dart';/// A provider class for the ChurchLeaderSermonsOnePage.
///
/// This provider manages the state of the ChurchLeaderSermonsOnePage, including the
/// current churchLeaderSermonsOneModelObj

// ignore_for_file: must_be_immutable
class ChurchLeaderSermonsOneProvider extends ChangeNotifier {ChurchLeaderSermonsOneModel churchLeaderSermonsOneModelObj = ChurchLeaderSermonsOneModel();

@override void dispose() { super.dispose(); } 
 }
