import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/read_book_screen/models/read_book_model.dart';

/// A provider class for the ReadBookScreen.
///
/// This provider manages the state of the ReadBookScreen, including the
/// current readBookModelObj
class ReadBookProvider extends ChangeNotifier {
  ReadBookModel readBookModelObj = ReadBookModel();

  @override
  void dispose() {
    super.dispose();
  }
}
