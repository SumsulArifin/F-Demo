import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'package:mdsumsul_s_application5/widgets/custom_pin_code_text_field.dart';
import 'provider/sign_up_provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpScreenState createState() => SignUpScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpProvider(),
      child: SignUpScreen(),
    );
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogoNw1,
                height: 109.v,
                width: 110.h,
                radius: BorderRadius.circular(
                  54.h,
                ),
              ),
              SizedBox(height: 26.v),
              Text(
                "lbl_sign_up".tr,
                style: CustomTextStyles.headlineSmallInterGray90003,
              ),
              SizedBox(height: 9.v),
              Text(
                "msg_we_send_a_code_in".tr,
                style: CustomTextStyles.bodyMediumInterGray90003,
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 51.h,
                  right: 52.h,
                ),
                child: Selector<SignUpProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.otpController,
                  builder: (context, otpController, child) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 39.v),
              CustomElevatedButton(
                height: 48.v,
                text: "lbl_jump_to_home".tr,
                margin: EdgeInsets.only(
                  left: 51.h,
                  right: 52.h,
                ),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.titleSmallInterOnPrimary,
              ),
              SizedBox(height: 29.v),
              Divider(
                color: appTheme.gray30001,
                indent: 35.h,
                endIndent: 36.h,
              ),
              SizedBox(height: 24.v),
              SizedBox(
                width: 261.h,
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
              SizedBox(height: 26.v),
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
        ),
      ),
    );
  }
}
