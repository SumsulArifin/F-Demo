import 'models/group_video_calling_mute_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_icon_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_outlined_button.dart';
import 'provider/group_video_calling_mute_provider.dart';

class GroupVideoCallingMuteScreen extends StatefulWidget {
  const GroupVideoCallingMuteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  GroupVideoCallingMuteScreenState createState() =>
      GroupVideoCallingMuteScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GroupVideoCallingMuteProvider(),
      child: GroupVideoCallingMuteScreen(),
    );
  }
}

class GroupVideoCallingMuteScreenState
    extends State<GroupVideoCallingMuteScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5004,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildVideoCallingStack(context),
              SizedBox(height: 16.v),
              SizedBox(
                height: 419.v,
                width: 355.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 197.v,
                        width: 196.h,
                        padding: EdgeInsets.only(
                          left: 50.h,
                          right: 50.h,
                          bottom: 66.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup71,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: CustomIconButton(
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          padding: EdgeInsets.all(12.h),
                          decoration: IconButtonStyleHelper.outlineGray,
                          alignment: Alignment.bottomLeft,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame13,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 263.v,
                        width: 160.h,
                        margin: EdgeInsets.only(left: 20.h),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(
                            16.h,
                          ),
                          border: Border.all(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            width: 4.h,
                            strokeAlign: strokeAlignOutside,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: appTheme.gray7001e,
                              spreadRadius: 2.h,
                              blurRadius: 2.h,
                              offset: Offset(
                                0,
                                4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 263.v,
                        width: 160.h,
                        padding: EdgeInsets.all(8.h),
                        decoration: AppDecoration.outlineOnPrimary1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: CustomIconButton(
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          decoration: IconButtonStyleHelper.outlineGrayTL16,
                          alignment: Alignment.topLeft,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMicOffLine,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 135.h,
                        bottom: 58.v,
                      ),
                      child: CustomIconButton(
                        height: 66.adaptSize,
                        width: 66.adaptSize,
                        padding: EdgeInsets.all(19.h),
                        decoration: IconButtonStyleHelper.outlineRed,
                        alignment: Alignment.bottomRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPhoneFill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 30.h,
                        bottom: 66.v,
                      ),
                      child: CustomIconButton(
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        padding: EdgeInsets.all(12.h),
                        decoration: IconButtonStyleHelper.outlineGrayTL25,
                        alignment: Alignment.bottomRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMusicOnprimary,
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      height: 48.v,
                      width: 261.h,
                      text: "msg_you_are_muted_please".tr,
                      margin: EdgeInsets.only(
                        right: 37.h,
                        bottom: 168.v,
                      ),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconInformationline,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.outlineBlueGrayA,
                      buttonTextStyle:
                          CustomTextStyles.bodySmallManropeBluegray800,
                      alignment: Alignment.bottomRight,
                    ),
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
  Widget _buildVideoCallingStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 333.v,
        width: 355.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 198.h,
                margin: EdgeInsets.only(
                  left: 157.h,
                  bottom: 185.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 22.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgUnion,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUserPrimary,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(bottom: 84.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEyeRed400,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(
                        left: 17.h,
                        bottom: 84.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 263.v,
                width: 160.h,
                padding: EdgeInsets.all(8.h),
                decoration: AppDecoration.outlineOnPrimary1.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.outlineGrayTL16,
                  alignment: Alignment.topLeft,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMicOffLine,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 263.v,
                width: 160.h,
                margin: EdgeInsets.only(right: 20.h),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(
                    16.h,
                  ),
                  border: Border.all(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                    width: 4.h,
                    strokeAlign: strokeAlignOutside,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.gray7001e,
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomOutlinedButton(
              width: 72.h,
              text: "lbl_10_03_42".tr,
              margin: EdgeInsets.only(
                left: 132.h,
                top: 18.v,
              ),
              buttonStyle: CustomButtonStyles.outlinePrimary,
              buttonTextStyle: CustomTextStyles.labelLargeManropePrimary,
              alignment: Alignment.topLeft,
            ),
          ],
        ),
      ),
    );
  }
}
