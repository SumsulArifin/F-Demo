import 'package:flutter/material.dart';import 'package:mdsumsul_s_application5/core/app_export.dart';import 'package:mdsumsul_s_application5/presentation/comment_screen/models/comment_model.dart';/// A provider class for the CommentScreen.
///
/// This provider manages the state of the CommentScreen, including the
/// current commentModelObj

// ignore_for_file: must_be_immutable
class CommentProvider extends ChangeNotifier {CommentModel commentModelObj = CommentModel();

@override void dispose() { super.dispose(); } 
 }
