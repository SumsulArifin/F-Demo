import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:mdsumsul_s_application5/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:mdsumsul_s_application5/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:mdsumsul_s_application5/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:mdsumsul_s_application5/presentation/home_feed_screen/home_feed_screen.dart';
import 'package:mdsumsul_s_application5/presentation/menus_screen/menus_screen.dart';
import 'package:mdsumsul_s_application5/presentation/inbox_screen/inbox_screen.dart';
import 'package:mdsumsul_s_application5/presentation/inbox_delete_screen/inbox_delete_screen.dart';
import 'package:mdsumsul_s_application5/presentation/inbox_search_screen/inbox_search_screen.dart';
import 'package:mdsumsul_s_application5/presentation/chats_screen/chats_screen.dart';
import 'package:mdsumsul_s_application5/presentation/recording_voice_screen/recording_voice_screen.dart';
import 'package:mdsumsul_s_application5/presentation/create_groups_screen/create_groups_screen.dart';
import 'package:mdsumsul_s_application5/presentation/group_chat_screen/group_chat_screen.dart';
import 'package:mdsumsul_s_application5/presentation/donate_home_screen/donate_home_screen.dart';
import 'package:mdsumsul_s_application5/presentation/donate_screen/donate_screen.dart';
import 'package:mdsumsul_s_application5/presentation/bible_screen/bible_screen.dart';
import 'package:mdsumsul_s_application5/presentation/read_holy_books_screen/read_holy_books_screen.dart';
import 'package:mdsumsul_s_application5/presentation/hide_options_screen/hide_options_screen.dart';
import 'package:mdsumsul_s_application5/presentation/read_book_screen/read_book_screen.dart';
import 'package:mdsumsul_s_application5/presentation/comment_screen/comment_screen.dart';
import 'package:mdsumsul_s_application5/presentation/profile_basic_user_screen/profile_basic_user_screen.dart';
import 'package:mdsumsul_s_application5/presentation/add_user_screen/add_user_screen.dart';
import 'package:mdsumsul_s_application5/presentation/group_video_calling_screen/group_video_calling_screen.dart';
import 'package:mdsumsul_s_application5/presentation/group_video_calling_mute_screen/group_video_calling_mute_screen.dart';
import 'package:mdsumsul_s_application5/presentation/group_video_calling_mute_one_screen/group_video_calling_mute_one_screen.dart';
import 'package:mdsumsul_s_application5/presentation/forums_screen/forums_screen.dart';
import 'package:mdsumsul_s_application5/presentation/question_details_screen/question_details_screen.dart';
import 'package:mdsumsul_s_application5/presentation/forum_profile_screen/forum_profile_screen.dart';
import 'package:mdsumsul_s_application5/presentation/groups_screen/groups_screen.dart';
import 'package:mdsumsul_s_application5/presentation/church_page_screen/church_page_screen.dart';
import 'package:mdsumsul_s_application5/presentation/donate_one_screen/donate_one_screen.dart';
import 'package:mdsumsul_s_application5/presentation/post_on_feed_one_tab_container_screen/post_on_feed_one_tab_container_screen.dart';
import 'package:mdsumsul_s_application5/presentation/church_leader_all_screen/church_leader_all_screen.dart';
import 'package:mdsumsul_s_application5/presentation/church_leader_sermons_tab_container_screen/church_leader_sermons_tab_container_screen.dart';
import 'package:mdsumsul_s_application5/presentation/post_on_feed_screen/post_on_feed_screen.dart';
import 'package:mdsumsul_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String homeFeedScreen = '/home_feed_screen';

  static const String menusScreen = '/menus_screen';

  static const String inboxScreen = '/inbox_screen';

  static const String inboxDeleteScreen = '/inbox_delete_screen';

  static const String inboxSearchScreen = '/inbox_search_screen';

  static const String chatsScreen = '/chats_screen';

  static const String recordingVoiceScreen = '/recording_voice_screen';

  static const String createGroupsScreen = '/create_groups_screen';

  static const String groupChatScreen = '/group_chat_screen';

  static const String donateHomeScreen = '/donate_home_screen';

  static const String donateScreen = '/donate_screen';

  static const String bibleScreen = '/bible_screen';

  static const String readHolyBooksScreen = '/read_holy_books_screen';

  static const String hideOptionsScreen = '/hide_options_screen';

  static const String readBookScreen = '/read_book_screen';

  static const String postOnFeedTwoPage = '/post_on_feed_two_page';

  static const String commentScreen = '/comment_screen';

  static const String profileBasicUserScreen = '/profile_basic_user_screen';

  static const String addUserScreen = '/add_user_screen';

  static const String groupVideoCallingScreen = '/group_video_calling_screen';

  static const String groupVideoCallingMuteScreen =
      '/group_video_calling_mute_screen';

  static const String groupVideoCallingMuteOneScreen =
      '/group_video_calling_mute_one_screen';

  static const String forumsScreen = '/forums_screen';

  static const String questionDetailsScreen = '/question_details_screen';

  static const String forumProfileScreen = '/forum_profile_screen';

  static const String groupsScreen = '/groups_screen';

  static const String churchPageScreen = '/church_page_screen';

  static const String donateOneScreen = '/donate_one_screen';

  static const String postOnFeedOnePage = '/post_on_feed_one_page';

  static const String postOnFeedOneTabContainerScreen =
      '/post_on_feed_one_tab_container_screen';

  static const String churchLeaderAllScreen = '/church_leader_all_screen';

  static const String churchLeaderSermonsOnePage =
      '/church_leader_sermons_one_page';

  static const String churchLeaderSermonsPage = '/church_leader_sermons_page';

  static const String churchLeaderSermonsTabContainerScreen =
      '/church_leader_sermons_tab_container_screen';

  static const String churchLeaderSermonsTwoPage =
      '/church_leader_sermons_two_page';

  static const String postOnFeedScreen = '/post_on_feed_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        signUpOneScreen: SignUpOneScreen.builder,
        signUpTwoScreen: SignUpTwoScreen.builder,
        signUpScreen: SignUpScreen.builder,
        signInScreen: SignInScreen.builder,
        homeFeedScreen: HomeFeedScreen.builder,
        menusScreen: MenusScreen.builder,
        inboxScreen: InboxScreen.builder,
        inboxDeleteScreen: InboxDeleteScreen.builder,
        inboxSearchScreen: InboxSearchScreen.builder,
        chatsScreen: ChatsScreen.builder,
        recordingVoiceScreen: RecordingVoiceScreen.builder,
        createGroupsScreen: CreateGroupsScreen.builder,
        groupChatScreen: GroupChatScreen.builder,
        donateHomeScreen: DonateHomeScreen.builder,
        donateScreen: DonateScreen.builder,
        bibleScreen: BibleScreen.builder,
        readHolyBooksScreen: ReadHolyBooksScreen.builder,
        hideOptionsScreen: HideOptionsScreen.builder,
        readBookScreen: ReadBookScreen.builder,
        commentScreen: CommentScreen.builder,
        profileBasicUserScreen: ProfileBasicUserScreen.builder,
        addUserScreen: AddUserScreen.builder,
        groupVideoCallingScreen: GroupVideoCallingScreen.builder,
        groupVideoCallingMuteScreen: GroupVideoCallingMuteScreen.builder,
        groupVideoCallingMuteOneScreen: GroupVideoCallingMuteOneScreen.builder,
        forumsScreen: ForumsScreen.builder,
        questionDetailsScreen: QuestionDetailsScreen.builder,
        forumProfileScreen: ForumProfileScreen.builder,
        groupsScreen: GroupsScreen.builder,
        churchPageScreen: ChurchPageScreen.builder,
        donateOneScreen: DonateOneScreen.builder,
        postOnFeedOneTabContainerScreen:
            PostOnFeedOneTabContainerScreen.builder,
        churchLeaderAllScreen: ChurchLeaderAllScreen.builder,
        churchLeaderSermonsTabContainerScreen:
            ChurchLeaderSermonsTabContainerScreen.builder,
        postOnFeedScreen: PostOnFeedScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SignUpOneScreen.builder
      };
}
