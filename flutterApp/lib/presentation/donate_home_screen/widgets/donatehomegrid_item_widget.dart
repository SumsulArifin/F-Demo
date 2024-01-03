import '../models/donatehomegrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DonatehomegridItemWidget extends StatelessWidget {
  DonatehomegridItemWidget(
    this.donatehomegridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DonatehomegridItemModel donatehomegridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(9.h),
            child: CustomImageView(
              imagePath: donatehomegridItemModelObj?.linkedin,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            donatehomegridItemModelObj.searchText!,
            style: CustomTextStyles.labelMediumPoppinsGray90002Medium_1,
          ),
          SizedBox(height: 4.v),
          Text(
            donatehomegridItemModelObj.nearestChurchesText!,
            style: CustomTextStyles.bodySmallBluegray4000111_3,
          ),
        ],
      ),
    );
  }
}
