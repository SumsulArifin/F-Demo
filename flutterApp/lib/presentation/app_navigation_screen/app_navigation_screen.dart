import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Feed".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeFeedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "03 - Menus".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.menusScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "inbox".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.inboxScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "inbox | delete".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.inboxDeleteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "inbox | search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.inboxSearchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chats".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recording Voice".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.recordingVoiceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create Groups".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createGroupsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Group Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.groupChatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Donate home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.donateHomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Donate".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.donateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bible".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bibleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Read Holy Books".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.readHolyBooksScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Hide Options".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hideOptionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Read Book".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.readBookScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08 - Comment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.commentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "04 - Profile (Basic USER)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileBasicUserScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add User".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addUserScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Group Video Calling".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.groupVideoCallingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Group Video Calling Mute".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.groupVideoCallingMuteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Group Video Calling Mute One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.groupVideoCallingMuteOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forums".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forumsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Question Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.questionDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forum Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forumProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Groups".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.groupsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Church Page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.churchPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Donate One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.donateOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Post on Feed One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.postOnFeedOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Church Leader - All".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.churchLeaderAllScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Church Leader - Sermons - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.churchLeaderSermonsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Post on Feed".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.postOnFeedScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
