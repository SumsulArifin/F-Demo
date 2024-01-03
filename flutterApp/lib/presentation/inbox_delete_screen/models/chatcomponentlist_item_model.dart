import '../../../core/app_export.dart';/// This class is used in the [chatcomponentlist_item_widget] screen.
class ChatcomponentlistItemModel {ChatcomponentlistItemModel({this.senderName, this.messageText, this.messageTime, this.thumbsUpImage, this.id, }) { senderName = senderName  ?? "Gerald Sans";messageText = messageText  ?? "Hai, Lets start meet now!";messageTime = messageTime  ?? "10.00 AM";thumbsUpImage = thumbsUpImage  ?? ImageConstant.imgThumbsUp;id = id  ?? ""; }

String? senderName;

String? messageText;

String? messageTime;

String? thumbsUpImage;

String? id;

 }
