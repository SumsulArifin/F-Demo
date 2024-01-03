import '../../../core/app_export.dart';/// This class is used in the [donatehomegrid_item_widget] screen.
class DonatehomegridItemModel {DonatehomegridItemModel({this.linkedin, this.searchText, this.nearestChurchesText, this.id, }) { linkedin = linkedin  ?? ImageConstant.imgLinkedin;searchText = searchText  ?? "Search Church";nearestChurchesText = nearestChurchesText  ?? "Nearest churches";id = id  ?? ""; }

String? linkedin;

String? searchText;

String? nearestChurchesText;

String? id;

 }
