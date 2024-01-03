import 'models/group_chat_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:mdsumsul_s_application5/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:mdsumsul_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:mdsumsul_s_application5/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mdsumsul_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_text_form_field.dart';
import 'provider/group_chat_provider.dart';

class GroupChatScreen extends StatefulWidget {
  const GroupChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  GroupChatScreenState createState() => GroupChatScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GroupChatProvider(),
      child: GroupChatScreen(),
    );
  }
}

class GroupChatScreenState extends State<GroupChatScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 20.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_today".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 13.v),
              Container(
                width: 298.h,
                margin: EdgeInsets.only(
                  left: 42.h,
                  right: 15.h,
                ),
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
                        style: CustomTextStyles.bodyLargeOnPrimary.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              _buildNiceToKnowButton(context),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 6.v),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder27,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 36.v),
                          Container(
                            margin: EdgeInsets.only(left: 36.h),
                            padding: EdgeInsets.all(2.h),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7,
                            ),
                            child: Container(
                              height: 10.adaptSize,
                              width: 10.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.green400,
                                borderRadius: BorderRadius.circular(
                                  5.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildWowThankYouButton(context),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              _buildYouShouldComeToMyHouseButton(context),
              SizedBox(height: 28.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_3_00_pm".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 10.v),
              _buildYouShouldComeToMyHouse(context),
              SizedBox(height: 17.v),
              _buildNiceToKnowButton2(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildEighteen(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrame,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 12.v,
          bottom: 32.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          top: 1.v,
          bottom: 21.v,
        ),
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
                      SizedBox(height: 33.v),
                      Container(
                        margin: EdgeInsets.only(left: 31.h),
                        padding: EdgeInsets.all(2.h),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 1.v),
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(right: 1.h),
                              decoration: BoxDecoration(
                                color: appTheme.lightGreenA700,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    children: [
                      AppbarSubtitleTwo(
                        text: "lbl_group_name".tr,
                      ),
                      SizedBox(height: 6.v),
                      AppbarSubtitleThree(
                        text: "lbl_online".tr,
                        margin: EdgeInsets.only(right: 46.h),
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
          imagePath: ImageConstant.imgFrameOnprimary,
          margin: EdgeInsets.fromLTRB(41.h, 13.v, 41.h, 33.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildNiceToKnowButton(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      width: 131.h,
      text: "lbl_nice_to_know".tr,
      margin: EdgeInsets.only(right: 15.h),
      buttonStyle: CustomButtonStyles.fillPrimaryTL16,
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildWowThankYouButton(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      width: 151.h,
      text: "lbl_wow_thank_you".tr,
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillBlueGray,
    );
  }

  /// Section Widget
  Widget _buildYouShouldComeToMyHouseButton(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      text: "msg_you_should_come".tr,
      margin: EdgeInsets.only(
        left: 59.h,
        right: 21.h,
      ),
      buttonStyle: CustomButtonStyles.fillBlueGrayLR16,
    );
  }

  /// Section Widget
  Widget _buildYouShouldComeToMyHouseButton2(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 56.v,
        text: "msg_you_should_come".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.fillBlueGrayLR16,
      ),
    );
  }

  /// Section Widget
  Widget _buildYouShouldComeToMyHouse(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 21.h),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 6.v),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder27,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 36.v),
                  Container(
                    margin: EdgeInsets.only(left: 36.h),
                    padding: EdgeInsets.all(2.h),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Container(
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.green400,
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _buildYouShouldComeToMyHouseButton2(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNiceToKnowButton2(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      width: 131.h,
      text: "lbl_nice_to_know".tr,
      margin: EdgeInsets.only(right: 15.h),
      buttonStyle: CustomButtonStyles.fillPrimaryTL16,
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildMessageEditText(BuildContext context) {
    return Selector<GroupChatProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.messageEditTextController,
      builder: (context, messageEditTextController, child) {
        return CustomTextFormField(
          controller: messageEditTextController,
          hintText: "msg_type_message_here".tr,
          hintStyle: CustomTextStyles.bodyMediumBluegray300,
          textInputAction: TextInputAction.done,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 14.v, 15.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgFrameBlueGray30001,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 52.v,
          ),
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 14.v, 19.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgFramePrimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 52.v,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 16.v),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
          fillColor: appTheme.gray10005,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 38.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL25,
      ),
      child: _buildMessageEditText(context),
    );
  }
}
