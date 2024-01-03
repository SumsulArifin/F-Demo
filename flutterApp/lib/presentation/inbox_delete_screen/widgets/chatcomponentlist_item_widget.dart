import '../models/chatcomponentlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class ChatcomponentlistItemWidget extends StatelessWidget {
  ChatcomponentlistItemWidget(
    this.chatcomponentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChatcomponentlistItemModel chatcomponentlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 18.v),
            decoration: AppDecoration.outlineBluegray2003a.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder23,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chatcomponentlistItemModelObj.senderName!,
                        style: CustomTextStyles.titleSmallOnPrimaryContainer,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        chatcomponentlistItemModelObj.messageText!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
                  child: Column(
                    children: [
                      Text(
                        chatcomponentlistItemModelObj.messageTime!,
                        style: CustomTextStyles.bodySmallGray90004_1,
                      ),
                      SizedBox(height: 4.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgRead,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 85.v,
          width: 80.h,
          margin: EdgeInsets.only(left: 8.h),
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 26.v,
          ),
          decoration: AppDecoration.fillRed.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: CustomImageView(
            imagePath: chatcomponentlistItemModelObj?.thumbsUpImage,
            height: 32.adaptSize,
            width: 32.adaptSize,
            alignment: Alignment.topCenter,
          ),
        ),
      ],
    );
  }
}
