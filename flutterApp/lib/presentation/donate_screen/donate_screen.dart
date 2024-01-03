import 'models/donate_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_text_form_field.dart';
import 'provider/donate_provider.dart';

class DonateScreen extends StatefulWidget {
  const DonateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DonateScreenState createState() => DonateScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DonateProvider(),
      child: DonateScreen(),
    );
  }
}

class DonateScreenState extends State<DonateScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5006,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 31.h,
            vertical: 18.v,
          ),
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 22.v),
              _buildSection(context),
              SizedBox(height: 24.v),
              _buildTitle(context),
              SizedBox(height: 17.v),
              _buildCard(context),
              SizedBox(height: 24.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_donation_amount".tr,
                  style: CustomTextStyles.labelLargeGray90002_1,
                ),
              ),
              SizedBox(height: 17.v),
              _buildPrice(context),
              SizedBox(height: 12.v),
              Selector<DonateProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.amountController,
                builder: (context, amountController, child) {
                  return CustomTextFormField(
                    controller: amountController,
                    hintText: "msg_write_the_amount".tr,
                    hintStyle: CustomTextStyles.bodySmallBluegray4000111_4,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 29.h,
                      vertical: 10.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineGrayTL4,
                  );
                },
              ),
              SizedBox(height: 24.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_add_note".tr,
                  style: CustomTextStyles.labelLargeGray90002_1,
                ),
              ),
              SizedBox(height: 17.v),
              Selector<DonateProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.writeyournoteController,
                builder: (context, writeyournoteController, child) {
                  return CustomTextFormField(
                    controller: writeyournoteController,
                    hintText: "msg_write_your_note".tr,
                    hintStyle: CustomTextStyles.bodySmallBluegray4000111_4,
                    textInputAction: TextInputAction.done,
                    maxLines: 5,
                    contentPadding: EdgeInsets.all(11.h),
                    borderDecoration: TextFormFieldStyleHelper.outlineGrayTL4,
                  );
                },
              ),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                height: 38.v,
                text: "lbl_donate".tr,
                buttonTextStyle:
                    CustomTextStyles.labelMediumPoppinsOnPrimaryBold_3,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 11.adaptSize,
          width: 11.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 3.v),
        ),
        Text(
          "lbl_donate".tr,
          style: CustomTextStyles.labelLargeGray90002SemiBold,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIconGray90002,
          height: 11.v,
          width: 1.h,
          margin: EdgeInsets.symmetric(vertical: 3.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSection(BuildContext context) {
    return Container(
      width: 313.h,
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_class_aptent_church".tr,
            style: CustomTextStyles.labelMediumPoppinsGray90002,
          ),
          SizedBox(height: 10.v),
          Container(
            width: 252.h,
            margin: EdgeInsets.only(right: 38.h),
            child: Text(
              "msg_nullam_non_arcu".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallBluegray4000111_4.copyWith(
                height: 1.86,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            "lbl_2_500".tr,
            style: CustomTextStyles.bodySmallPrimary_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_payment_method".tr,
          style: CustomTextStyles.labelLargeGray90002_1,
        ),
        Text(
          "lbl_edit".tr,
          style: CustomTextStyles.bodySmallPrimary11,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_caspian_bellevedere".tr,
                style: CustomTextStyles.labelMediumPoppinsGray90002,
              ),
              SizedBox(height: 3.v),
              Text(
                "msg_1234".tr,
                style: CustomTextStyles.bodySmallBluegray4000111_4,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTelevisionBlueGray10002,
            height: 23.v,
            width: 37.h,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 95.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Text(
            "lbl_100".tr,
            style: CustomTextStyles.bodySmallOnPrimary11_1,
          ),
        ),
        Container(
          width: 95.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineBlack90001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Text(
            "lbl_150".tr,
            style: CustomTextStyles.bodySmallBluegray4000111_4,
          ),
        ),
        Container(
          width: 95.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineBlack90001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Text(
            "lbl_200".tr,
            style: CustomTextStyles.bodySmallBluegray4000111_4,
          ),
        ),
      ],
    );
  }
}
