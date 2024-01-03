import 'models/forum_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'provider/forum_profile_provider.dart';

class ForumProfileScreen extends StatefulWidget {
  const ForumProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForumProfileScreenState createState() => ForumProfileScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForumProfileProvider(),
      child: ForumProfileScreen(),
    );
  }
}

class ForumProfileScreenState extends State<ForumProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10004,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildMainStack(context),
              SizedBox(height: 11.v),
              Text(
                "msg_prince_armand_kedje".tr,
                style: CustomTextStyles.titleMediumPlusJakartaSansBlack90001,
              ),
              SizedBox(height: 6.v),
              Text(
                "lbl_user".tr,
                style: CustomTextStyles.bodyMediumPlusJakartaSansBlack90001,
              ),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: _buildSavedPostRow(
                  context,
                  savedPostText: "lbl_my_post".tr,
                  seeAllText: "lbl_see_all".tr,
                ),
              ),
              SizedBox(height: 13.v),
              _buildPost1Column(context),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: _buildSavedPostRow(
                  context,
                  savedPostText: "lbl_saved_post".tr,
                  seeAllText: "lbl_see_all".tr,
                ),
              ),
              SizedBox(height: 15.v),
              _buildPost2Column(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
      height: 120.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 77.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 104.adaptSize,
              width: 104.adaptSize,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  52.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMusicButton(BuildContext context) {
    return CustomElevatedButton(
      height: 22.v,
      width: 43.h,
      text: "lbl_music".tr,
      buttonStyle: CustomButtonStyles.fillBlueGrayTL8,
      buttonTextStyle: CustomTextStyles.bodySmallInterGray70005,
    );
  }

  /// Section Widget
  Widget _buildEntertainmentButton(BuildContext context) {
    return CustomElevatedButton(
      height: 22.v,
      width: 74.h,
      text: "lbl_entertainment".tr,
      margin: EdgeInsets.only(left: 6.h),
      buttonStyle: CustomButtonStyles.fillBlueGrayTL8,
      buttonTextStyle: CustomTextStyles.bodySmallInterGray70005,
    );
  }

  /// Section Widget
  Widget _buildPost1Column(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClockBlueGray10003,
                height: 33.adaptSize,
                width: 33.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_tiana_rosser".tr,
                      style:
                          CustomTextStyles.titleSmallPlusJakartaSansBlack90001,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "lbl_song_writer".tr,
                      style:
                          CustomTextStyles.bodySmallPlusJakartaSansBlack90001,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Container(
            width: 278.h,
            margin: EdgeInsets.only(right: 12.h),
            child: Text(
              "msg_lorem_ipsum_dolor6".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallPlusJakartaSansBluegray90003
                  .copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            children: [
              _buildMusicButton(context),
              _buildEntertainmentButton(context),
            ],
          ),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.gray20003,
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAntDesignLikeOutlinedBlack90001,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_120_votes".tr,
                  style: CustomTextStyles.bodySmallPlusJakartaSansBlack90001,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAntDesignCommentOutlined,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(
                  left: 16.h,
                  bottom: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_13_replies".tr,
                  style: CustomTextStyles.bodySmallPlusJakartaSansBlack90001,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDesignButton(BuildContext context) {
    return CustomElevatedButton(
      height: 22.v,
      width: 47.h,
      text: "lbl_design".tr,
      buttonStyle: CustomButtonStyles.fillBlueGrayTL8,
      buttonTextStyle: CustomTextStyles.bodySmallInterGray70005,
    );
  }

  /// Section Widget
  Widget _buildArtButton(BuildContext context) {
    return CustomElevatedButton(
      height: 22.v,
      width: 32.h,
      text: "lbl_art".tr,
      margin: EdgeInsets.only(left: 6.h),
      buttonStyle: CustomButtonStyles.fillBlueGrayTL8,
      buttonTextStyle: CustomTextStyles.bodySmallInterGray70005,
    );
  }

  /// Section Widget
  Widget _buildPost2Column(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClockBlueGray10003,
                height: 33.adaptSize,
                width: 33.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_makenna_stanton".tr,
                      style:
                          CustomTextStyles.titleSmallPlusJakartaSansBlack90001,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "msg_graphic_designer".tr,
                      style:
                          CustomTextStyles.bodySmallPlusJakartaSansBlack90001,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Container(
            width: 278.h,
            margin: EdgeInsets.only(right: 12.h),
            child: Text(
              "msg_lorem_ipsum_dolor6".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallPlusJakartaSansBluegray90003
                  .copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            children: [
              _buildDesignButton(context),
              _buildArtButton(context),
            ],
          ),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.gray20003,
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAntDesignLikeOutlinedBlack90001,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_120_votes".tr,
                  style: CustomTextStyles.bodySmallPlusJakartaSansBlack90001,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAntDesignCommentOutlined,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(
                  left: 16.h,
                  bottom: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_24_replies".tr,
                  style: CustomTextStyles.bodySmallPlusJakartaSansBlack90001,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSavedPostRow(
    BuildContext context, {
    required String savedPostText,
    required String seeAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          savedPostText,
          style:
              CustomTextStyles.titleMediumPlusJakartaSansBluegray90003.copyWith(
            color: appTheme.blueGray90003,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 4.v,
          ),
          child: Text(
            seeAllText,
            style: CustomTextStyles.bodySmallPlusJakartaSansBluegray90003_1
                .copyWith(
              color: appTheme.blueGray90003,
            ),
          ),
        ),
      ],
    );
  }
}
