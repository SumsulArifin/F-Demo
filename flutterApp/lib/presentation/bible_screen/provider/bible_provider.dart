import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/bible_screen/models/bible_model.dart';

/// A provider class for the BibleScreen.
///
/// This provider manages the state of the BibleScreen, including the
/// current bibleModelObj
class BibleProvider extends ChangeNotifier {
  BibleModel bibleModelObj = BibleModel();

  @override
  void dispose() {
    super.dispose();
  }
}
