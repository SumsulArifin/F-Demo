import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/forum_profile_screen/models/forum_profile_model.dart';

/// A provider class for the ForumProfileScreen.
///
/// This provider manages the state of the ForumProfileScreen, including the
/// current forumProfileModelObj
class ForumProfileProvider extends ChangeNotifier {
  ForumProfileModel forumProfileModelObj = ForumProfileModel();

  @override
  void dispose() {
    super.dispose();
  }
}
