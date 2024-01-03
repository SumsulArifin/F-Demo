import 'models/groups_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'provider/groups_provider.dart';

class GroupsScreen extends StatefulWidget {
  const GroupsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  GroupsScreenState createState() => GroupsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GroupsProvider(),
      child: GroupsScreen(),
    );
  }
}

class GroupsScreenState extends State<GroupsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5009,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 767.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildView(context),
                  _buildMask(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
          child: SizedBox(
            height: 768.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 768.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.blueA40023.withOpacity(0.01),
                          appTheme.gray10000,
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      top: 14.v,
                      right: 30.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "lbl_groups".tr,
                          style:
                              CustomTextStyles.titleSmallManropeBluegray90004,
                        ),
                        SizedBox(height: 25.v),
                        _buildSuggestionsRow(
                          context,
                          suggestionsText: "lbl_my_groups".tr,
                          seeAllText: "lbl_see_all".tr,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30.h, 290.v, 30.h, 454.v),
                  child: _buildSuggestionsRow(
                    context,
                    suggestionsText: "lbl_suggestions".tr,
                    seeAllText: "lbl_see_all".tr,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 29.h,
                      right: 29.h,
                      bottom: 79.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: _buildSuggestionsRow(
                            context,
                            suggestionsText: "lbl_groups_i_manage".tr,
                            seeAllText: "lbl_see_all".tr,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        Container(
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 93.adaptSize,
                                width: 93.adaptSize,
                                decoration: BoxDecoration(
                                  color: appTheme.gray10002,
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(9.h),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 11.h,
                                  top: 11.v,
                                  bottom: 11.v,
                                ),
                                child: _buildText(
                                  context,
                                  lessonOne: "msg_groups_categories".tr,
                                  designBasics: "msg_group_name_goes".tr,
                                  nuncOrnareMagna: "msg_nunc_ornare_magna".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 30.h,
                      top: 99.v,
                    ),
                    decoration: AppDecoration.outlineBlack900012,
                    child: Container(
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder12,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 98.v,
                            width: 278.h,
                            decoration: BoxDecoration(
                              color:
                                  theme.colorScheme.primary.withOpacity(0.08),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(14.h),
                              ),
                            ),
                          ),
                          SizedBox(height: 15.v),
                          _buildPost1Stack(
                            context,
                            userName: "lbl_tiana_rosser".tr,
                            totalMembers: "msg_total_member_18_929".tr,
                            songWriter: "lbl_song_writer".tr,
                            exploreNow: "lbl_explore_now".tr,
                          ),
                          SizedBox(height: 15.v),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      bottom: 237.v,
                    ),
                    child: Row(
                      children: [
                        _buildCard(
                          context,
                          selfOthersText: "lbl_self_others".tr,
                          suspendisseFinibusText: "msg_suspendisse_finibus".tr,
                          newText: "lbl_join_now".tr,
                          recommendText: "lbl_recommend".tr,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: _buildCard(
                            context,
                            selfOthersText: "lbl_self_others".tr,
                            suspendisseFinibusText:
                                "msg_suspendisse_finibus".tr,
                            newText: "lbl_join_now".tr,
                            recommendText: "lbl_recommend".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 99.v),
                    decoration: AppDecoration.outlineBlack900012,
                    child: Container(
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder12,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 98.v,
                            width: 278.h,
                            decoration: BoxDecoration(
                              color:
                                  theme.colorScheme.primary.withOpacity(0.08),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(14.h),
                              ),
                            ),
                          ),
                          SizedBox(height: 15.v),
                          _buildPost1Stack(
                            context,
                            userName: "lbl_tiana_rosser".tr,
                            totalMembers: "msg_total_member_18_929".tr,
                            songWriter: "lbl_song_writer".tr,
                            exploreNow: "lbl_explore_now".tr,
                          ),
                          SizedBox(height: 15.v),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 202.v,
                    width: 135.h,
                    margin: EdgeInsets.only(bottom: 237.v),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 9.h,
                              vertical: 39.v,
                            ),
                            decoration:
                                AppDecoration.outlineBlack900013.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 80.v),
                                Text(
                                  "lbl_self_others".tr,
                                  style: CustomTextStyles
                                      .labelMediumPoppinsGray800,
                                ),
                                SizedBox(height: 4.v),
                                SizedBox(
                                  width: 114.h,
                                  child: Text(
                                    "msg_suspendisse_finibus".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.poppinsGray50006
                                        .copyWith(
                                      height: 1.57,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.all(10.h),
                            decoration: AppDecoration.fillPrimary2.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 69.v),
                                Container(
                                  width: 60.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.h,
                                    vertical: 3.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillGray10004.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder7,
                                  ),
                                  child: Text(
                                    "lbl_recommend".tr,
                                    style: CustomTextStyles.poppinsGray800,
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMask(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 29.h,
          top: 706.v,
          right: 29.h,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder7,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 93.adaptSize,
              width: 93.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.gray10002,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(9.h),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                top: 11.v,
                bottom: 28.v,
              ),
              child: _buildText(
                context,
                lessonOne: "msg_groups_categories".tr,
                designBasics: "msg_group_name_goes".tr,
                nuncOrnareMagna: "msg_nunc_ornare_magna".tr,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSuggestionsRow(
    BuildContext context, {
    required String suggestionsText,
    required String seeAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          suggestionsText,
          style:
              CustomTextStyles.titleMediumPlusJakartaSansBluegray90003.copyWith(
            color: appTheme.blueGray90003,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 6.v),
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
  Widget _buildCard(
    BuildContext context, {
    required String selfOthersText,
    required String suspendisseFinibusText,
    required String newText,
    required String recommendText,
  }) {
    return SizedBox(
      height: 202.v,
      width: 135.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlineBlack900013.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 103.v),
                  Text(
                    selfOthersText,
                    style: CustomTextStyles.labelMediumPoppinsGray800.copyWith(
                      color: appTheme.gray800,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  SizedBox(
                    width: 104.h,
                    child: Text(
                      suspendisseFinibusText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.poppinsGray50006.copyWith(
                        color: appTheme.gray50006,
                        height: 1.57,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    newText,
                    style: CustomTextStyles.bodySmallPrimary8_1.copyWith(
                      decoration: TextDecoration.underline,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.fillPrimary2.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 69.v),
                  Container(
                    width: 60.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillGray10004.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Text(
                      recommendText,
                      style: CustomTextStyles.poppinsGray800.copyWith(
                        color: appTheme.gray800,
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

  /// Common widget
  Widget _buildPost1Stack(
    BuildContext context, {
    required String userName,
    required String totalMembers,
    required String songWriter,
    required String exploreNow,
  }) {
    return SizedBox(
      height: 29.v,
      width: 241.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClockBlueGray10003,
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    bottom: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 205.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              userName,
                              style: CustomTextStyles
                                  .labelLargePlusJakartaSansBlack90001
                                  .copyWith(
                                color: appTheme.black90001,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 5.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                totalMembers,
                                style: CustomTextStyles.plusJakartaSansGray50002
                                    .copyWith(
                                  color: appTheme.gray50002,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        songWriter,
                        style: CustomTextStyles
                            .bodySmallPlusJakartaSansBlack900018
                            .copyWith(
                          color: appTheme.black90001,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text(
                exploreNow,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallBlue600.copyWith(
                  decoration: TextDecoration.underline,
                  color: appTheme.blue600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildText(
    BuildContext context, {
    required String lessonOne,
    required String designBasics,
    required String nuncOrnareMagna,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lessonOne,
          style: CustomTextStyles.bodySmallGray50006.copyWith(
            color: appTheme.gray50006,
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          designBasics,
          style: CustomTextStyles.labelMediumPlusJakartaSansGray800.copyWith(
            color: appTheme.gray800,
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          nuncOrnareMagna,
          style: CustomTextStyles.bodySmallGray50006.copyWith(
            color: appTheme.gray50006,
          ),
        ),
      ],
    );
  }
}
