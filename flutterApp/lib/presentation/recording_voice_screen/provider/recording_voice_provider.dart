import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/recording_voice_screen/models/recording_voice_model.dart';

/// A provider class for the RecordingVoiceScreen.
///
/// This provider manages the state of the RecordingVoiceScreen, including the
/// current recordingVoiceModelObj
class RecordingVoiceProvider extends ChangeNotifier {
  RecordingVoiceModel recordingVoiceModelObj = RecordingVoiceModel();

  @override
  void dispose() {
    super.dispose();
  }
}
