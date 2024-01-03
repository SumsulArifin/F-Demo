import '../models/followerscountsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mdsumsul_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class FollowerscountsectionItemWidget extends StatelessWidget {
  FollowerscountsectionItemWidget(
    this.followerscountsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FollowerscountsectionItemModel followerscountsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 89.h,
      padding: EdgeInsets.all(6.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettingsPrimary,
            height: 6.adaptSize,
            width: 6.adaptSize,
            margin: EdgeInsets.only(top: 123.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 122.v,
            ),
            child: Text(
              followerscountsectionItemModelObj.followersCount!,
              style: CustomTextStyles.poppinsGray600,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorPrimary,
            height: 4.v,
            width: 6.h,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 123.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 122.v,
            ),
            child: Text(
              followerscountsectionItemModelObj.likesCount!,
              style: CustomTextStyles.poppinsGray600,
            ),
          ),
        ],
      ),
    );
  }
}
