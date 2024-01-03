import 'models/add_user_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_icon_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_search_view.dart';
import 'provider/add_user_provider.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AddUserScreenState createState() => AddUserScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddUserProvider(),
      child: AddUserScreen(),
    );
  }
}

class AddUserScreenState extends State<AddUserScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildUnionStack(context),
              SizedBox(height: 23.v),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.v),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder23,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Row(
                        children: [
                          Container(
                            height: 51.adaptSize,
                            width: 51.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray10003,
                              borderRadius: BorderRadius.circular(
                                25.h,
                              ),
                              border: Border.all(
                                color:
                                    theme.colorScheme.onPrimary.withOpacity(1),
                                width: 2.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.gray6001e,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 14.v,
                              bottom: 14.v,
                            ),
                            child: Text(
                              "lbl_michael_john".tr,
                              style: CustomTextStyles
                                  .titleMediumManropeBluegray800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Divider(
                      color: appTheme.gray100,
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Row(
                        children: [
                          Container(
                            decoration: AppDecoration.outlineOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder27,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 35.v),
                                Container(
                                  margin: EdgeInsets.only(left: 33.h),
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
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 14.v,
                              bottom: 14.v,
                            ),
                            child: Text(
                              "lbl_jonathan".tr,
                              style: CustomTextStyles
                                  .titleMediumManropeBluegray800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Divider(
                      color: appTheme.gray100,
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Row(
                        children: [
                          Container(
                            decoration: AppDecoration.outlineOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder27,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 35.v),
                                Container(
                                  margin: EdgeInsets.only(left: 33.h),
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
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 14.v,
                              bottom: 14.v,
                            ),
                            child: Text(
                              "lbl_lord_justin".tr,
                              style: CustomTextStyles
                                  .titleMediumManropeBluegray800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Divider(
                      color: appTheme.gray100,
                    ),
                    SizedBox(height: 14.v),
                    _buildChatListRow(context),
                    SizedBox(height: 14.v),
                    Divider(
                      color: appTheme.gray100,
                    ),
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Row(
                        children: [
                          Container(
                            decoration: AppDecoration.outlineOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder27,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 35.v),
                                Container(
                                  margin: EdgeInsets.only(left: 33.h),
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
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 14.v,
                              bottom: 14.v,
                            ),
                            child: Text(
                              "lbl_katie_peru".tr,
                              style: CustomTextStyles
                                  .titleMediumManropeBluegray800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Divider(
                      color: appTheme.gray100,
                    ),
                    SizedBox(height: 14.v),
                    _buildChatListRow1(context),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                      height: 50.v,
                      text: "msg_add_to_video_call".tr,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      buttonStyle: CustomButtonStyles.outlineBlueGrayC,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumManropeOnPrimary,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 34.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUnionStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 148.v,
        width: 351.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Opacity(
              opacity: 0.2,
              child: CustomImageView(
                imagePath: ImageConstant.imgUnion,
                height: 148.v,
                width: 198.h,
                alignment: Alignment.centerRight,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.v),
              child: CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.outlineBlueGrayC,
                alignment: Alignment.topLeft,
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconArrowLeftLine,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 58.h,
                  top: 34.v,
                ),
                child: Text(
                  "msg_add_user_to_join".tr,
                  style: CustomTextStyles.titleMediumManropeOnPrimary,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Selector<AddUserProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomSearchView(
                      width: 327.h,
                      controller: searchController,
                      hintText: "msg_search_contact".tr,
                      hintStyle:
                          CustomTextStyles.bodyMediumManropeBluegray20001,
                      alignment: Alignment.bottomLeft,
                      contentPadding: EdgeInsets.only(
                        top: 19.v,
                        right: 30.h,
                        bottom: 19.v,
                      ),
                      borderDecoration: SearchViewStyleHelper.outlineBlueGrayA,
                      fillColor: theme.colorScheme.onPrimary.withOpacity(1),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChatListRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 51.adaptSize,
              width: 51.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.blueGray10003,
                borderRadius: BorderRadius.circular(
                  25.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  width: 2.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.gray6001e,
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      10,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 14.v,
                bottom: 14.v,
              ),
              child: Text(
                "lbl_remi_chan".tr,
                style: CustomTextStyles.titleMediumManropeBluegray800,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgIconCheckLine,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 13.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChatListRow1(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: AppDecoration.outlineOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder27,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 35.v),
                  Container(
                    margin: EdgeInsets.only(left: 33.h),
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
                left: 16.h,
                top: 16.v,
                bottom: 12.v,
              ),
              child: Text(
                "lbl_legia_micha".tr,
                style: CustomTextStyles.titleMediumManropeBluegray800,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgIconCheckLine,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                top: 13.v,
                bottom: 12.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
