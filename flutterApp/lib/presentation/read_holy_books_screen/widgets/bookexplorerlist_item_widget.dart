import '../models/bookexplorerlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class BookexplorerlistItemWidget extends StatelessWidget {
  BookexplorerlistItemWidget(
    this.bookexplorerlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BookexplorerlistItemModel bookexplorerlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.gradientGrayToBlue.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder7,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookexplorerlistItemModelObj.bookTitle!,
                  style: CustomTextStyles.titleMediumGray90002,
                ),
                SizedBox(height: 1.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    bookexplorerlistItemModelObj.bookLanguage!,
                    style: CustomTextStyles.bodySmallBluegray40001,
                  ),
                ),
              ],
            ),
            CustomElevatedButton(
              width: 104.h,
              text: "lbl_explore".tr,
              margin: EdgeInsets.only(
                top: 6.v,
                right: 20.h,
                bottom: 7.v,
              ),
              buttonStyle: CustomButtonStyles.outlineBlack,
              buttonTextStyle: CustomTextStyles.labelMediumPoppinsBluegray40001,
            ),
          ],
        ),
      ),
    );
  }
}
