import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/post_on_feed_one_page/models/post_on_feed_one_model.dart';

/// A provider class for the PostOnFeedOnePage.
///
/// This provider manages the state of the PostOnFeedOnePage, including the
/// current postOnFeedOneModelObj
class PostOnFeedOneProvider extends ChangeNotifier {
  TextEditingController paragrafController = TextEditingController();

  PostOnFeedOneModel postOnFeedOneModelObj = PostOnFeedOneModel();

  @override
  void dispose() {
    super.dispose();
    paragrafController.dispose();
  }
}
