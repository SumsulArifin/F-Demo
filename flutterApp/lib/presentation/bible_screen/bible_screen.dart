import 'models/bible_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'provider/bible_provider.dart';

class BibleScreen extends StatefulWidget {
  const BibleScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BibleScreenState createState() => BibleScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BibleProvider(),
      child: BibleScreen(),
    );
  }
}

class BibleScreenState extends State<BibleScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5008,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildHeader(context),
                SizedBox(height: 31.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: _buildRecommendation(
                    context,
                    titleText: "msg_continue_reading".tr,
                    bodyText: "lbl_see_more".tr,
                  ),
                ),
                SizedBox(height: 7.v),
                _buildExploreSection(context),
                SizedBox(height: 35.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: _buildRecommendation(
                    context,
                    titleText: "lbl_read_holy_books".tr,
                    bodyText: "lbl_see_more".tr,
                  ),
                ),
                SizedBox(height: 31.v),
                _buildItemOne(context),
                SizedBox(height: 13.v),
                _buildItemTwo(context),
                SizedBox(height: 13.v),
                _buildItemThree(context),
                SizedBox(height: 13.v),
                _buildItemFour(context),
                SizedBox(height: 13.v),
                _buildItemFive(context),
                SizedBox(height: 13.v),
                _buildItemSix(context),
                SizedBox(height: 84.v),
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
      height: 255.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 214.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 116.h,
                        vertical: 60.v,
                      ),
                      decoration: AppDecoration.fillPurple50,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 63.v),
                          Text(
                            "lbl_hello_derno".tr,
                            style: CustomTextStyles.titleLargePrimary,
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgShadow2,
                    height: 140.v,
                    width: 116.h,
                    alignment: Alignment.topLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgShadow1,
                    height: 186.v,
                    width: 70.h,
                    alignment: Alignment.topRight,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 164.h,
                      margin: EdgeInsets.only(bottom: 71.v),
                      child: Text(
                        "msg_what_do_you_want".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargePoppins.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(bottom: 170.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 13.h,
                        vertical: 14.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUserBlack90001,
                            height: 11.v,
                            width: 38.h,
                            margin: EdgeInsets.only(
                              left: 15.h,
                              top: 2.v,
                              bottom: 1.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSymbols,
                            height: 13.v,
                            width: 68.h,
                            margin: EdgeInsets.only(top: 2.v),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgContainer,
            height: 91.v,
            width: 327.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildExplore(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      width: 186.h,
      text: "lbl_explore".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildExploreSection(BuildContext context) {
    return SizedBox(
      height: 187.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 11.v,
              width: 242.h,
              decoration: BoxDecoration(
                color: appTheme.gray50003,
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 3.v),
              padding: EdgeInsets.symmetric(vertical: 12.v),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 160.v,
                    width: 104.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray10002,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_bible".tr,
                          style: CustomTextStyles.titleSmallBluegray90002,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "lbl_chapter_4_of_8".tr,
                          style: CustomTextStyles.bodySmallGray60002_1,
                        ),
                        SizedBox(height: 7.v),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 7.v,
                                bottom: 6.v,
                              ),
                              child: Container(
                                height: 4.v,
                                width: 150.h,
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray5001,
                                  borderRadius: BorderRadius.circular(
                                    2.h,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    2.h,
                                  ),
                                  child: LinearProgressIndicator(
                                    value: 0.54,
                                    backgroundColor: appTheme.blueGray5001,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      theme.colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text(
                                "lbl_50".tr,
                                style: CustomTextStyles.bodySmallGray60002_1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.v),
                        _buildExplore(context),
                      ],
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

  /// Section Widget
  Widget _buildReadNowButtonOne(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_now".tr,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildReadLaterButtonOne(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_later".tr,
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsBluegray40001,
    );
  }

  /// Section Widget
  Widget _buildItemOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 114.v,
            width: 93.h,
            decoration: BoxDecoration(
              color: appTheme.gray10002,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 14.v,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_bible".tr,
                  style: CustomTextStyles.labelMediumPoppinsGray90002Medium_2,
                ),
                SizedBox(height: 9.v),
                Text(
                  "lbl_english".tr,
                  style: CustomTextStyles.bodySmallBluegray4000111_2,
                ),
                SizedBox(height: 11.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildReadNowButtonOne(context),
                    _buildReadLaterButtonOne(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReadNowButtonTwo(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_now".tr,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildReadLaterButtonTwo(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_later".tr,
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsBluegray40001,
    );
  }

  /// Section Widget
  Widget _buildItemTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 114.v,
            width: 93.h,
            decoration: BoxDecoration(
              color: appTheme.gray10002,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 15.v,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_desmond_eagle_version".tr,
                  style: CustomTextStyles.labelMediumPoppinsGray90002Medium_2,
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_english".tr,
                  style: CustomTextStyles.bodySmallBluegray4000111_2,
                ),
                SizedBox(height: 11.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildReadNowButtonTwo(context),
                    _buildReadLaterButtonTwo(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReadNowButtonThree(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_now".tr,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildReadLaterButtonThree(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_later".tr,
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsBluegray40001,
    );
  }

  /// Section Widget
  Widget _buildItemThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 114.v,
            width: 93.h,
            decoration: BoxDecoration(
              color: appTheme.gray10002,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 11.v,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_clear_word_bible".tr,
                  style: CustomTextStyles.labelMediumPoppinsGray90002Medium_2,
                ),
                SizedBox(height: 9.v),
                Text(
                  "lbl_english".tr,
                  style: CustomTextStyles.bodySmallBluegray4000111_2,
                ),
                SizedBox(height: 11.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildReadNowButtonThree(context),
                    _buildReadLaterButtonThree(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReadNowButtonFour(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_now".tr,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildReadLaterButtonFour(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_later".tr,
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsBluegray40001,
    );
  }

  /// Section Widget
  Widget _buildItemFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 114.v,
            width: 93.h,
            decoration: BoxDecoration(
              color: appTheme.gray10002,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 15.v,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_christian_community".tr,
                  style: CustomTextStyles.labelMediumPoppinsGray90002Medium_2,
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_english".tr,
                  style: CustomTextStyles.bodySmallBluegray4000111_2,
                ),
                SizedBox(height: 11.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildReadNowButtonFour(context),
                    _buildReadLaterButtonFour(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReadNowButtonFive(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_now".tr,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildReadLaterButtonFive(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_later".tr,
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsBluegray40001,
    );
  }

  /// Section Widget
  Widget _buildItemFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 114.v,
            width: 93.h,
            decoration: BoxDecoration(
              color: appTheme.gray10002,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 11.v,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_christian_standard".tr,
                  style: CustomTextStyles.labelMediumPoppinsGray90002Medium_2,
                ),
                SizedBox(height: 9.v),
                Text(
                  "lbl_english".tr,
                  style: CustomTextStyles.bodySmallBluegray4000111_2,
                ),
                SizedBox(height: 11.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildReadNowButtonFive(context),
                    _buildReadLaterButtonFive(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReadNowButtonSix(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_now".tr,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildReadLaterButtonSix(BuildContext context) {
    return CustomElevatedButton(
      width: 104.h,
      text: "lbl_read_later".tr,
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.labelMediumPoppinsBluegray40001,
    );
  }

  /// Section Widget
  Widget _buildItemSix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 114.v,
            width: 93.h,
            decoration: BoxDecoration(
              color: appTheme.gray10002,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 11.v,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_clear_word_bible".tr,
                  style: CustomTextStyles.labelMediumPoppinsGray90002Medium_2,
                ),
                SizedBox(height: 9.v),
                Text(
                  "lbl_english".tr,
                  style: CustomTextStyles.bodySmallBluegray4000111_2,
                ),
                SizedBox(height: 11.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildReadNowButtonSix(context),
                    _buildReadLaterButtonSix(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRecommendation(
    BuildContext context, {
    required String titleText,
    required String bodyText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.blueGray90002,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 9.v),
          child: Text(
            bodyText,
            style: CustomTextStyles.bodyMediumPoppinsGray60002.copyWith(
              color: appTheme.gray60002,
            ),
          ),
        ),
      ],
    );
  }
}
