import 'models/menus_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'provider/menus_provider.dart';

class MenusScreen extends StatefulWidget {
  const MenusScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MenusScreenState createState() => MenusScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MenusProvider(),
      child: MenusScreen(),
    );
  }
}

class MenusScreenState extends State<MenusScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 29.v),
              child: Column(
                children: [
                  _buildContrastRow(context),
                  SizedBox(height: 16.v),
                  _buildStatisticColumn(context),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: _buildForumsRow(
                      context,
                      forums: "lbl_activity".tr,
                      seeYourRecent: "msg_see_your_recent".tr,
                      thirtyFive: "lbl_35".tr,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  _buildFriendsRow(context),
                  SizedBox(height: 28.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: _buildSRow(
                      context,
                      groupsLabel: "lbl_messages".tr,
                      messageText: "msg_message_your_friends".tr,
                      twoLabel: "lbl_2".tr,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  _buildAlbumsRow(context),
                  SizedBox(height: 24.v),
                  _buildFavoritesRow(context),
                  SizedBox(height: 25.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: _buildForumsRow(
                      context,
                      forums: "lbl_forums".tr,
                      seeYourRecent: "msg_see_your_recent".tr,
                      thirtyFive: "lbl_35".tr,
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: _buildSRow(
                      context,
                      groupsLabel: "lbl_groups".tr,
                      messageText: "msg_message_your_friends".tr,
                      twoLabel: "lbl_2".tr,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  _buildDelateAccountRow(context),
                  SizedBox(height: 26.v),
                  _buildDonationHistoryRow(context),
                  SizedBox(height: 27.v),
                  _buildLanguageRow(context),
                  SizedBox(height: 42.v),
                  Divider(),
                  SizedBox(height: 26.v),
                  _buildPrivacyPolicyRow(context),
                  SizedBox(height: 25.v),
                  _buildButtonSecondaryStack(
                    context,
                    userImage: ImageConstant.imgVector,
                    logOut: "msg_switch_to_church".tr,
                  ),
                  SizedBox(height: 13.v),
                  _buildButtonSecondaryStack(
                    context,
                    userImage: ImageConstant.imgVectorRedA200,
                    logOut: "lbl_log_out".tr,
                  ),
                  SizedBox(height: 13.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContrastRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 55.adaptSize,
            width: 55.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 6.v,
              bottom: 3.v,
            ),
            child: _buildPrivacyPolicy(
              context,
              privacyPolicyText: "lbl_prince_armand".tr,
              protectYourPrivacyText: "msg_princearmand100".tr,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgButtonNext,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStatisticColumn(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPurple,
      child: Column(
        children: [
          Divider(),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(2.h),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Container(
                    height: 76.v,
                    width: 84.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 13.h,
                      vertical: 10.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup461,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              "lbl_6_3k".tr,
                              style: CustomTextStyles.headlineSmallOnPrimary_1,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "lbl_followers".tr,
                            style: CustomTextStyles.bodySmallOnPrimary_2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                _buildKRow(
                  context,
                  kText: "lbl_572".tr,
                  followingText: "lbl_post".tr,
                ),
                _buildKRow(
                  context,
                  kText: "lbl_2_5k".tr,
                  followingText: "lbl_following".tr,
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFriendsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_friends".tr,
                style: CustomTextStyles.titleSmallGray90001_1,
              ),
              SizedBox(height: 3.v),
              Text(
                "msg_friendlist_totals".tr,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAlbumsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_albums".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 5.v),
              Text(
                "msg_save_or_post_your".tr,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFavoritesRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_favorites".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 5.v),
              Text(
                "msg_friends_you_love".tr,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDelateAccountRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDelateAccount(
            context,
            delateAccountText: "lbl_delate_account".tr,
            messageYourFriendsText: "msg_message_your_friends".tr,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDonationHistoryRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_donation_history".tr,
                  style: CustomTextStyles.titleSmallGray90001_1,
                ),
                SizedBox(height: 3.v),
                Text(
                  "msg_checkout_your_previous".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(
              left: 46.h,
              top: 2.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_language".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 2.v),
              Text(
                "msg_change_your_language".tr,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(bottom: 6.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrivacyPolicyRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPrivacyPolicy(
            context,
            privacyPolicyText: "lbl_privacy_policy".tr,
            protectYourPrivacyText: "msg_protect_your_privacy".tr,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCloseGray20002,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildKRow(
    BuildContext context, {
    required String kText,
    required String followingText,
  }) {
    return SizedBox(
      height: 82.v,
      width: 90.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 82.v,
              width: 90.h,
              decoration: AppDecoration.fillOnPrimary1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgFile,
                height: 81.v,
                width: 89.h,
                alignment: Alignment.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 15.v),
              child: Text(
                kText,
                style: theme.textTheme.headlineSmall!.copyWith(
                  color: appTheme.gray900,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 11.v),
              child: Text(
                followingText,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.gray50001,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildForumsRow(
    BuildContext context, {
    required String forums,
    required String seeYourRecent,
    required String thirtyFive,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              forums,
              style: CustomTextStyles.titleSmallGray90001_1.copyWith(
                color: appTheme.gray90001,
              ),
            ),
            SizedBox(height: 4.v),
            Text(
              seeYourRecent,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray50001,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 8.v,
            bottom: 12.v,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    thirtyFive,
                    style: CustomTextStyles.labelLargePrimary.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgClock,
          height: 36.adaptSize,
          width: 36.adaptSize,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 3.v,
            bottom: 5.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSRow(
    BuildContext context, {
    required String groupsLabel,
    required String messageText,
    required String twoLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              groupsLabel,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.gray900,
              ),
            ),
            SizedBox(height: 2.v),
            Text(
              messageText,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray50001,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 6.v,
            bottom: 13.v,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    twoLabel,
                    style: CustomTextStyles.labelLargePrimary.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgClock,
          height: 36.adaptSize,
          width: 36.adaptSize,
          margin: EdgeInsets.only(
            left: 24.h,
            bottom: 6.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildDelateAccount(
    BuildContext context, {
    required String delateAccountText,
    required String messageYourFriendsText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          delateAccountText,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          messageYourFriendsText,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray50001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPrivacyPolicy(
    BuildContext context, {
    required String privacyPolicyText,
    required String protectYourPrivacyText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          privacyPolicyText,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          protectYourPrivacyText,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray50001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildButtonSecondaryStack(
    BuildContext context, {
    required String userImage,
    required String logOut,
  }) {
    return SizedBox(
      height: 58.v,
      width: 325.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: CustomImageView(
                imagePath: userImage,
                height: 57.v,
                width: 324.h,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15.v),
              child: Text(
                logOut,
                style: CustomTextStyles.titleSmallRedA200.copyWith(
                  color: appTheme.redA200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
