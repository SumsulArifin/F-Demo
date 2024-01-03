import '../donate_home_screen/widgets/donatehomegrid_item_widget.dart';
import 'models/donate_home_model.dart';
import 'models/donatehomegrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'provider/donate_home_provider.dart';

class DonateHomeScreen extends StatefulWidget {
  const DonateHomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DonateHomeScreenState createState() => DonateHomeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DonateHomeProvider(),
      child: DonateHomeScreen(),
    );
  }
}

class DonateHomeScreenState extends State<DonateHomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5006,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 4.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_donate".tr,
                style: CustomTextStyles.titleSmallGray90002,
              ),
              SizedBox(height: 29.v),
              _buildDonateHomeGrid(context),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                height: 39.v,
                text: "lbl_next".tr,
                buttonTextStyle:
                    CustomTextStyles.labelMediumPoppinsOnPrimaryBold_1,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDonateHomeGrid(BuildContext context) {
    return Consumer<DonateHomeProvider>(
      builder: (context, provider, child) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 107.v,
            crossAxisCount: 2,
            mainAxisSpacing: 13.h,
            crossAxisSpacing: 13.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider.donateHomeModelObj.donatehomegridItemList.length,
          itemBuilder: (context, index) {
            DonatehomegridItemModel model =
                provider.donateHomeModelObj.donatehomegridItemList[index];
            return DonatehomegridItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
