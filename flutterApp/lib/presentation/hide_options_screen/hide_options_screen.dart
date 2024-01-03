import 'models/hide_options_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'provider/hide_options_provider.dart';

class HideOptionsScreen extends StatefulWidget {
  const HideOptionsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HideOptionsScreenState createState() => HideOptionsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HideOptionsProvider(),
      child: HideOptionsScreen(),
    );
  }
}

class HideOptionsScreenState extends State<HideOptionsScreen> {
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
          child: Column(
            children: [
              SizedBox(height: 1.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildContinueReading(context),
                      SizedBox(height: 16.v),
                      _buildChapter(context),
                      SizedBox(
                        height: 689.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            _buildEightyThree(context),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 31.h,
                                  vertical: 21.v,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_chapter_1".tr,
                                        style: CustomTextStyles
                                            .labelLargeInterBluegray40003,
                                      ),
                                    ),
                                    SizedBox(height: 1.v),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_broken_ribs".tr,
                                        style: CustomTextStyles
                                            .titleSmallInterBluegray80001,
                                      ),
                                    ),
                                    SizedBox(height: 19.v),
                                    SizedBox(
                                      height: 42.v,
                                      width: 296.h,
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              width: 296.h,
                                              child: Text(
                                                "msg_that_summer".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .labelLargeInterBluegray80001
                                                    .copyWith(
                                                  height: 1.75,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 11.adaptSize,
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 4.h,
                                                vertical: 1.v,
                                              ),
                                              decoration:
                                                  AppDecoration.fillBlueGray,
                                              child: Text(
                                                "lbl_1".tr,
                                                style: CustomTextStyles
                                                    .interPrimary,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              width: 11.adaptSize,
                                              margin: EdgeInsets.only(
                                                left: 71.h,
                                                bottom: 7.v,
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 2.h,
                                                vertical: 1.v,
                                              ),
                                              decoration:
                                                  AppDecoration.fillBlueGray,
                                              child: Text(
                                                "lbl_2".tr,
                                                style: CustomTextStyles
                                                    .interPrimary,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 24.v),
                                    _buildNinetyOne(context),
                                    SizedBox(height: 21.v),
                                    _buildView(context),
                                    SizedBox(height: 6.v),
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
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueReading(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 26.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_bible_genesis".tr,
            style: theme.textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_hide_options".tr,
              style: CustomTextStyles.bodySmallPrimary10,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChapter(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 12.v,
            ),
            child: _buildChapterThree(
              context,
              chapText: "lbl_chap".tr,
              threeText: "lbl_1".tr,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 21.h),
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 6.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.customBorderTL4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "lbl_chap".tr,
                  style: CustomTextStyles.labelSmallInterPrimary,
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.only(right: 7.h),
                  child: Text(
                    "lbl_2".tr,
                    style: CustomTextStyles.labelMediumInterPrimary,
                  ),
                ),
                SizedBox(height: 2.v),
                Container(
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  margin: EdgeInsets.only(right: 9.h),
                  decoration: BoxDecoration(
                    color: appTheme.orangeA200,
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              top: 6.v,
              bottom: 12.v,
            ),
            child: _buildChapterThree(
              context,
              chapText: "lbl_chap".tr,
              threeText: "lbl_3".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 6.v,
              bottom: 12.v,
            ),
            child: _buildChapterThree(
              context,
              chapText: "lbl_chap".tr,
              threeText: "lbl_4".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 6.v,
              bottom: 12.v,
            ),
            child: _buildChapterThree(
              context,
              chapText: "lbl_chap".tr,
              threeText: "lbl_5".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 6.v,
              bottom: 12.v,
            ),
            child: _buildChapterThree(
              context,
              chapText: "lbl_chap".tr,
              threeText: "lbl_6".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 6.v,
              bottom: 12.v,
            ),
            child: _buildChapterThree(
              context,
              chapText: "lbl_chap".tr,
              threeText: "lbl_7".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyThree(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 31.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.outlineBlack900011,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_chapter_1".tr,
                    style: CustomTextStyles.labelLargeInterBluegray40003_1,
                  ),
                  Text(
                    "lbl_chapter_3".tr,
                    style: CustomTextStyles.labelLargeInterBluegray40003_1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "lbl_broken_ribs".tr,
                    style: CustomTextStyles.labelLargeInterBluegray80001,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_next2".tr,
                    style:
                        CustomTextStyles.labelLargeInterBluegray80001.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.v),
            Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                right: 2.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBookmark,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFluentBrightne,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBxBxFont,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyOne(BuildContext context) {
    return SizedBox(
      height: 86.v,
      width: 305.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 305.h,
              child: Text(
                "msg_you_see_he_says".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeInterBluegray80001.copyWith(
                  height: 1.75,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 11.adaptSize,
              margin: EdgeInsets.only(
                left: 109.h,
                top: 21.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 3.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillBlueGray,
              child: Text(
                "lbl_3".tr,
                style: CustomTextStyles.interPrimaryBold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 11.adaptSize,
              margin: EdgeInsets.only(
                left: 32.h,
                bottom: 30.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 3.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillBlueGray,
              child: Text(
                "lbl_4".tr,
                style: CustomTextStyles.interPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 273.v,
      width: 302.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 19.v,
              width: 242.h,
              margin: EdgeInsets.only(
                left: 16.h,
                top: 19.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.pink100.withOpacity(0.3),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 273.v,
              width: 302.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 302.h,
                      child: Text(
                        "msg_it_is_a_surprising".tr,
                        maxLines: 13,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.labelLargeInterBlack90001.copyWith(
                          height: 1.75,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 11.adaptSize,
                              margin: EdgeInsets.only(
                                top: 8.v,
                                bottom: 42.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 3.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillBlueGray,
                              child: Text(
                                "lbl_5".tr,
                                style: CustomTextStyles.interPrimary,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup33513,
                              height: 24.v,
                              width: 5.h,
                              margin: EdgeInsets.only(
                                left: 2.h,
                                bottom: 38.v,
                              ),
                            ),
                            Container(
                              width: 160.h,
                              margin: EdgeInsets.only(
                                left: 46.h,
                                top: 29.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 4.v,
                                      bottom: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_copy".tr,
                                      style: CustomTextStyles
                                          .labelLargeInterOnPrimary,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup33515,
                                    height: 10.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(
                                      left: 8.h,
                                      top: 7.v,
                                      bottom: 4.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.h,
                                      top: 4.v,
                                      bottom: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_highlight".tr,
                                      style: CustomTextStyles
                                          .labelLargeInterOnPrimary,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup33515,
                                    height: 10.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(
                                      left: 8.h,
                                      top: 7.v,
                                      bottom: 4.v,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgUserOnprimary,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 8.h,
                                      top: 1.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup33513,
                              height: 24.v,
                              width: 5.h,
                              margin: EdgeInsets.only(
                                left: 30.h,
                                top: 5.v,
                                bottom: 33.v,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.v),
                        Container(
                          width: 11.adaptSize,
                          margin: EdgeInsets.only(left: 43.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 3.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillBlueGray,
                          child: Text(
                            "lbl_6".tr,
                            style: CustomTextStyles.interPrimary,
                          ),
                        ),
                        SizedBox(height: 73.v),
                        Container(
                          width: 11.adaptSize,
                          margin: EdgeInsets.only(left: 92.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 3.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillBlueGray,
                          child: Text(
                            "lbl_7".tr,
                            style: CustomTextStyles.interPrimary,
                          ),
                        ),
                        SizedBox(height: 50.v),
                        Container(
                          width: 11.adaptSize,
                          margin: EdgeInsets.only(left: 95.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 3.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillBlueGray,
                          child: Text(
                            "lbl_8".tr,
                            style: CustomTextStyles.interPrimary,
                          ),
                        ),
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

  /// Common widget
  Widget _buildChapterThree(
    BuildContext context, {
    required String chapText,
    required String threeText,
  }) {
    return Column(
      children: [
        Text(
          chapText,
          style: CustomTextStyles.labelSmallInterBluegray10001.copyWith(
            color: appTheme.blueGray10001,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          threeText,
          style: CustomTextStyles.labelMediumInterBluegray40001.copyWith(
            color: appTheme.blueGray40001,
          ),
        ),
      ],
    );
  }
}
