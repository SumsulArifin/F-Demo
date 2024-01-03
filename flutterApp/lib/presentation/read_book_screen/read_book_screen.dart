import 'models/read_book_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'provider/read_book_provider.dart';

class ReadBookScreen extends StatefulWidget {
  const ReadBookScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ReadBookScreenState createState() => ReadBookScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReadBookProvider(),
      child: ReadBookScreen(),
    );
  }
}

class ReadBookScreenState extends State<ReadBookScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(31.h),
          child: Column(
            children: [
              Text(
                "msg_how_to_be_a_real".tr,
                style: CustomTextStyles.labelLargeInterBluegray40003SemiBold,
              ),
              SizedBox(height: 41.v),
              Text(
                "lbl_chapter_1".tr,
                style: CustomTextStyles.labelLargeInterBluegray40003,
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_broken_ribs".tr,
                style: CustomTextStyles.titleSmallInterBluegray80001,
              ),
              SizedBox(height: 41.v),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
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
                            style: CustomTextStyles.labelLargeInterBluegray80001
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
                          decoration: AppDecoration.fillBlueGray,
                          child: Text(
                            "lbl_1".tr,
                            style: CustomTextStyles.interPrimary,
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
                          decoration: AppDecoration.fillBlueGray,
                          child: Text(
                            "lbl_2".tr,
                            style: CustomTextStyles.interPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              _buildEightySix(context),
              SizedBox(height: 21.v),
              _buildEightyTwo(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBookmark(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightySix(BuildContext context) {
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
  Widget _buildEightyTwo(BuildContext context) {
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

  /// Section Widget
  Widget _buildBookmark(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 34.h,
        right: 34.h,
        bottom: 30.v,
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
    );
  }
}
