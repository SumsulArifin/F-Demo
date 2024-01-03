import 'models/recording_voice_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:mdsumsul_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:mdsumsul_s_application5/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mdsumsul_s_application5/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mdsumsul_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'provider/recording_voice_provider.dart';

class RecordingVoiceScreen extends StatefulWidget {
  const RecordingVoiceScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RecordingVoiceScreenState createState() => RecordingVoiceScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecordingVoiceProvider(),
      child: RecordingVoiceScreen(),
    );
  }
}

class RecordingVoiceScreenState extends State<RecordingVoiceScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        appBar: _buildAppBarSection(context),
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildTypeMessageHereSection(context),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_today".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 298.h,
                          margin: EdgeInsets.only(left: 27.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 14.v,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 2.v),
                              Container(
                                width: 233.h,
                                margin: EdgeInsets.only(right: 32.h),
                                child: Text(
                                  "msg_hi_how_are_you".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyLargeOnPrimary
                                      .copyWith(
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(left: 194.h),
                          padding: EdgeInsets.all(16.h),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL161,
                          ),
                          child: Text(
                            "lbl_nice_to_know".tr,
                            style: CustomTextStyles.bodyLargeOnPrimary,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                        height: 56.v,
                        width: 151.h,
                        text: "lbl_wow_thank_you".tr,
                        buttonStyle: CustomButtonStyles.fillBlueGray,
                      ),
                      SizedBox(height: 5.v),
                      CustomElevatedButton(
                        height: 56.v,
                        text: "msg_you_should_come".tr,
                        margin: EdgeInsets.only(right: 50.h),
                        buttonStyle: CustomButtonStyles.fillBlueGrayLR16,
                      ),
                      SizedBox(height: 5.v),
                      Container(
                        margin: EdgeInsets.only(right: 95.h),
                        padding: EdgeInsets.all(10.h),
                        decoration: AppDecoration.fillBluegray50.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL16,
                        ),
                        child: Container(
                          height: 210.adaptSize,
                          width: 210.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray10003,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.all(10.h),
                  decoration: AppDecoration.fillBluegray900,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(
                        flex: 56,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameOnprimary32x32,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "msg_recording_voice".tr,
                        style:
                            CustomTextStyles.titleMediumNunitoSansOnPrimaryBold,
                      ),
                      Spacer(
                        flex: 43,
                      ),
                      SizedBox(
                        width: 100.h,
                        child: Divider(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildViewSection(context),
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

  /// Section Widget
  PreferredSizeWidget _buildAppBarSection(BuildContext context) {
    return CustomAppBar(
      height: 116.v,
      leadingWidth: 53.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrameBlueGray90001,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 49.v,
          bottom: 39.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder27,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 38.v),
                      Container(
                        margin: EdgeInsets.only(left: 36.h),
                        padding: EdgeInsets.all(3.h),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7,
                        ),
                        child: Container(
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.teal300,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 2.v,
                    bottom: 3.v,
                  ),
                  child: Column(
                    children: [
                      AppbarSubtitle(
                        text: "lbl_katie_mizu".tr,
                      ),
                      SizedBox(height: 7.v),
                      AppbarSubtitleOne(
                        text: "lbl_online".tr,
                        margin: EdgeInsets.only(right: 34.h),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrameBlueGray9000128x28,
          margin: EdgeInsets.fromLTRB(25.h, 49.v, 25.h, 39.v),
        ),
      ],
      styleType: Style.bgShadow_1,
    );
  }

  /// Section Widget
  Widget _buildTypeMessageHereSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 26.v,
        ),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 12.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.outlineBluegray80019.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder27,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFrameBlueGray30001,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "msg_type_message_here".tr,
                      style: CustomTextStyles.bodyMediumBluegray300,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgFramePrimary,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(right: 3.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.red700,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            "lbl_10_30".tr,
            style: CustomTextStyles.titleSmallNunitoSansBluegray90001,
          ),
          SizedBox(height: 24.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 47.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 20.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 47.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 40.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 37.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 62.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 26.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 80.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 17.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 70.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 22.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 62.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 26.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 40.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 37.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 56.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 29.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 70.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 22.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 30.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 42.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 40.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 37.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 92.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 11.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 80.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 17.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 98.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 8.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 80.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 17.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 70.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 22.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 114.v,
                width: 6.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 92.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 11.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 62.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 26.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 34.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 40.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 40.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 37.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 48.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 33.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 20.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 47.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 62.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 26.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 70.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 22.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 56.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 29.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 40.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 37.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 24.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 45.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                height: 24.v,
                width: 6.h,
                margin: EdgeInsets.symmetric(vertical: 45.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.outlineBluegray80019.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder27,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFramePrimary24x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "lbl_release_to_send".tr,
                    style: CustomTextStyles.titleSmallNunitoSansBluegray90001,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFramePrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(right: 3.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }
}
