import 'models/post_on_feed_two_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_text_form_field.dart';
import 'provider/post_on_feed_two_provider.dart';

// ignore_for_file: must_be_immutable
class PostOnFeedTwoPage extends StatefulWidget {
  const PostOnFeedTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  PostOnFeedTwoPageState createState() => PostOnFeedTwoPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostOnFeedTwoProvider(),
      child: PostOnFeedTwoPage(),
    );
  }
}

class PostOnFeedTwoPageState extends State<PostOnFeedTwoPage>
    with AutomaticKeepAliveClientMixin<PostOnFeedTwoPage> {
  @override
  bool get wantKeepAlive => true;
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
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25.v),
                _buildPhotoUploadSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotoUploadSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 24.h,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 211.v,
            width: 323.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 49.h,
                      right: 54.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 45.v,
                            width: 151.h,
                            margin: EdgeInsets.only(right: 28.h),
                            decoration: AppDecoration.outlineBlueA,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgIconPrimary,
                                  height: 45.v,
                                  width: 151.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "lbl_select_files".tr,
                                    style:
                                        CustomTextStyles.bodySmallOnPrimary_1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 21.v),
                        Text(
                          "msg_add_photos_videos".tr,
                          style: CustomTextStyles.titleMediumMulishBlack90001,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: DottedBorder(
                    color: appTheme.gray600.withOpacity(0.5),
                    padding: EdgeInsets.only(
                      left: 2.h,
                      top: 2.v,
                      right: 2.h,
                      bottom: 2.v,
                    ),
                    strokeWidth: 2.h,
                    radius: Radius.circular(15),
                    borderType: BorderType.RRect,
                    dashPattern: [
                      10,
                      10,
                    ],
                    child: Container(
                      height: 211.v,
                      width: 323.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Text(
            "lbl_or2".tr,
            style: CustomTextStyles.titleMediumMulishBlack90001,
          ),
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Selector<PostOnFeedTwoProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.paragrafController,
                  builder: (context, paragrafController, child) {
                    return CustomTextFormField(
                      controller: paragrafController,
                      hintText: "msg_paste_verse_or_select".tr,
                      textInputAction: TextInputAction.done,
                    );
                  },
                ),
              ),
              Container(
                height: 45.v,
                width: 70.h,
                margin: EdgeInsets.only(left: 13.h),
                decoration: AppDecoration.outlineBlueA,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevisionPrimary,
                      height: 45.v,
                      width: 70.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 12.v),
                        child: Text(
                          "lbl_paste".tr,
                          style: CustomTextStyles.bodySmallOnPrimary_1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
