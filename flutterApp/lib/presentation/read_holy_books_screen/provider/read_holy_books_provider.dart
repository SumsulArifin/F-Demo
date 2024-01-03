import 'package:flutter/material.dart';import 'package:mdsumsul_s_application5/core/app_export.dart';import 'package:mdsumsul_s_application5/presentation/read_holy_books_screen/models/read_holy_books_model.dart';import '../models/bookexplorerlist_item_model.dart';/// A provider class for the ReadHolyBooksScreen.
///
/// This provider manages the state of the ReadHolyBooksScreen, including the
/// current readHolyBooksModelObj

// ignore_for_file: must_be_immutable
class ReadHolyBooksProvider extends ChangeNotifier {ReadHolyBooksModel readHolyBooksModelObj = ReadHolyBooksModel();

@override void dispose() { super.dispose(); } 
 }
