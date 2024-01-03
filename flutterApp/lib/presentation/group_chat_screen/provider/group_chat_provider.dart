import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/group_chat_screen/models/group_chat_model.dart';

/// A provider class for the GroupChatScreen.
///
/// This provider manages the state of the GroupChatScreen, including the
/// current groupChatModelObj
class GroupChatProvider extends ChangeNotifier {
  TextEditingController messageEditTextController = TextEditingController();

  GroupChatModel groupChatModelObj = GroupChatModel();

  @override
  void dispose() {
    super.dispose();
    messageEditTextController.dispose();
  }
}
