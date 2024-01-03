import 'models/create_groups_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_icon_button.dart';
import 'provider/create_groups_provider.dart';

class CreateGroupsScreen extends StatefulWidget {
  const CreateGroupsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CreateGroupsScreenState createState() => CreateGroupsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreateGroupsProvider(),
      child: CreateGroupsScreen(),
    );
  }
}

class CreateGroupsScreenState extends State<CreateGroupsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              margin: EdgeInsets.only(bottom: 3.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.h),
                              child: Text(
                                "lbl_add_new_group".tr,
                                style: CustomTextStyles.titleLargeOnPrimaryBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 36.h,
                          right: 100.h,
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 2.h),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder27,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 42.v),
                                  Container(
                                    margin: EdgeInsets.only(left: 38.h),
                                    padding: EdgeInsets.all(2.h),
                                    decoration:
                                        AppDecoration.fillOnPrimary.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7,
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
                            Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 1.h),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder27,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 42.v),
                                  Container(
                                    margin: EdgeInsets.only(left: 40.h),
                                    padding: EdgeInsets.all(2.h),
                                    decoration:
                                        AppDecoration.fillOnPrimary.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7,
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
                            Container(
                              margin: EdgeInsets.only(left: 30.h),
                              padding: EdgeInsets.symmetric(horizontal: 1.h),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder27,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 42.v),
                                  Container(
                                    margin: EdgeInsets.only(left: 40.h),
                                    padding: EdgeInsets.all(2.h),
                                    decoration:
                                        AppDecoration.fillOnPrimary.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7,
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
                          ],
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25.h,
                          right: 115.h,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "lbl_alexander".tr,
                              style: CustomTextStyles
                                  .titleMediumNunitoSansOnPrimary,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text(
                                "lbl_abraham".tr,
                                style: CustomTextStyles
                                    .titleMediumNunitoSansOnPrimary,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "lbl_adi".tr,
                              style: CustomTextStyles
                                  .titleMediumNunitoSansOnPrimary,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 33.v),
                      Container(
                        decoration: AppDecoration.outlineBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 25.v),
                            _buildAddNewGroup(context),
                            SizedBox(height: 12.v),
                            Divider(
                              color: appTheme.gray200,
                              indent: 25.h,
                              endIndent: 25.h,
                            ),
                            SizedBox(height: 19.v),
                            _buildOnlineRow(context),
                            SizedBox(height: 20.v),
                            Divider(
                              color: appTheme.gray200,
                              indent: 25.h,
                              endIndent: 25.h,
                            ),
                            SizedBox(height: 19.v),
                            _buildViewRow(context),
                            SizedBox(height: 20.v),
                            Divider(
                              color: appTheme.gray200,
                              indent: 25.h,
                              endIndent: 25.h,
                            ),
                            SizedBox(height: 19.v),
                            _buildViewRow1(context),
                            SizedBox(height: 20.v),
                            Divider(
                              color: appTheme.gray200,
                              indent: 25.h,
                              endIndent: 25.h,
                            ),
                            SizedBox(height: 18.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 25.h),
                                child: Text(
                                  "lbl_b".tr,
                                  style: CustomTextStyles.bodyMediumGray70004,
                                ),
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Divider(
                              color: appTheme.gray200,
                              indent: 25.h,
                              endIndent: 25.h,
                            ),
                            SizedBox(height: 19.v),
                            _buildViewRow2(context),
                            SizedBox(height: 20.v),
                            Divider(
                              color: appTheme.gray200,
                              indent: 25.h,
                              endIndent: 25.h,
                            ),
                            SizedBox(height: 18.v),
                            _buildOnlineRow1(context),
                            SizedBox(height: 2.v),
                            Container(
                              height: 19.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.onPrimary.withOpacity(1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Divider(
                          color: appTheme.gray200,
                          indent: 25.h,
                          endIndent: 25.h,
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
  Widget _buildAddNewGroup(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_a".tr,
              style: CustomTextStyles.bodyMediumGray70004,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray70004,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOnlineRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 35.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 191.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
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
                        margin: EdgeInsets.only(left: 42.h),
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
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.v,
                    bottom: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_alexander_won".tr,
                        style:
                            CustomTextStyles.titleMediumNunitoSansBluegray90001,
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        "lbl_available".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 18.v,
              bottom: 12.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkOnprimary,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12.h,
                      ),
                      border: Border.all(
                        color: appTheme.gray20004,
                        width: 2.h,
                      ),
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
  Widget _buildViewRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 35.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 56.v,
            width: 58.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray10003,
                      borderRadius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 4.v),
                    padding: EdgeInsets.all(2.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Container(
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.gray40001,
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_abraham_johny".tr,
                  style: CustomTextStyles.titleMediumNunitoSansBluegray90001,
                ),
                SizedBox(height: 7.v),
                Text(
                  "msg_chat_me_directly".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 27.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkOnprimary,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12.h,
                      ),
                      border: Border.all(
                        color: appTheme.gray20004,
                        width: 2.h,
                      ),
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
  Widget _buildViewRow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 35.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 56.v,
            width: 58.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray10003,
                      borderRadius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding: EdgeInsets.all(2.h),
                    decoration: BoxDecoration(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_adi_mowkins".tr,
                  style: CustomTextStyles.titleMediumNunitoSansBluegray90001,
                ),
                SizedBox(height: 8.v),
                Text(
                  "msg_bussy_chat_later".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 27.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkOnprimary,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12.h,
                      ),
                      border: Border.all(
                        color: appTheme.gray20004,
                        width: 2.h,
                      ),
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
  Widget _buildViewRow2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 35.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 56.adaptSize,
            width: 56.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray10003,
              borderRadius: BorderRadius.circular(
                28.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_buna_mikaels".tr,
                  style: CustomTextStyles.titleMediumNunitoSansBluegray90001,
                ),
                SizedBox(height: 9.v),
                Text(
                  "msg_and_ordinary_girl".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 27.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
              border: Border.all(
                color: appTheme.gray20004,
                width: 2.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOnlineRow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 35.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder27,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 34.v),
                Container(
                  margin: EdgeInsets.only(left: 42.h),
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
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 2.v,
              bottom: 3.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_budi_normandi".tr,
                  style: CustomTextStyles.titleMediumNunitoSansBluegray90001,
                ),
                SizedBox(height: 7.v),
                Text(
                  "msg_not_available_now".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 27.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
              border: Border.all(
                color: appTheme.gray20004,
                width: 2.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
