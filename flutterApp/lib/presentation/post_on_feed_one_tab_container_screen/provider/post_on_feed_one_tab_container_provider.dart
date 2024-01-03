import 'package:flutter/material.dart';import 'package:mdsumsul_s_application5/core/app_export.dart';import 'package:mdsumsul_s_application5/presentation/post_on_feed_one_tab_container_screen/models/post_on_feed_one_tab_container_model.dart';/// A provider class for the PostOnFeedOneTabContainerScreen.
///
/// This provider manages the state of the PostOnFeedOneTabContainerScreen, including the
/// current postOnFeedOneTabContainerModelObj

// ignore_for_file: must_be_immutable
class PostOnFeedOneTabContainerProvider extends ChangeNotifier {PostOnFeedOneTabContainerModel postOnFeedOneTabContainerModelObj = PostOnFeedOneTabContainerModel();

@override void dispose() { super.dispose(); } 
 }
