import '../../../core/app_export.dart';/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {UserprofilelistItemModel({this.userName, this.userMessage, this.messageTime, this.messageCount, this.id, }) { userName = userName  ?? "Gabriella Michalle";userMessage = userMessage  ?? "Hi, how about your progress..";messageTime = messageTime  ?? "10.00 AM";messageCount = messageCount  ?? "2";id = id  ?? ""; }

String? userName;

String? userMessage;

String? messageTime;

String? messageCount;

String? id;

 }
