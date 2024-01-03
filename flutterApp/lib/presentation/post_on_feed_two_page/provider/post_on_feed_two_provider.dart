import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/post_on_feed_two_page/models/post_on_feed_two_model.dart';

/// A provider class for the PostOnFeedTwoPage.
///
/// This provider manages the state of the PostOnFeedTwoPage, including the
/// current postOnFeedTwoModelObj
class PostOnFeedTwoProvider extends ChangeNotifier {
  TextEditingController paragrafController = TextEditingController();

  PostOnFeedTwoModel postOnFeedTwoModelObj = PostOnFeedTwoModel();

  @override
  void dispose() {
    super.dispose();
    paragrafController.dispose();
  }
}
