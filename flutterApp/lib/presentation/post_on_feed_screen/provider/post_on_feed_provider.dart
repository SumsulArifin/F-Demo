import 'package:flutter/material.dart';import 'package:mdsumsul_s_application5/core/app_export.dart';import 'package:mdsumsul_s_application5/presentation/post_on_feed_screen/models/post_on_feed_model.dart';/// A provider class for the PostOnFeedScreen.
///
/// This provider manages the state of the PostOnFeedScreen, including the
/// current postOnFeedModelObj

// ignore_for_file: must_be_immutable
class PostOnFeedProvider extends ChangeNotifier {TextEditingController whatsOnYourMindController = TextEditingController();

PostOnFeedModel postOnFeedModelObj = PostOnFeedModel();

@override void dispose() { super.dispose(); whatsOnYourMindController.dispose(); } 
onSelected(dynamic value) { for (var element in postOnFeedModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
