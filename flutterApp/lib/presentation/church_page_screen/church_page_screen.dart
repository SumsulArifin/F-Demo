import 'models/church_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_floating_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_icon_button.dart';
import 'provider/church_page_provider.dart';

class ChurchPageScreen extends StatefulWidget {
  const ChurchPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ChurchPageScreenState createState() => ChurchPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChurchPageProvider(),
      child: ChurchPageScreen(),
    );
  }
}

class ChurchPageScreenState extends State<ChurchPageScreen> {
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
              height: 1592.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.only(top: 285.v),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 51.v,
                            width: 170.h,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    width: 170.h,
                                    child: Text(
                                      "msg_lorem_ipsum_dolor2".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style:
                                          CustomTextStyles.bodySmall9.copyWith(
                                        height: 1.25,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "lbl_church_name".tr,
                                    style:
                                        CustomTextStyles.titleMediumGray90001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.v),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_church_leader2".tr,
                                  style:
                                      CustomTextStyles.labelSmallPoppinsPrimary,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "lbl_alexnder_graham".tr,
                                  style: CustomTextStyles
                                      .bodySmallErrorContainer
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 11.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 26.v,
                                width: 83.h,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgUserOnprimary40x94,
                                      height: 26.v,
                                      width: 83.h,
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 4.v),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUserOnerror11x12,
                                              height: 12.v,
                                              width: 14.h,
                                              margin:
                                                  EdgeInsets.only(bottom: 1.v),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 6.h),
                                              child: Text(
                                                "lbl_message".tr,
                                                style: CustomTextStyles
                                                    .bodySmallGray70002,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 26.v,
                                width: 83.h,
                                margin: EdgeInsets.only(left: 9.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgUserOnprimary40x94,
                                      height: 26.v,
                                      width: 83.h,
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
                                                .imgThumbsUpGray90005,
                                            height: 11.v,
                                            width: 15.h,
                                            margin: EdgeInsets.only(
                                              top: 1.v,
                                              bottom: 2.v,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 3.h),
                                            child: Text(
                                              "lbl_donate".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray70002,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 17.v),
                          _buildStatistic(context),
                          SizedBox(height: 9.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.h),
                              child: Text(
                                "lbl_priest".tr,
                                style: CustomTextStyles.labelLargeGray9000213,
                              ),
                            ),
                          ),
                          SizedBox(height: 9.v),
                          _buildCard(context),
                          SizedBox(height: 24.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.h),
                              child: Text(
                                "msg_church_communication".tr,
                                style: CustomTextStyles.labelLargeGray90002,
                              ),
                            ),
                          ),
                          SizedBox(height: 17.v),
                          _buildCard1(context),
                          SizedBox(height: 35.v),
                          _buildTags(context),
                          SizedBox(height: 30.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
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
                                          imagePath: ImageConstant
                                              .imgContrastOrangeA200,
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
                                                  alignment:
                                                      Alignment.topCenter,
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
                                                  alignment:
                                                      Alignment.bottomRight,
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
                                                      alignment:
                                                          Alignment.center,
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
                                      top: 6.v,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_church_name".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                        SizedBox(height: 3.v),
                                        Text(
                                          "msg_03_sept_at_04_21".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
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
                          ),
                          SizedBox(height: 29.v),
                          Container(
                            height: 271.v,
                            width: 325.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray10002,
                              borderRadius: BorderRadius.circular(
                                6.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 24.v),
                          _buildSend(context),
                          SizedBox(height: 16.v),
                          Divider(
                            color: appTheme.gray20004,
                          ),
                          SizedBox(height: 16.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 722.v),
                      child: SizedBox(
                        width: 373.h,
                        child: Divider(
                          color: appTheme.gray20004,
                        ),
                      ),
                    ),
                  ),
                  _buildChurchPage(context),
                  CustomImageView(
                    imagePath: ImageConstant.imgAvatarImage,
                    height: 142.adaptSize,
                    width: 142.adaptSize,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 133.v),
                  ),
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
  Widget _buildStatistic(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 23.v),
      decoration: AppDecoration.fillPrimary2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(2.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgTelevisionPrimary,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              height: 74.v,
              width: 81.h,
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 9.v,
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
                      padding: EdgeInsets.only(top: 3.v),
                      child: Text(
                        "lbl_6_3k".tr,
                        style: CustomTextStyles.headlineSmallOnPrimary24,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "lbl_followers".tr,
                      style: CustomTextStyles.bodySmallOnPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 79.v,
            width: 87.h,
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 12.v,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup498,
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
                      "lbl_572".tr,
                      style: CustomTextStyles.headlineSmall24,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_members".tr,
                    style: CustomTextStyles.bodySmall11,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 79.v,
            width: 87.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 79.v,
                    width: 87.h,
                    decoration: AppDecoration.fillOnPrimary1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFile,
                      height: 79.v,
                      width: 86.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.v),
                    child: Text(
                      "lbl_2_5k".tr,
                      style: CustomTextStyles.headlineSmall24,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 12.v),
                    child: Text(
                      "lbl_amen".tr,
                      style: CustomTextStyles.bodySmall11,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25.h,
        right: 28.h,
      ),
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBlack900014.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlayPrimary,
            height: 45.adaptSize,
            width: 45.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_theodore_handle".tr,
                  style: CustomTextStyles.labelMediumPoppinsGray90002Medium,
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_pastor".tr,
                  style: CustomTextStyles.bodySmallBluegray4000111,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              right: 2.h,
              bottom: 26.v,
            ),
            child: Text(
              "lbl_view_profile".tr,
              style: CustomTextStyles.poppinsPrimaryRegular.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCard1(BuildContext context) {
    return Container(
      width: 320.h,
      margin: EdgeInsets.only(
        left: 25.h,
        right: 28.h,
      ),
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBlack900015.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 29.h),
            child: Row(
              children: [
                CustomIconButton(
                  height: 31.adaptSize,
                  width: 31.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLinkedinPrimary31x31,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    top: 7.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "msg_donec_street_ullamcorper".tr,
                    style: CustomTextStyles.bodySmallBluegray700.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Row(
            children: [
              CustomIconButton(
                height: 31.adaptSize,
                width: 31.adaptSize,
                padding: EdgeInsets.all(9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 11.h,
                  top: 7.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "lbl_123_673_2198".tr,
                  style: CustomTextStyles.bodySmallBluegray700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTags(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.h,
        right: 37.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "lbl_all".tr,
                          style: CustomTextStyles
                              .bodySmallPlusJakartaSansPrimary11,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "lbl_news".tr,
                          style: CustomTextStyles
                              .bodySmallPlusJakartaSansBluegray40002,
                        ),
                      ),
                      Text(
                        "lbl_sunday_services".tr,
                        style: CustomTextStyles
                            .bodySmallPlusJakartaSansBluegray40002,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 9.v),
                Container(
                  height: 2.v,
                  width: 34.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpGray9000511x16,
            height: 11.v,
            width: 16.h,
            margin: EdgeInsets.only(
              left: 61.h,
              bottom: 15.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSend(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSendOnerror,
            height: 15.v,
            width: 17.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_36".tr,
              style: CustomTextStyles.bodySmallGray90001,
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
              "lbl_85".tr,
              style: CustomTextStyles.bodySmallGray90001,
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
              "lbl_12".tr,
              style: CustomTextStyles.bodySmallGray90001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChurchPage(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: AppDecoration.fillGray10002,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 128.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.fillOnPrimary,
              child: Column(
                children: [
                  SizedBox(height: 15.v),
                  Text(
                    "lbl_church_page".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(height: 21.v),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 30.v,
                width: 79.h,
                margin: EdgeInsets.only(right: 25.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUserOnprimary40x94,
                      height: 30.v,
                      width: 79.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_view_as_church".tr,
                        style: CustomTextStyles.poppinsPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 21.v),
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
}
