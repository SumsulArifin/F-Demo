import '../inbox_screen/widgets/userprofilelist_item_widget.dart';
import 'models/inbox_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_text_form_field.dart';
import 'provider/inbox_provider.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InboxScreenState createState() => InboxScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InboxProvider(),
      child: InboxScreen(),
    );
  }
}

class InboxScreenState extends State<InboxScreen> {
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
              SizedBox(height: 19.v),
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
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL40,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSearchRow(context),
                    SizedBox(height: 31.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "lbl_all_message".tr,
                          style: CustomTextStyles.titleMediumOnPrimaryContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    _buildUserProfileList(context),
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
          child: Selector<InboxProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.searchController,
            builder: (context, searchController, child) {
              return CustomTextFormField(
                controller: searchController,
                hintText: "lbl_search_massage".tr,
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
  Widget _buildUserProfileList(BuildContext context) {
    return Consumer<InboxProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: provider.inboxModelObj.userprofilelistItemList.length,
          itemBuilder: (context, index) {
            UserprofilelistItemModel model =
                provider.inboxModelObj.userprofilelistItemList[index];
            return UserprofilelistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
