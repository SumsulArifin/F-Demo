import 'models/sign_up_two_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/core/utils/validation_functions.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_outlined_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_text_form_field.dart';
import 'provider/sign_up_two_provider.dart';

class SignUpTwoScreen extends StatefulWidget {
  const SignUpTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpTwoScreenState createState() => SignUpTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpTwoProvider(),
      child: SignUpTwoScreen(),
    );
  }
}

class SignUpTwoScreenState extends State<SignUpTwoScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 25.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(right: 36.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLogoNw1,
                            height: 109.v,
                            width: 110.h,
                            radius: BorderRadius.circular(
                              54.h,
                            ),
                            margin: EdgeInsets.only(right: 97.h),
                          ),
                          SizedBox(height: 26.v),
                          Padding(
                            padding: EdgeInsets.only(right: 115.h),
                            child: Text(
                              "lbl_sign_up".tr,
                              style:
                                  CustomTextStyles.headlineSmallInterGray90003,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Padding(
                            padding: EdgeInsets.only(right: 48.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "msg_already_have_an".tr,
                                  style:
                                      CustomTextStyles.bodyMediumInterGray90003,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_sign_in".tr,
                                    style:
                                        CustomTextStyles.titleSmallInterPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.v),
                          _buildFirstNameSection(context),
                          SizedBox(height: 24.v),
                          _buildLastNameSection(context),
                          SizedBox(height: 24.v),
                          _buildEmailSection(context),
                          SizedBox(height: 24.v),
                          _buildPasswordSection(context),
                          SizedBox(height: 57.v),
                          _buildSignInButtonSection(context),
                          SizedBox(height: 17.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 51.h,
                              right: 16.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 6.v,
                                    bottom: 8.v,
                                  ),
                                  child: SizedBox(
                                    width: 117.h,
                                    child: Divider(
                                      color: appTheme.gray30001,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Text(
                                    "lbl_or".tr,
                                    style: CustomTextStyles
                                        .bodyMediumInterBluegray40004,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 6.v,
                                    bottom: 8.v,
                                  ),
                                  child: SizedBox(
                                    width: 129.h,
                                    child: Divider(
                                      color: appTheme.gray30001,
                                      indent: 12.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 51.h,
                              right: 16.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                _buildGoogleButtonSection(context),
                                _buildFacebookButtonSection(context),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.v),
                          _buildCheckmarkSection(context),
                        ],
                      ),
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
  Widget _buildFirstNameSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 51.h,
        right: 16.h,
      ),
      child: Selector<SignUpTwoProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.firstNameSectionController,
        builder: (context, firstNameSectionController, child) {
          return CustomTextFormField(
            controller: firstNameSectionController,
            hintText: "lbl_first_name".tr,
            hintStyle: CustomTextStyles.bodyMediumInterBluegray40004,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLastNameSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 51.h,
        right: 16.h,
      ),
      child: Selector<SignUpTwoProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.lastNameSectionController,
        builder: (context, lastNameSectionController, child) {
          return CustomTextFormField(
            controller: lastNameSectionController,
            hintText: "lbl_last_name".tr,
            hintStyle: CustomTextStyles.bodyMediumInterBluegray40004,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 51.h,
        right: 16.h,
      ),
      child: Selector<SignUpTwoProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.emailSectionController,
        builder: (context, emailSectionController, child) {
          return CustomTextFormField(
            controller: emailSectionController,
            hintText: "lbl_email_address".tr,
            hintStyle: CustomTextStyles.bodyMediumInterBluegray40004,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 51.h,
        right: 16.h,
      ),
      child: Consumer<SignUpTwoProvider>(
        builder: (context, provider, child) {
          return CustomTextFormField(
            controller: provider.passwordSectionController,
            hintText: "lbl_password".tr,
            hintStyle: CustomTextStyles.bodyMediumInterBluegray40004,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                provider.changePasswordVisibility();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: provider.isShowPassword,
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 15.v,
              bottom: 15.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInButtonSection(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      text: "lbl_sign_in".tr,
      margin: EdgeInsets.only(
        left: 51.h,
        right: 16.h,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleSmallInterOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildGoogleButtonSection(BuildContext context) {
    return CustomOutlinedButton(
      height: 48.v,
      width: 124.h,
      text: "lbl_google".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonTextStyle: CustomTextStyles.titleSmallInterGray90003,
    );
  }

  /// Section Widget
  Widget _buildFacebookButtonSection(BuildContext context) {
    return CustomOutlinedButton(
      height: 48.v,
      width: 124.h,
      text: "lbl_facebook".tr,
      margin: EdgeInsets.only(left: 24.h),
      buttonTextStyle: CustomTextStyles.titleSmallInterGray90003,
    );
  }

  /// Section Widget
  Widget _buildCheckmarkSection(BuildContext context) {
    return SizedBox(
      height: 197.v,
      width: 339.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                right: 18.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCheckmark,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 21.v),
                  ),
                  Expanded(
                    child: Container(
                      width: 237.h,
                      margin: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_by_clicking_create".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallInterBluegray40004,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 261.h,
              margin: EdgeInsets.only(
                right: 26.h,
                bottom: 62.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_protected_by_recaptcha2".tr,
                      style: CustomTextStyles.bodySmallInterBluegray40004_1,
                    ),
                    TextSpan(
                      text: "lbl_privacy_policy".tr,
                      style: CustomTextStyles.bodySmallInterPrimary,
                    ),
                    TextSpan(
                      text: "lbl_and".tr,
                      style: CustomTextStyles.bodySmallInterBluegray40004_1,
                    ),
                    TextSpan(
                      text: "msg_terms_of_service".tr,
                      style: CustomTextStyles.bodySmallInterPrimary,
                    ),
                    TextSpan(
                      text: "lbl".tr,
                      style: CustomTextStyles.bodySmallInterBluegray40004_1,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 77.v),
              child: SizedBox(
                width: 304.h,
                child: Divider(
                  color: appTheme.gray30001,
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.2,
            child: CustomImageView(
              imagePath: ImageConstant.imgUnion197x217,
              height: 197.v,
              width: 217.h,
              alignment: Alignment.centerLeft,
            ),
          ),
        ],
      ),
    );
  }
}
