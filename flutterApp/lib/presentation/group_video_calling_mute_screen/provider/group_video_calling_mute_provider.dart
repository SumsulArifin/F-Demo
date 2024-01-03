import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/group_video_calling_mute_screen/models/group_video_calling_mute_model.dart';

/// A provider class for the GroupVideoCallingMuteScreen.
///
/// This provider manages the state of the GroupVideoCallingMuteScreen, including the
/// current groupVideoCallingMuteModelObj
class GroupVideoCallingMuteProvider extends ChangeNotifier {
  GroupVideoCallingMuteModel groupVideoCallingMuteModelObj =
      GroupVideoCallingMuteModel();

  @override
  void dispose() {
    super.dispose();
  }
}
