import '../read_holy_books_screen/widgets/bookexplorerlist_item_widget.dart';
import 'models/bookexplorerlist_item_model.dart';
import 'models/read_holy_books_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_elevated_button.dart';
import 'provider/read_holy_books_provider.dart';

class ReadHolyBooksScreen extends StatefulWidget {
  const ReadHolyBooksScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ReadHolyBooksScreenState createState() => ReadHolyBooksScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReadHolyBooksProvider(),
      child: ReadHolyBooksScreen(),
    );
  }
}

class ReadHolyBooksScreenState extends State<ReadHolyBooksScreen> {
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
          padding: EdgeInsets.symmetric(vertical: 6.v),
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 32.v),
              _buildLabelRow(context),
              SizedBox(height: 19.v),
              _buildContinueRow(context),
              SizedBox(height: 29.v),
              _buildBookExplorerList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 11.adaptSize,
            width: 11.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
          ),
          Text(
            "lbl_bible".tr,
            style: CustomTextStyles.labelLargeGray90002SemiBold,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconGray90002,
            height: 11.v,
            width: 1.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLabelRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_continue_reading".tr,
            style: theme.textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Text(
              "lbl_see_more".tr,
              style: CustomTextStyles.bodyMediumPoppinsGray60002,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      width: 186.h,
      text: "lbl_continue".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildContinueRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 23.h,
          right: 38.h,
        ),
        child: Row(
          children: [
            Container(
              height: 160.v,
              width: 111.h,
              decoration: BoxDecoration(
                color: appTheme.gray10002,
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                top: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_bible".tr,
                    style: CustomTextStyles.headlineSmallBluegray90002,
                  ),
                  Text(
                    "lbl_chapter_4_of_8".tr,
                    style: CustomTextStyles.bodySmallGray60002_1,
                  ),
                  SizedBox(height: 41.v),
                  Text(
                    "msg_last_reading_genesis".tr,
                    style: CustomTextStyles.bodySmallGray60002,
                  ),
                  SizedBox(height: 9.v),
                  _buildContinueButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookExplorerList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 23.h),
        child: Consumer<ReadHolyBooksProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 17.v,
                );
              },
              itemCount: provider
                  .readHolyBooksModelObj.bookexplorerlistItemList.length,
              itemBuilder: (context, index) {
                BookexplorerlistItemModel model = provider
                    .readHolyBooksModelObj.bookexplorerlistItemList[index];
                return BookexplorerlistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
