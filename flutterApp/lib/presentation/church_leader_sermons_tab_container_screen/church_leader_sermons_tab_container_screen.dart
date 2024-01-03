import 'models/church_leader_sermons_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'package:mdsumsul_s_application5/presentation/church_leader_sermons_one_page/church_leader_sermons_one_page.dart';
import 'package:mdsumsul_s_application5/presentation/church_leader_sermons_page/church_leader_sermons_page.dart';
import 'package:mdsumsul_s_application5/presentation/church_leader_sermons_two_page/church_leader_sermons_two_page.dart';
import 'provider/church_leader_sermons_tab_container_provider.dart';

class ChurchLeaderSermonsTabContainerScreen extends StatefulWidget {
  const ChurchLeaderSermonsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ChurchLeaderSermonsTabContainerScreenState createState() =>
      ChurchLeaderSermonsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChurchLeaderSermonsTabContainerProvider(),
      child: ChurchLeaderSermonsTabContainerScreen(),
    );
  }
}

class ChurchLeaderSermonsTabContainerScreenState
    extends State<ChurchLeaderSermonsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 773.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "lbl_church_leader".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 32.v),
                        Divider(),
                        SizedBox(height: 17.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 34.h,
                              right: 50.h,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAvatarImagePrimary,
                                  height: 110.adaptSize,
                                  width: 110.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 20.h,
                                    top: 4.v,
                                    bottom: 11.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_alexnder_graham".tr.toUpperCase(),
                                        style: CustomTextStyles
                                            .titleSmallGray90001,
                                      ),
                                      SizedBox(height: 4.v),
                                      SizedBox(
                                        width: 161.h,
                                        child: Text(
                                          "msg_lorem_ipsum_dolor2".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles.bodySmall9_1,
                                        ),
                                      ),
                                      SizedBox(height: 12.v),
                                      Container(
                                        width: 140.h,
                                        margin: EdgeInsets.only(right: 21.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 27.adaptSize,
                                              width: 27.adaptSize,
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Text(
                                                      "lbl_6_3k".tr,
                                                      style: CustomTextStyles
                                                          .labelLargeBluegray90005,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Text(
                                                      "lbl_followers".tr,
                                                      style: CustomTextStyles
                                                          .poppinsGray600b2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 27.v,
                                              width: 22.h,
                                              child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Text(
                                                      "lbl_572".tr,
                                                      style: CustomTextStyles
                                                          .labelLargeGray900,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 4.h),
                                                      child: Text(
                                                        "lbl_post".tr,
                                                        style: CustomTextStyles
                                                            .poppinsGray50001,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "lbl_2_5k".tr,
                                                  style: CustomTextStyles
                                                      .labelLargeGray900,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text(
                                                    "lbl_amin".tr,
                                                    style: CustomTextStyles
                                                        .poppinsGray50001,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 76.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 20.v,
                                  width: 64.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgTelevisionPrimary20x64,
                                        height: 20.v,
                                        width: 64.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 3.v),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUserOnprimary9x10,
                                                height: 9.v,
                                                width: 10.h,
                                                margin:
                                                    EdgeInsets.only(top: 1.v),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text(
                                                  "lbl_follow".tr,
                                                  style: CustomTextStyles
                                                      .poppinsOnPrimary,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 20.v,
                                  width: 64.h,
                                  margin: EdgeInsets.only(left: 11.h),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgUploadOnprimary20x64,
                                        height: 20.v,
                                        width: 64.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2.v),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUserPrimary9x10,
                                                height: 9.v,
                                                width: 10.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 2.v),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text(
                                                  "lbl_message".tr,
                                                  style: CustomTextStyles
                                                      .poppinsGray70002,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 32.v),
                        _buildTabview(context),
                        SizedBox(
                          height: 1053.v,
                          child: TabBarView(
                            controller: tabviewController,
                            children: [
                              ChurchLeaderSermonsPage(),
                              ChurchLeaderSermonsOnePage(),
                              ChurchLeaderSermonsPage(),
                              ChurchLeaderSermonsTwoPage(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildChurchLeader(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 28.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.blueGray40002,
        labelStyle: TextStyle(
          fontSize: 11.367049217224121.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.blueGray40002,
        unselectedLabelStyle: TextStyle(
          fontSize: 11.367049217224121.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_sermons".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_audio2".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_quotes".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChurchLeader(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 119.h,
          vertical: 1.v,
        ),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20.v),
            Text(
              "lbl_church_leader".tr,
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
