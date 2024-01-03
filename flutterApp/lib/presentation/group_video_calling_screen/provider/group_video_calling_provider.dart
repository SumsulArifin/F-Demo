import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/group_video_calling_screen/models/group_video_calling_model.dart';

/// A provider class for the GroupVideoCallingScreen.
///
/// This provider manages the state of the GroupVideoCallingScreen, including the
/// current groupVideoCallingModelObj
class GroupVideoCallingProvider extends ChangeNotifier {
  GroupVideoCallingModel groupVideoCallingModelObj = GroupVideoCallingModel();

  @override
  void dispose() {
    super.dispose();
  }
}
