import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBluegray2003a.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder23,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: AppDecoration.fillGray40005.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder23,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 36.v),
                Container(
                  margin: EdgeInsets.only(left: 36.h),
                  padding: EdgeInsets.all(2.h),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.green500,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofilelistItemModelObj.userName!,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
                SizedBox(height: 5.v),
                Text(
                  userprofilelistItemModelObj.userMessage!,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              bottom: 2.v,
            ),
            child: Column(
              children: [
                Text(
                  userprofilelistItemModelObj.messageTime!,
                  style: CustomTextStyles.bodySmallGray90004_1,
                ),
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 24.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder12,
                    ),
                    child: Text(
                      userprofilelistItemModelObj.messageCount!,
                      style: CustomTextStyles.bodySmallOnPrimary_1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
