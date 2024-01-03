import '../../../core/app_export.dart';/// This class is used in the [bookexplorerlist_item_widget] screen.
class BookexplorerlistItemModel {BookexplorerlistItemModel({this.bookTitle, this.bookLanguage, this.id, }) { bookTitle = bookTitle  ?? "Genesis";bookLanguage = bookLanguage  ?? "50 Chapters";id = id  ?? ""; }

String? bookTitle;

String? bookLanguage;

String? id;

 }
