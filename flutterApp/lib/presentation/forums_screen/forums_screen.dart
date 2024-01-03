import 'models/forums_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_search_view.dart';
import 'package:readmore/readmore.dart';
import 'provider/forums_provider.dart';

class ForumsScreen extends StatefulWidget {
  const ForumsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForumsScreenState createState() => ForumsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForumsProvider(),
      child: ForumsScreen(),
    );
  }
}

class ForumsScreenState extends State<ForumsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5005,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 27.h,
                        vertical: 23.v,
                      ),
                      decoration: AppDecoration.gradientBlueAToGray,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "lbl_forums".tr,
                            style:
                                CustomTextStyles.titleSmallManropeBluegray90004,
                          ),
                          SizedBox(height: 22.v),
                          _buildAskQuestionSection(context),
                          SizedBox(height: 22.v),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Selector<ForumsProvider,
                                TextEditingController?>(
                              selector: (
                                context,
                                provider,
                              ) =>
                                  provider.searchController,
                              builder: (context, searchController, child) {
                                return CustomSearchView(
                                  controller: searchController,
                                  hintText: "lbl_search_question".tr,
                                  contentPadding: EdgeInsets.only(
                                    top: 13.v,
                                    right: 29.h,
                                    bottom: 13.v,
                                  ),
                                  borderDecoration:
                                      SearchViewStyleHelper.fillOnPrimary,
                                  fillColor: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 27.v),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: _buildLatestQuestionSection(
                              context,
                              latestQuestionText: "lbl_categories".tr,
                              seeAllText: "lbl_see_all".tr,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildCategoriesSection(context),
                          SizedBox(height: 26.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.h),
                            child: _buildLatestQuestionSection(
                              context,
                              latestQuestionText: "lbl_latest_question".tr,
                              seeAllText: "lbl_see_all".tr,
                            ),
                          ),
                          SizedBox(height: 14.v),
                          _buildQuestion1Section(context),
                          SizedBox(height: 16.v),
                          _buildQuestion2Section(context),
                          SizedBox(height: 99.v),
                        ],
                      ),
                    ),
                  ),
                  _buildQuestion3Section(context),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 73.adaptSize,
                      width: 73.adaptSize,
                      margin: EdgeInsets.only(
                        right: 27.h,
                        bottom: 61.v,
                      ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAskQuestionSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_ask_question".tr,
            style: CustomTextStyles.titleLargePlusJakartaSansBluegray90003,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgNotification,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoriesSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 5.h),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 28.v,
            ),
            decoration: AppDecoration.fillPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Text(
              "lbl_general".tr,
              style: CustomTextStyles.labelMediumPlusJakartaSansOnPrimary,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.h),
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 28.v,
            ),
            decoration: AppDecoration.fillPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Text(
              "lbl_bible".tr,
              style: CustomTextStyles.labelMediumPlusJakartaSansOnPrimary,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.h),
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 28.v,
            ),
            decoration: AppDecoration.fillPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Text(
              "lbl_question".tr,
              style: CustomTextStyles.labelMediumPlusJakartaSansOnPrimary,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5.h),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 28.v,
            ),
            decoration: AppDecoration.fillPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Text(
              "lbl_motivation".tr,
              style: CustomTextStyles.labelMediumPlusJakartaSansOnPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQuestion1Section(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGray5009.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder27,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildArrowDown(
            context,
            scienceText: "lbl_history".tr,
            timeText: "lbl_21_mins_ago".tr,
            kierraGouseText: "lbl_kaiya_curtis".tr,
          ),
          SizedBox(height: 13.v),
          SizedBox(
            width: 272.h,
            child: ReadMoreText(
              "msg_lorem_ipsum_dolor3".tr,
              trimLines: 4,
              colorClickableText: appTheme.red700,
              trimMode: TrimMode.Line,
              trimCollapsedText: "lbl_read_more".tr,
              moreStyle: CustomTextStyles.bodySmallPlusJakartaSansBluegray90003
                  .copyWith(
                height: 1.50,
              ),
              lessStyle: CustomTextStyles.bodySmallPlusJakartaSansBluegray90003
                  .copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQuestion2Section(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGray5009.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder27,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildArrowDown(
            context,
            scienceText: "lbl_science".tr,
            timeText: "lbl_21_mins_ago".tr,
            kierraGouseText: "lbl_kierra_gouse".tr,
          ),
          SizedBox(height: 13.v),
          SizedBox(
            width: 272.h,
            child: ReadMoreText(
              "msg_lorem_ipsum_dolor4".tr,
              trimLines: 4,
              colorClickableText: appTheme.teal800,
              trimMode: TrimMode.Line,
              trimCollapsedText: "lbl_read_more".tr,
              moreStyle: CustomTextStyles.bodySmallPlusJakartaSansBluegray90003
                  .copyWith(
                height: 1.50,
              ),
              lessStyle: CustomTextStyles.bodySmallPlusJakartaSansBluegray90003
                  .copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQuestion3Section(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillGray5009.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder27,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildArrowDown(
              context,
              scienceText: "lbl_history".tr,
              timeText: "lbl_21_mins_ago".tr,
              kierraGouseText: "lbl_kaiya_curtis".tr,
            ),
            SizedBox(height: 13.v),
            SizedBox(
              width: 272.h,
              child: ReadMoreText(
                "msg_lorem_ipsum_dolor4".tr,
                trimLines: 4,
                colorClickableText: appTheme.teal800,
                trimMode: TrimMode.Line,
                trimCollapsedText: "lbl_read_more".tr,
                moreStyle: CustomTextStyles
                    .bodySmallPlusJakartaSansBluegray90003
                    .copyWith(
                  height: 1.50,
                ),
                lessStyle: CustomTextStyles
                    .bodySmallPlusJakartaSansBluegray90003
                    .copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildLatestQuestionSection(
    BuildContext context, {
    required String latestQuestionText,
    required String seeAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          latestQuestionText,
          style:
              CustomTextStyles.titleMediumPlusJakartaSansBluegray90003.copyWith(
            color: appTheme.blueGray90003,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6.v),
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

  /// Common widget
  Widget _buildArrowDown(
    BuildContext context, {
    required String scienceText,
    required String timeText,
    required String kierraGouseText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgArrowDownBlueGray10003,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      scienceText,
                      style: CustomTextStyles.labelSmallPrimary.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    Text(
                      timeText,
                      style: CustomTextStyles.bodySmallPlusJakartaSansPrimary
                          .copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                Text(
                  kierraGouseText,
                  style: CustomTextStyles.labelLargePlusJakartaSansBluegray90003
                      .copyWith(
                    color: appTheme.blueGray90003,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
