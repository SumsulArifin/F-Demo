import 'models/donate_one_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_icon_button.dart';
import 'provider/donate_one_provider.dart';

class DonateOneScreen extends StatefulWidget {
  const DonateOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DonateOneScreenState createState() => DonateOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DonateOneProvider(),
      child: DonateOneScreen(),
    );
  }
}

class DonateOneScreenState extends State<DonateOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5006,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildHeader(context),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 29.h),
                    child: Text(
                      "msg_sunny_city_church".tr,
                      style: CustomTextStyles.labelLargeGray90002Bold,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                Container(
                  width: 311.h,
                  margin: EdgeInsets.only(
                    left: 29.h,
                    right: 34.h,
                  ),
                  child: Text(
                    "msg_nulla_pellentesque".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallBluegray4000111_3.copyWith(
                      height: 1.86,
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                _buildButtons(context),
                SizedBox(height: 26.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 29.h),
                    child: Text(
                      "msg_select_a_operation".tr,
                      style: CustomTextStyles.labelLargeGray9000213_1,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                _buildItem(context),
                SizedBox(height: 13.v),
                _buildItem1(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return SizedBox(
      height: 250.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 98.v),
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownOnprimary,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 104.v,
                    ),
                  ),
                  Spacer(
                    flex: 47,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 100.v),
                    child: Text(
                      "lbl_donate_detail".tr,
                      style: CustomTextStyles.titleSmallOnPrimarySemiBold,
                    ),
                  ),
                  Spacer(
                    flex: 52,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconOnprimary,
                    height: 12.v,
                    width: 1.h,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 104.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 172.v,
              width: 205.h,
              decoration: BoxDecoration(
                color: appTheme.gray10002,
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowButton(BuildContext context) {
    return CustomElevatedButton(
      height: 39.v,
      width: 152.h,
      text: "lbl_follow".tr,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsOnPrimaryBold,
    );
  }

  /// Section Widget
  Widget _buildShareButton(BuildContext context) {
    return CustomElevatedButton(
      height: 39.v,
      width: 152.h,
      text: "lbl_share".tr,
      margin: EdgeInsets.only(left: 11.h),
      buttonStyle: CustomButtonStyles.outlineBlackTL4,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsPrimary,
    );
  }

  /// Section Widget
  Widget _buildButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFollowButton(context),
          _buildShareButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseButton1(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      text: "lbl_choose".tr,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsOnPrimaryBold_2,
    );
  }

  /// Section Widget
  Widget _buildItem(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 29.h),
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_put_a_candle".tr,
            style: CustomTextStyles.labelMediumPoppinsGray90002Medium_1,
          ),
          SizedBox(height: 5.v),
          Text(
            "lbl_22".tr,
            style: CustomTextStyles.bodySmallBluegray4000111_1,
          ),
          SizedBox(height: 13.v),
          CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(4.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgSearchBlueGray40001,
            ),
          ),
          SizedBox(height: 13.v),
          _buildChooseButton1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseButton2(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      text: "lbl_choose".tr,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsOnPrimaryBold_2,
    );
  }

  /// Section Widget
  Widget _buildItem1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 29.h),
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_scripture".tr,
            style: CustomTextStyles.labelMediumPoppinsGray90002Medium_1,
          ),
          SizedBox(height: 3.v),
          Text(
            "lbl_10".tr,
            style: CustomTextStyles.bodySmallBluegray4000111_1,
          ),
          SizedBox(height: 13.v),
          CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(5.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIcon,
            ),
          ),
          SizedBox(height: 13.v),
          _buildChooseButton2(context),
        ],
      ),
    );
  }
}
