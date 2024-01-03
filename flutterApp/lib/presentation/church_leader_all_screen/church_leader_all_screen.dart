import 'models/church_leader_all_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_floating_button.dart';
import 'provider/church_leader_all_provider.dart';

class ChurchLeaderAllScreen extends StatefulWidget {
  const ChurchLeaderAllScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ChurchLeaderAllScreenState createState() => ChurchLeaderAllScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChurchLeaderAllProvider(),
      child: ChurchLeaderAllScreen(),
    );
  }
}

class ChurchLeaderAllScreenState extends State<ChurchLeaderAllScreen> {
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
            child: SizedBox(
              height: 1317.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_church_leader".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 32.v),
                        Divider(),
                        SizedBox(height: 17.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 34.h,
                            right: 49.h,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgAvatarImagePrimary,
                                height: 110.adaptSize,
                                width: 110.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 20.h,
                                  top: 4.v,
                                  bottom: 10.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_alexnder_graham".tr.toUpperCase(),
                                      style:
                                          CustomTextStyles.titleSmallGray90001,
                                    ),
                                    SizedBox(height: 4.v),
                                    SizedBox(
                                      width: 161.h,
                                      child: Text(
                                        "msg_lorem_ipsum_dolor2".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles.bodySmall9_1,
                                      ),
                                    ),
                                    SizedBox(height: 11.v),
                                    Container(
                                      width: 140.h,
                                      margin: EdgeInsets.only(right: 20.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 27.adaptSize,
                                            width: 27.adaptSize,
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Text(
                                                    "lbl_6_3k".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeBluegray90005,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    "lbl_followers".tr,
                                                    style: CustomTextStyles
                                                        .poppinsGray600b2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 27.v,
                                            width: 22.h,
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Text(
                                                    "lbl_572".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeGray900,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    "lbl_post".tr,
                                                    style: CustomTextStyles
                                                        .poppinsGray50001,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "lbl_2_5k".tr,
                                                style: CustomTextStyles
                                                    .labelLargeGray900,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text(
                                                  "lbl_amin".tr,
                                                  style: CustomTextStyles
                                                      .poppinsGray50001,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 76.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 20.v,
                                  width: 64.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgTelevisionPrimary20x64,
                                        height: 20.v,
                                        width: 64.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUserOnprimary9x10,
                                              height: 9.v,
                                              width: 10.h,
                                              margin: EdgeInsets.only(top: 1.v),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text(
                                                "lbl_follow".tr,
                                                style: CustomTextStyles
                                                    .poppinsOnPrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 20.v,
                                  width: 64.h,
                                  margin: EdgeInsets.only(left: 11.h),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgUploadOnprimary20x64,
                                        height: 20.v,
                                        width: 64.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 3.v),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUserPrimary9x10,
                                                height: 9.v,
                                                width: 10.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 1.v),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text(
                                                  "lbl_message".tr,
                                                  style: CustomTextStyles
                                                      .poppinsGray70002,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 31.v),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 46.h,
                              right: 42.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_all".tr,
                                  style: CustomTextStyles
                                      .bodySmallPlusJakartaSansBluegray40002,
                                ),
                                Spacer(
                                  flex: 35,
                                ),
                                Text(
                                  "lbl_sermons".tr,
                                  style: CustomTextStyles
                                      .bodySmallPlusJakartaSansBluegray40002,
                                ),
                                Spacer(
                                  flex: 31,
                                ),
                                SizedBox(
                                  height: 15.v,
                                  width: 32.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_audio2".tr,
                                          style: CustomTextStyles
                                              .bodySmallPlusJakartaSansBluegray40002,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_audio2".tr,
                                          style: CustomTextStyles
                                              .bodySmallPlusJakartaSansBluegray40002,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(
                                  flex: 33,
                                ),
                                Text(
                                  "lbl_quotes".tr,
                                  style: CustomTextStyles
                                      .bodySmallPlusJakartaSansBluegray40002,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Container(
                          height: 2.v,
                          width: 34.h,
                          margin: EdgeInsets.only(left: 35.h),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Divider(
                          color: appTheme.gray20004,
                        ),
                        SizedBox(height: 31.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgContrastOrangeA200,
                                      height: 50.adaptSize,
                                      width: 50.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 47.v,
                                        width: 45.h,
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                height: 44.adaptSize,
                                                width: 44.adaptSize,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray20004,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    22.h,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: 14.adaptSize,
                                                width: 14.adaptSize,
                                                decoration: AppDecoration
                                                    .fillGreen
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7,
                                                ),
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgContrastGray10001,
                                                  height: 13.adaptSize,
                                                  width: 13.adaptSize,
                                                  alignment: Alignment.center,
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
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 5.v,
                                ),
                                child: _buildPrinceArmand(
                                  context,
                                  userImage: "lbl_prince_armand".tr,
                                  messageText: "msg_03_sept_at_04_21".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25.v),
                        Container(
                          width: 307.h,
                          margin: EdgeInsets.only(
                            left: 25.h,
                            right: 42.h,
                          ),
                          child: Text(
                            "msg_lorem_ipsum_dolor".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 29.v),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 271.v,
                            width: 325.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray10002,
                              borderRadius: BorderRadius.circular(
                                6.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.h),
                          child: _buildSend(
                            context,
                            thirtySixText: "lbl_36".tr,
                            eightyFiveText: "lbl_85".tr,
                            twelveText: "lbl_12".tr,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Divider(
                          color: appTheme.gray20004,
                        ),
                        SizedBox(height: 29.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 2.h),
                                decoration:
                                    AppDecoration.fillGray20004.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder27,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 36.v),
                                    Container(
                                      height: 14.adaptSize,
                                      width: 14.adaptSize,
                                      decoration:
                                          AppDecoration.fillGreen.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder7,
                                      ),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgContrastGray10001,
                                        height: 13.adaptSize,
                                        width: 13.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 5.v,
                                ),
                                child: _buildPrinceArmand(
                                  context,
                                  userImage: "lbl_prince_armand".tr,
                                  messageText: "msg_03_sept_at_04_21".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 28.v),
                        Container(
                          width: 307.h,
                          margin: EdgeInsets.only(
                            left: 25.h,
                            right: 42.h,
                          ),
                          child: Text(
                            "msg_lorem_ipsum_dolor".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 30.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSendOnerror,
                                height: 15.v,
                                width: 17.h,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl_14".tr,
                                  style: CustomTextStyles.bodySmallGray90001,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 28.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgFavoriteOnerror,
                                  height: 16.v,
                                  width: 18.h,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "lbl_42".tr,
                                    style: CustomTextStyles.bodySmallGray90001,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgUserOnerror,
                                  height: 16.v,
                                  width: 17.h,
                                  margin: EdgeInsets.only(
                                    left: 24.h,
                                    bottom: 1.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "lbl_6".tr,
                                    style: CustomTextStyles.bodySmallGray90001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                      ],
                    ),
                  ),
                  _buildCommentsList(context),
                  _buildChurchLeader(context),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentsList(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgContrastOrangeA200,
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 47.v,
                          width: 45.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 44.adaptSize,
                                  width: 44.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray20004,
                                    borderRadius: BorderRadius.circular(
                                      22.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                  decoration: AppDecoration.fillGreen.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder7,
                                  ),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgContrastGray10001,
                                    height: 13.adaptSize,
                                    width: 13.adaptSize,
                                    alignment: Alignment.center,
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                  ),
                  child: _buildPrinceArmand(
                    context,
                    userImage: "lbl_prince_armand".tr,
                    messageText: "msg_03_sept_at_04_21".tr,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.v),
            Container(
              width: 307.h,
              margin: EdgeInsets.only(right: 17.h),
              child: Text(
                "msg_lorem_ipsum_dolor".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 29.v),
            CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 182.v,
              width: 325.h,
            ),
            SizedBox(height: 114.v),
            _buildSend(
              context,
              thirtySixText: "lbl_36".tr,
              eightyFiveText: "lbl_85".tr,
              twelveText: "lbl_12".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChurchLeader(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 119.h,
          vertical: 1.v,
        ),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20.v),
            Text(
              "lbl_church_leader".tr,
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 73,
      width: 73,
      backgroundColor: theme.colorScheme.primary,
      child: CustomImageView(
        imagePath: ImageConstant.imgBiPlusLg,
        height: 36.5.v,
        width: 36.5.h,
      ),
    );
  }

  /// Common widget
  Widget _buildPrinceArmand(
    BuildContext context, {
    required String userImage,
    required String messageText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userImage,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          messageText,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray50001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSend(
    BuildContext context, {
    required String thirtySixText,
    required String eightyFiveText,
    required String twelveText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSendOnerror,
          height: 15.v,
          width: 17.h,
          margin: EdgeInsets.only(bottom: 2.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            thirtySixText,
            style: CustomTextStyles.bodySmallGray90001.copyWith(
              color: appTheme.gray90001,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgFavoriteOnerror,
          height: 16.v,
          width: 18.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            eightyFiveText,
            style: CustomTextStyles.bodySmallGray90001.copyWith(
              color: appTheme.gray90001,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUserOnerror,
          height: 16.v,
          width: 17.h,
          margin: EdgeInsets.only(left: 23.h),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            twelveText,
            style: CustomTextStyles.bodySmallGray90001.copyWith(
              color: appTheme.gray90001,
            ),
          ),
        ),
      ],
    );
  }
}
