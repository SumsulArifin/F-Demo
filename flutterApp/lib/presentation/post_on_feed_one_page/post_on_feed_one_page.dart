import 'models/post_on_feed_one_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/widgets/custom_text_form_field.dart';
import 'provider/post_on_feed_one_provider.dart';

// ignore_for_file: must_be_immutable
class PostOnFeedOnePage extends StatefulWidget {
  const PostOnFeedOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  PostOnFeedOnePageState createState() => PostOnFeedOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostOnFeedOneProvider(),
      child: PostOnFeedOnePage(),
    );
  }
}

class PostOnFeedOnePageState extends State<PostOnFeedOnePage>
    with AutomaticKeepAliveClientMixin<PostOnFeedOnePage> {
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
                _buildPlaylist(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 24.h,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 39.h,
              vertical: 18.v,
            ),
            decoration: AppDecoration.outlineGray600.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 8.v),
                CustomImageView(
                  imagePath: ImageConstant.imgSoundWave,
                  height: 53.v,
                  width: 242.h,
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    right: 34.h,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 25.v,
                        width: 62.h,
                        margin: EdgeInsets.only(top: 4.v),
                        decoration: AppDecoration.outlineBlueA,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgTelevisionGray50001,
                              height: 25.v,
                              width: 62.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Text(
                                  "lbl_cancel".tr,
                                  style: CustomTextStyles.bodySmallOnPrimary_1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconPlayCircle,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        margin: EdgeInsets.only(
                          left: 17.h,
                          bottom: 1.v,
                        ),
                      ),
                      Container(
                        height: 24.v,
                        width: 65.h,
                        margin: EdgeInsets.only(
                          left: 13.h,
                          top: 4.v,
                          bottom: 1.v,
                        ),
                        decoration: AppDecoration.outlineBlueA,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgTelevisionGray50001,
                              height: 24.v,
                              width: 65.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Text(
                                  "lbl_save".tr,
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
                SizedBox(height: 37.v),
                Container(
                  height: 34.v,
                  width: 33.h,
                  margin: EdgeInsets.only(left: 101.h),
                  decoration: BoxDecoration(
                    color: appTheme.redA700,
                    borderRadius: BorderRadius.circular(
                      16.h,
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
                child: Selector<PostOnFeedOneProvider, TextEditingController?>(
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
