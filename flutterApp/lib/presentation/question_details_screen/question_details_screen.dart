import 'models/question_details_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_text_form_field.dart';
import 'package:readmore/readmore.dart';
import 'provider/question_details_provider.dart';

class QuestionDetailsScreen extends StatefulWidget {
  const QuestionDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  QuestionDetailsScreenState createState() => QuestionDetailsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuestionDetailsProvider(),
      child: QuestionDetailsScreen(),
    );
  }
}

class QuestionDetailsScreenState extends State<QuestionDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10004,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildBackButton(context),
                SizedBox(height: 24.v),
                _buildTopAnswerSection(context),
                SizedBox(height: 14.v),
                SizedBox(
                  height: 562.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.h),
                          padding: EdgeInsets.all(16.h),
                          decoration: AppDecoration.fillGray5009.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder27,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 387.v,
                                width: 283.h,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          _buildArrowDownRow(
                                            context,
                                            arrowDownImage: ImageConstant
                                                .imgArrowDownBlueGray10003,
                                            votesText: "lbl_70_votes".tr,
                                            timeText: "lbl_21_mins_ago".tr,
                                            justinPressText:
                                                "lbl_justin_press".tr,
                                          ),
                                          SizedBox(height: 13.v),
                                          SizedBox(
                                            height: 60.v,
                                            width: 283.h,
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text(
                                                    "lbl_replay".tr,
                                                    style: theme
                                                        .textTheme.labelSmall!
                                                        .copyWith(
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                                  ),
                                                ),
                                                _buildSeventyThree(
                                                  context,
                                                  description:
                                                      "msg_lorem_ipsum_dolor5"
                                                          .tr,
                                                  image: ImageConstant
                                                      .imgAntDesignLikeOutlined,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 18.v),
                                          Divider(
                                            color: appTheme.gray300,
                                          ),
                                          SizedBox(height: 19.v),
                                          SizedBox(
                                            height: 103.v,
                                            width: 283.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.v),
                                                    child: Text(
                                                      "lbl_replay".tr,
                                                      style: theme
                                                          .textTheme.labelSmall!
                                                          .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                _buildElevenColumn(
                                                  context,
                                                  votesText: "lbl_60_votes".tr,
                                                  timeText:
                                                      "lbl_21_mins_ago".tr,
                                                  tatianaLipshutzText:
                                                      "lbl_martin_rosser".tr,
                                                  descriptionText:
                                                      "msg_lorem_ipsum_dolor5"
                                                          .tr,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 18.v),
                                          Divider(
                                            color: appTheme.gray300,
                                          ),
                                          SizedBox(height: 111.v),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              "lbl_replay".tr,
                                              style: theme.textTheme.labelSmall!
                                                  .copyWith(
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    _buildElevenColumn(
                                      context,
                                      votesText: "lbl_40_votes".tr,
                                      timeText: "lbl_21_mins_ago".tr,
                                      tatianaLipshutzText:
                                          "msg_tatiana_lipshutz".tr,
                                      descriptionText:
                                          "msg_lorem_ipsum_dolor5".tr,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 18.v),
                              Divider(
                                color: appTheme.gray300,
                              ),
                              SizedBox(height: 19.v),
                              _buildArrowDownRow(
                                context,
                                arrowDownImage: ImageConstant.imgPlay,
                                votesText: "lbl_40_votes".tr,
                                timeText: "lbl_21_mins_ago".tr,
                                justinPressText: "lbl_skylar_septimus".tr,
                              ),
                              SizedBox(height: 13.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 272.h,
                                  margin: EdgeInsets.only(right: 10.h),
                                  child: Text(
                                    "msg_lorem_ipsum_dolor5".tr,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodySmallPlusJakartaSansBluegray90003
                                        .copyWith(
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildNavColumn(context),
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
  Widget _buildBackButton(BuildContext context) {
    return SizedBox(
      height: 216.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 66.v),
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 31.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBack,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 64.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 53.h,
                      bottom: 61.v,
                    ),
                    child: Text(
                      "msg_question_details".tr,
                      style:
                          CustomTextStyles.titleLargePlusJakartaSansOnPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
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
                  _buildArrowDownRow(
                    context,
                    arrowDownImage: ImageConstant.imgPlay,
                    votesText: "lbl_bible_privet".tr,
                    timeText: "lbl_21_mins_ago".tr,
                    justinPressText: "lbl_kaelynn_ryder".tr,
                  ),
                  SizedBox(height: 13.v),
                  SizedBox(
                    width: 272.h,
                    child: ReadMoreText(
                      "msg_lorem_ipsum_dolor3".tr,
                      trimLines: 4,
                      colorClickableText: theme.colorScheme.primary,
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTopAnswerSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_top_answer".tr,
            style: CustomTextStyles.titleMediumPlusJakartaSansBluegray90003Bold,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.bodySmallPlusJakartaSansBluegray90003_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNavColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 25.v),
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.outlineGray10004,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 34.v),
            Selector<QuestionDetailsProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.commentController,
              builder: (context, commentController, child) {
                return CustomTextFormField(
                  controller: commentController,
                  hintText: "msg_write_comment".tr,
                  hintStyle: CustomTextStyles.bodyMediumManropeBluegray20001,
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 14.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSendplanefill,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 52.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 20.h,
                    top: 16.v,
                    bottom: 16.v,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildArrowDownRow(
    BuildContext context, {
    required String arrowDownImage,
    required String votesText,
    required String timeText,
    required String justinPressText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: arrowDownImage,
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
                      votesText,
                      style: theme.textTheme.labelSmall!.copyWith(
                        color: appTheme.red700,
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
                  justinPressText,
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

  /// Common widget
  Widget _buildSeventyThree(
    BuildContext context, {
    required String description,
    required String image,
  }) {
    return SizedBox(
      height: 60.v,
      width: 272.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 272.h,
              child: Text(
                description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallPlusJakartaSansBluegray90003
                    .copyWith(
                  color: appTheme.blueGray90003,
                  height: 1.50,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: image,
            height: 12.adaptSize,
            width: 12.adaptSize,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 21.h),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildElevenColumn(
    BuildContext context, {
    required String votesText,
    required String timeText,
    required String tatianaLipshutzText,
    required String descriptionText,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
                          votesText,
                          style: theme.textTheme.labelSmall!.copyWith(
                            color: appTheme.red700,
                          ),
                        ),
                        Text(
                          timeText,
                          style: CustomTextStyles
                              .bodySmallPlusJakartaSansPrimary
                              .copyWith(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      tatianaLipshutzText,
                      style: CustomTextStyles
                          .labelLargePlusJakartaSansBluegray90003
                          .copyWith(
                        color: appTheme.blueGray90003,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 13.v),
        SizedBox(
          height: 60.v,
          width: 272.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 272.h,
                  child: Text(
                    descriptionText,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles
                        .bodySmallPlusJakartaSansBluegray90003
                        .copyWith(
                      color: appTheme.blueGray90003,
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAntDesignLikeOutlinedBlack90001,
                height: 12.adaptSize,
                width: 12.adaptSize,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(right: 21.h),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
