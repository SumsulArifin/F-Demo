import 'models/church_leader_sermons_two_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'provider/church_leader_sermons_two_provider.dart';

// ignore_for_file: must_be_immutable
class ChurchLeaderSermonsTwoPage extends StatefulWidget {
  const ChurchLeaderSermonsTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  ChurchLeaderSermonsTwoPageState createState() =>
      ChurchLeaderSermonsTwoPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChurchLeaderSermonsTwoProvider(),
      child: ChurchLeaderSermonsTwoPage(),
    );
  }
}

class ChurchLeaderSermonsTwoPageState extends State<ChurchLeaderSermonsTwoPage>
    with AutomaticKeepAliveClientMixin<ChurchLeaderSermonsTwoPage> {
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
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 17.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgContrastOrangeA200,
                                  height: 50.adaptSize,
                                  width: 50.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    height: 47.v,
                                    width: 45.h,
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            height: 44.adaptSize,
                                            width: 44.adaptSize,
                                            decoration: BoxDecoration(
                                              color: appTheme.gray20004,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                22.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: 14.adaptSize,
                                            width: 14.adaptSize,
                                            decoration: AppDecoration.fillGreen
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder7,
                                            ),
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgContrastGray10001,
                                              height: 13.adaptSize,
                                              width: 13.adaptSize,
                                              alignment: Alignment.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 5.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_prince_armand".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 3.v),
                                Text(
                                  "msg_03_sept_at_04_21".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 44.v),
                    _buildClientTestimonials(context),
                    SizedBox(height: 33.v),
                    _buildRecentOrders(context),
                    SizedBox(height: 54.v),
                    Divider(
                      color: appTheme.gray20004,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 325.h,
        margin: EdgeInsets.symmetric(horizontal: 25.h),
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 39.v,
        ),
        decoration: AppDecoration.fillOrangeA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder7,
        ),
        child: Container(
          width: 292.h,
          margin: EdgeInsets.only(right: 6.h),
          child: Text(
            "msg_lorem_ipsum_dolor".tr,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.headlineMediumPoppinsGray900,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 32.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSendOnerror,
            height: 15.v,
            width: 17.h,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_36".tr,
              style: CustomTextStyles.bodySmallGray90001,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFavoriteOnerror,
            height: 16.v,
            width: 18.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_85".tr,
              style: CustomTextStyles.bodySmallGray90001,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserOnerror,
            height: 16.v,
            width: 17.h,
            margin: EdgeInsets.only(
              left: 26.h,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_12".tr,
              style: CustomTextStyles.bodySmallGray90001,
            ),
          ),
        ],
      ),
    );
  }
}
