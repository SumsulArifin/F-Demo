import 'models/church_leader_sermons_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'provider/church_leader_sermons_provider.dart';

// ignore_for_file: must_be_immutable
class ChurchLeaderSermonsPage extends StatefulWidget {
  const ChurchLeaderSermonsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ChurchLeaderSermonsPageState createState() => ChurchLeaderSermonsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChurchLeaderSermonsProvider(),
      child: ChurchLeaderSermonsPage(),
    );
  }
}

class ChurchLeaderSermonsPageState extends State<ChurchLeaderSermonsPage>
    with AutomaticKeepAliveClientMixin<ChurchLeaderSermonsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.h),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: _buildContrastRow(
                          context,
                          username: "lbl_alexnder_graham".tr,
                          followersCount: "lbl_1_1k_followers".tr,
                        ),
                      ),
                      SizedBox(height: 19.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbnail,
                        height: 58.v,
                        width: 327.h,
                      ),
                      SizedBox(height: 22.v),
                      Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: _buildInfoRow(
                          context,
                          likesCounterText: "lbl_120_likes".tr,
                          commentsCounterText: "lbl_6_comments".tr,
                          shareText: "lbl_share_this_post".tr,
                        ),
                      ),
                      SizedBox(height: 27.v),
                      _buildContrastRow(
                        context,
                        username: "lbl_alexnder_graham".tr,
                        followersCount: "lbl_1_1k_followers".tr,
                      ),
                      SizedBox(height: 19.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbnail,
                        height: 58.v,
                        width: 327.h,
                      ),
                      SizedBox(height: 22.v),
                      Padding(
                        padding: EdgeInsets.only(right: 6.h),
                        child: _buildInfoRow(
                          context,
                          likesCounterText: "lbl_120_likes".tr,
                          commentsCounterText: "lbl_6_comments".tr,
                          shareText: "lbl_share_this_post".tr,
                        ),
                      ),
                      SizedBox(height: 30.v),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: _buildContrastRow(
                          context,
                          username: "lbl_alexnder_graham".tr,
                          followersCount: "lbl_1_1k_followers".tr,
                        ),
                      ),
                      SizedBox(height: 19.v),
                      _buildGHkyGPbbAHorizontalScroll(context),
                      SizedBox(height: 22.v),
                      Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: _buildInfoRow(
                          context,
                          likesCounterText: "lbl_120_likes".tr,
                          commentsCounterText: "lbl_6_comments".tr,
                          shareText: "lbl_share_this_post".tr,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGHkyGPbbAHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 3.h),
      child: IntrinsicWidth(
        child: Container(
          height: 58.v,
          width: 327.h,
          decoration: AppDecoration.fillPurple200.copyWith(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgThumbnail58x327,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaskRectangle,
                height: 58.v,
                width: 327.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 78.v,
                  width: 369.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGhky8g4pbba,
                        height: 78.v,
                        width: 369.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 7.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgOverflowMenu,
                                height: 28.adaptSize,
                                width: 28.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 11.v,
                                  bottom: 14.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgSoundWave,
                                height: 53.v,
                                width: 282.h,
                                margin: EdgeInsets.only(left: 6.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildContrastRow(
    BuildContext context, {
    required String username,
    required String followersCount,
  }) {
    return Row(
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
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: CustomTextStyles.titleSmallGray90001.copyWith(
                  color: appTheme.gray90001,
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
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildInfoRow(
    BuildContext context, {
    required String likesCounterText,
    required String commentsCounterText,
    required String shareText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFavorite,
          height: 16.v,
          width: 19.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(
            likesCounterText,
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
            commentsCounterText,
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
          padding: EdgeInsets.only(left: 9.h),
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
}
