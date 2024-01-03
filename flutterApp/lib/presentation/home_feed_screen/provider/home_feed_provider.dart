import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/home_feed_screen/models/home_feed_model.dart';

/// A provider class for the HomeFeedScreen.
///
/// This provider manages the state of the HomeFeedScreen, including the
/// current homeFeedModelObj
class HomeFeedProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomeFeedModel homeFeedModelObj = HomeFeedModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
