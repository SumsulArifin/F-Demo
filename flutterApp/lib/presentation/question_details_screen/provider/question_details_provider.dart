import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/question_details_screen/models/question_details_model.dart';

/// A provider class for the QuestionDetailsScreen.
///
/// This provider manages the state of the QuestionDetailsScreen, including the
/// current questionDetailsModelObj
class QuestionDetailsProvider extends ChangeNotifier {
  TextEditingController commentController = TextEditingController();

  QuestionDetailsModel questionDetailsModelObj = QuestionDetailsModel();

  @override
  void dispose() {
    super.dispose();
    commentController.dispose();
  }
}
