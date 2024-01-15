import 'package:flutter/material.dart';
import 'package:mvvm_provider_example/utils/routes/routeName.dart';
import 'package:mvvm_provider_example/utils/view_utils/size_utils.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../utils/view_utils/image_constant.dart';
import '../widgets/custom_checkbox_button.dart';
import '../widgets/custom_image_view.dart';
import '../widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeUtils.setScreenSize(
      BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      MediaQuery.of(context).orientation,
    );
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(28.h),
          child: Column(
            children: [
              SizedBox(
                height: 225.v,
                width: 285.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPngtreeRealEstate,
                      height: 225.v,
                      width: 285.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 83.h,
                          right: 97.h,
                          bottom: 3.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "AMS",
                              style: theme.textTheme.headlineSmall,
                            ),
                            Center(
                              child: Text(
                                "Your House",

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 94.h),
                  child: Text(
                    "Login",
                    style: theme.textTheme.displayMedium,
                  ),
                ),
              ),
              SizedBox(height: 56.v),
              TextFormField(
                controller: TextEditingController(), // Replace with your controller
                decoration: InputDecoration(
                  hintText: "User Name",
                  prefixIcon: Container(
                    margin: EdgeInsets.fromLTRB(23.h, 14.v, 25.h, 14.v),
                    child: CustomImageView(
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(0, 14.v, 0, 14.v), // Adjust padding as needed
                  border: OutlineInputBorder(), // You can customize the border
                ),
              ),
              SizedBox(height: 34.v),
            TextFormField(
              controller: TextEditingController(), // Replace with your controller
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Container(
                  margin: EdgeInsets.fromLTRB(23.h, 14.v, 25.h, 14.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTrophy,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                  ),
                ),
                contentPadding: EdgeInsets.fromLTRB(0, 14.v, 0, 14.v),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              obscureText: true,
            ),
              SizedBox(height: 13.v),
              _buildLoginForm(context),
              SizedBox(height: 24.v),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.home);
                },
                child: Text("Sign In"),
              ),
              SizedBox(height: 62.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 31.h,
                    right: 45.h,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text(
                          "Don’t have an account",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RouteName.signUp);
                          },
                            child: Text(


                              "SignUp",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 3.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomCheckboxButton(
              text: "Remember Me",
              value: false, // Replace with your value
              onChange: (value) {
                // Replace with your logic
              },
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Text(
              "Forgot password?",
              style: CustomTextStyles.labelLargeOpenSansGray90013,
            ),
          ),
        ],
      ),
    );
  }
}
