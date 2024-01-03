import 'models/group_video_calling_mute_one_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_icon_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_outlined_button.dart';
import 'provider/group_video_calling_mute_one_provider.dart';

class GroupVideoCallingMuteOneScreen extends StatefulWidget {
  const GroupVideoCallingMuteOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  GroupVideoCallingMuteOneScreenState createState() =>
      GroupVideoCallingMuteOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GroupVideoCallingMuteOneProvider(),
      child: GroupVideoCallingMuteOneScreen(),
    );
  }
}

class GroupVideoCallingMuteOneScreenState
    extends State<GroupVideoCallingMuteOneScreen> {
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
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Opacity(
                opacity: 0.2,
                child: CustomImageView(
                  imagePath: ImageConstant.imgUnion,
                  height: 148.v,
                  width: 198.h,
                  alignment: Alignment.topRight,
                ),
              ),
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
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 66.v,
                  ),
                  padding: EdgeInsets.all(8.h),
                  decoration: AppDecoration.outlineOnPrimary2.copyWith(
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
                alignment: Alignment.topRight,
                child: Container(
                  height: 263.v,
                  width: 160.h,
                  margin: EdgeInsets.only(
                    top: 70.v,
                    right: 20.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10003,
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
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 263.v,
                  width: 160.h,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    bottom: 156.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10003,
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
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 263.v,
                  width: 160.h,
                  margin: EdgeInsets.only(
                    right: 16.h,
                    bottom: 152.v,
                  ),
                  padding: EdgeInsets.all(8.h),
                  decoration: AppDecoration.outlineOnPrimary2.copyWith(
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
              CustomOutlinedButton(
                width: 72.h,
                text: "lbl_10_03_42".tr,
                margin: EdgeInsets.only(top: 18.v),
                buttonStyle: CustomButtonStyles.outlineBlue,
                buttonTextStyle: CustomTextStyles.labelLargeManropeBlue600,
                alignment: Alignment.topCenter,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 58.v),
                child: CustomIconButton(
                  height: 66.adaptSize,
                  width: 66.adaptSize,
                  padding: EdgeInsets.all(19.h),
                  decoration: IconButtonStyleHelper.outlineRed,
                  alignment: Alignment.bottomCenter,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPhoneFill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 50.h,
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.fromLTRB(57.h, 552.v, 57.h, 168.v),
                  padding: EdgeInsets.all(12.h),
                  decoration: AppDecoration.outlineBluegray8000a.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder23,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconInformationline,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 5.v,
                        ),
                        child: Text(
                          "msg_you_are_muted_please".tr,
                          style: CustomTextStyles.bodySmallManropeBluegray800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 765.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 24.h),
                        child: CustomIconButton(
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          decoration: IconButtonStyleHelper.outlineBlueGrayC,
                          alignment: Alignment.centerRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIconCloseFill,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.v),
                      _buildNinetyFive(context),
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
  Widget _buildNinetyFive(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.outlineGrayE.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIllustration,
            height: 132.adaptSize,
            width: 132.adaptSize,
            radius: BorderRadius.circular(
              66.h,
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            "lbl_are_you_sure".tr,
            style: theme.textTheme.headlineMedium,
          ),
          SizedBox(height: 13.v),
          Container(
            width: 292.h,
            margin: EdgeInsets.symmetric(horizontal: 17.h),
            child: Text(
              "msg_hang_up_on_group".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumManropeBluegray400.copyWith(
                height: 1.71,
              ),
            ),
          ),
          SizedBox(height: 21.v),
          CustomElevatedButton(
            height: 50.v,
            text: "msg_leave_group_video".tr,
            buttonStyle: CustomButtonStyles.outlineBlueGrayCTL25,
            buttonTextStyle: CustomTextStyles.titleMediumManropeOnPrimary,
          ),
          SizedBox(height: 22.v),
        ],
      ),
    );
  }
}
