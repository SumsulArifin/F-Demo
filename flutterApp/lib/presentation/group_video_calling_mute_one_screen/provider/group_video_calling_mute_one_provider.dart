import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/group_video_calling_mute_one_screen/models/group_video_calling_mute_one_model.dart';

/// A provider class for the GroupVideoCallingMuteOneScreen.
///
/// This provider manages the state of the GroupVideoCallingMuteOneScreen, including the
/// current groupVideoCallingMuteOneModelObj
class GroupVideoCallingMuteOneProvider extends ChangeNotifier {
  GroupVideoCallingMuteOneModel groupVideoCallingMuteOneModelObj =
      GroupVideoCallingMuteOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
