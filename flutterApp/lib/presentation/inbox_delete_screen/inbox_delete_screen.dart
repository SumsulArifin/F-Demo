import '../inbox_delete_screen/widgets/chatcomponentlist_item_widget.dart';
import 'models/chatcomponentlist_item_model.dart';
import 'models/inbox_delete_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_text_form_field.dart';
import 'provider/inbox_delete_provider.dart';

class InboxDeleteScreen extends StatefulWidget {
  const InboxDeleteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InboxDeleteScreenState createState() => InboxDeleteScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InboxDeleteProvider(),
      child: InboxDeleteScreen(),
    );
  }
}

class InboxDeleteScreenState extends State<InboxDeleteScreen> {
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
                padding: EdgeInsets.symmetric(vertical: 32.v),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL40,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSearchRow(context),
                    SizedBox(height: 31.v),
                    Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_all_message".tr,
                        style: CustomTextStyles.titleMediumOnPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 21.v),
                    _buildDetailChatRow(context),
                    SizedBox(height: 17.v),
                    _buildChatComponentList(context),
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
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Selector<InboxDeleteProvider, TextEditingController?>(
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
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDetailChatRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 19.v,
        ),
        decoration: AppDecoration.outlineBluegray2003a.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder23,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildChatComponentList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: Consumer<InboxDeleteProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 15.v,
              );
            },
            itemCount:
                provider.inboxDeleteModelObj.chatcomponentlistItemList.length,
            itemBuilder: (context, index) {
              ChatcomponentlistItemModel model =
                  provider.inboxDeleteModelObj.chatcomponentlistItemList[index];
              return ChatcomponentlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
