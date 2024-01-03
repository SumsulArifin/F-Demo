import 'models/home_feed_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_search_view.dart';
import 'provider/home_feed_provider.dart';

class HomeFeedScreen extends StatefulWidget {
  const HomeFeedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeFeedScreenState createState() => HomeFeedScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeFeedProvider(),
      child: HomeFeedScreen(),
    );
  }
}

class HomeFeedScreenState extends State<HomeFeedScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                right: 5.h,
                bottom: 85.v,
              ),
              child: Column(
                children: [
                  _buildLogoBasiileaOneSection(context),
                  SizedBox(height: 33.v),
                  _buildFollowSection(context),
                  SizedBox(height: 18.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbnail,
                    height: 185.v,
                    width: 327.h,
                  ),
                  SizedBox(height: 25.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.h),
                    child: _buildInfo(
                      context,
                      likesCount: "lbl_120_likes".tr,
                      commentsCount: "lbl_6_comments".tr,
                      shareText: "lbl_share_this_post".tr,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Divider(
                    color: appTheme.blueGray10004,
                    indent: 15.h,
                    endIndent: 23.h,
                  ),
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_are_unicorns_real".tr,
                        style: CustomTextStyles
                            .titleMediumMulishBlack90001SemiBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 306.h,
                      margin: EdgeInsets.only(
                        left: 17.h,
                        right: 39.h,
                      ),
                      child: Text(
                        "msg_it_may_come_as_a".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.bodySmallMulishGray60001.copyWith(
                          height: 1.58,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Divider(
                    color: appTheme.blueGray10004,
                    indent: 15.h,
                    endIndent: 23.h,
                  ),
                  SizedBox(height: 21.v),
                  _buildAmandaGaleSection(context),
                  SizedBox(height: 19.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbnail,
                    height: 185.v,
                    width: 327.h,
                  ),
                  SizedBox(height: 25.v),
                  _buildVectorFourSection(context),
                  SizedBox(height: 19.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbnail,
                    height: 58.v,
                    width: 327.h,
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 21.h,
                    ),
                    child: _buildInfo(
                      context,
                      likesCount: "lbl_120_likes".tr,
                      commentsCount: "lbl_6_comments".tr,
                      shareText: "lbl_share_this_post".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogoBasiileaOneSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL22,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 3.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLogoBasiilea1,
                        height: 56.adaptSize,
                        width: 56.adaptSize,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLogoNw155x56,
                        height: 55.v,
                        width: 56.h,
                        radius: BorderRadius.circular(
                          27.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 44.v,
                  width: 76.h,
                  margin: EdgeInsets.only(
                    top: 8.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 29.v),
          Container(
            width: 303.h,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 15.h,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_wellcome".tr,
                    style: CustomTextStyles.titleLargeOnPrimary,
                  ),
                  TextSpan(
                    text: " ".tr,
                    style: CustomTextStyles.titleLargeOnPrimary,
                  ),
                  TextSpan(
                    text: "lbl_c".tr,
                    style: CustomTextStyles.titleLargeOnPrimaryRegular,
                  ),
                  TextSpan(
                    text: "msg_onsectetur_adipiscing".tr,
                    style: CustomTextStyles.titleLargeOnPrimaryRegular,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 10.v),
          Selector<HomeFeedProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.searchController,
            builder: (context, searchController, child) {
              return CustomSearchView(
                controller: searchController,
                hintText: "lbl_search_friends".tr,
              );
            },
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Text(
                "lbl_advance_filter".tr,
                style: CustomTextStyles.bodyMediumMulishOnPrimary.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          SizedBox(height: 22.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 47.adaptSize,
            width: 47.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_william_grace".tr,
                  style: CustomTextStyles.titleMediumMulishBlack900,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_1_5k_followers".tr,
                  style: CustomTextStyles.labelMediumGray50004,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 30.v,
            width: 86.h,
            text: "lbl_follow".tr,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 10.v,
            ),
            buttonStyle: CustomButtonStyles.fillPrimaryTL15,
            buttonTextStyle: CustomTextStyles.labelLargeMulishGray20003,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAmandaGaleSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 45.adaptSize,
            width: 45.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 2.v,
              bottom: 4.v,
            ),
            child: _buildContrastSection(
              context,
              userImage: "lbl_amanda_gale".tr,
              followersCount: "lbl_1_1k_followers".tr,
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 30.v,
            width: 86.h,
            text: "lbl_follow".tr,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 9.v,
            ),
            buttonStyle: CustomButtonStyles.fillPrimaryTL15,
            buttonTextStyle: CustomTextStyles.labelLargeMulishGray20003,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorFourSection(BuildContext context) {
    return SizedBox(
      height: 108.v,
      width: 334.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 41.v),
              child: SizedBox(
                width: 324.h,
                child: Divider(
                  color: appTheme.blueGray10004,
                ),
              ),
            ),
          ),
          _buildInfo(
            context,
            likesCount: "lbl_120_likes".tr,
            commentsCount: "lbl_6_comments".tr,
            shareText: "lbl_share_this_post".tr,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 73.adaptSize,
              width: 73.adaptSize,
              margin: EdgeInsets.only(top: 15.v),
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 22.v,
              ),
              decoration: AppDecoration.outlineBlueGrayF.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder36,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgBiPlusLg,
                height: 28.v,
                width: 27.h,
                alignment: Alignment.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 2.v,
                      bottom: 4.v,
                    ),
                    child: _buildContrastSection(
                      context,
                      userImage: "lbl_amanda_gale".tr,
                      followersCount: "lbl_1_1k_followers".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildInfo(
    BuildContext context, {
    required String likesCount,
    required String commentsCount,
    required String shareText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFavorite,
          height: 16.v,
          width: 19.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(
            likesCount,
            style: theme.textTheme.labelMedium!.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUserGray40006,
          height: 16.v,
          width: 17.h,
          margin: EdgeInsets.only(left: 18.h),
        ),
        Padding(
          padding: EdgeInsets.only(left: 11.h),
          child: Text(
            commentsCount,
            style: theme.textTheme.labelMedium!.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSend,
          height: 15.adaptSize,
          width: 15.adaptSize,
          margin: EdgeInsets.only(left: 18.h),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            shareText,
            style: theme.textTheme.labelMedium!.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildContrastSection(
    BuildContext context, {
    required String userImage,
    required String followersCount,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userImage,
          style: CustomTextStyles.titleMediumMulishBlack900.copyWith(
            color: appTheme.black900,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          followersCount,
          style: CustomTextStyles.labelMediumGray5000410.copyWith(
            color: appTheme.gray50004,
          ),
        ),
      ],
    );
  }
}
