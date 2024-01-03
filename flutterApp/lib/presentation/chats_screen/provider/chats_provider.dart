import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/chats_screen/models/chats_model.dart';

/// A provider class for the ChatsScreen.
///
/// This provider manages the state of the ChatsScreen, including the
/// current chatsModelObj
class ChatsProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  ChatsModel chatsModelObj = ChatsModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}
