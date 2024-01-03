import 'models/inbox_search_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_text_form_field.dart';
import 'provider/inbox_search_provider.dart';

class InboxSearchScreen extends StatefulWidget {
  const InboxSearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InboxSearchScreenState createState() => InboxSearchScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InboxSearchProvider(),
      child: InboxSearchScreen(),
    );
  }
}

class InboxSearchScreenState extends State<InboxSearchScreen> {
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Text(
                "lbl_inbox".tr,
                style: CustomTextStyles.headlineSmallOnPrimary,
              ),
              SizedBox(height: 20.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 32.v,
                ),
                decoration: AppDecoration.fillGray5005.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL40,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildSearchRow(context),
                    SizedBox(height: 29.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "lbl_result".tr,
                          style: CustomTextStyles.titleMediumOnPrimaryContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    _buildDetailChatRow(context),
                    SizedBox(height: 23.v),
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
  Widget _buildSearchRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Selector<InboxSearchProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.nameController,
            builder: (context, nameController, child) {
              return CustomTextFormField(
                controller: nameController,
                hintText: "lbl_gabriella".tr,
                hintStyle: CustomTextStyles.bodySmallGray90004,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 15.v,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgContrastOnprimarycontainer,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 46.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 14.v,
                  right: 30.h,
                  bottom: 14.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayA,
              );
            },
          ),
        ),
        Container(
          height: 46.v,
          width: 70.h,
          margin: EdgeInsets.only(left: 20.h),
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.outlineBlueGrayA.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder23,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgUserGray90005,
            height: 20.adaptSize,
            width: 20.adaptSize,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDetailChatRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBluegray2003a.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder23,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: AppDecoration.fillGray40005.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder23,
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
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.green500,
                      borderRadius: BorderRadius.circular(
                        4.h,
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
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_gabriella_michalle".tr,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
                SizedBox(height: 5.v),
                Text(
                  "msg_hi_how_about_your".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              bottom: 2.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_10_00_am".tr,
                  style: CustomTextStyles.bodySmallGray90004_1,
                ),
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 24.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder12,
                    ),
                    child: Text(
                      "lbl_2".tr,
                      style: CustomTextStyles.bodySmallOnPrimary_1,
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
}
