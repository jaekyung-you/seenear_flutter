import 'package:get/get.dart';
import 'package:seenear/const/seenear_path.dart';
import 'package:seenear/presentation/community/controller/community_main_controller.dart';
import 'package:seenear/presentation/community/widget/community_main_screen.dart';
import 'package:seenear/presentation/home/controller/home_controller.dart';
import 'package:seenear/presentation/home/widget/home_screen.dart';
import 'package:seenear/presentation/login/controller/login_controller.dart';
import 'package:seenear/presentation/login/widget/login_screen.dart';
import 'package:seenear/presentation/market_festival/controller/market_festival_controller.dart';
import 'package:seenear/presentation/market_festival/widget/market_detail_screen.dart';
import 'package:seenear/presentation/market_festival/widget/market_festival_screen.dart';
import 'package:seenear/presentation/my_page/controller/my_page_menu_controller.dart';
import 'package:seenear/presentation/my_page/controller/my_page_setting_controller.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/my_account_screen.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/notice_screen.dart';
import 'package:seenear/presentation/profile/controller/other_profile_detail_controller.dart';
import 'package:seenear/presentation/profile/widget/other_profile_detail_screen.dart';
import 'package:seenear/presentation/sign_up/controller/sign_up_controller.dart';
import 'package:seenear/presentation/sign_up/widget/sign_up_screen.dart';
import '../presentation/community/controller/community_detail_controller.dart';
import '../presentation/community/controller/community_write_controller.dart';
import '../presentation/community/widget/detail/community_detail_screen.dart';
import '../presentation/community/widget/write/community_write_screen.dart';
import '../presentation/market_festival/controller/detail_review_controller.dart';
import '../presentation/market_festival/controller/market_detail_controller.dart';
import '../presentation/market_festival/widget/detail_review_screen.dart';
import '../presentation/my_page/controller/help_desk_controller.dart';
import '../presentation/my_page/controller/my_page_notice_controller.dart';
import '../presentation/my_page/widget/my_page_menu/my_page_screen.dart';
import '../presentation/my_page/widget/my_setting_menu/faq_screen.dart';
import '../presentation/my_page/widget/my_setting_menu/help_desk_screen.dart';
import '../presentation/my_page/widget/my_setting_menu/inquiry_screen.dart';
import '../presentation/my_page/widget/my_setting_menu/notification_screen.dart';
import '../presentation/search/controller/search_controller.dart';
import '../presentation/search/widget/search_screen.dart';
import '../presentation/sign_up/widget/sign_up_complete_screen.dart';

class SeenearRoute {
  SeenearRoute._privateConstruct();

  static final SeenearRoute _instance = SeenearRoute._privateConstruct();

  factory SeenearRoute() {
    return _instance;
  }

  static final routes = [
    GetPage(
      name: SeenearPath.LOGIN,
      page: () => const LoginScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(LoginController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.SIGN_UP,
      page: () => const SignUpScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(SignUpController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.SIGN_UP_COMPLETE,
      page: () => const SignUpCompleteScreen(),
    ),
    GetPage(
      name: SeenearPath.HOME,
      page: () => const HomeScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(HomeController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.MY_PAGE,
      page: () => const MyPageScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(MyPageMenuController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.OTHER_PROFILE,
      page: () => const OtherProfileDetailScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(OtherProfileDetailController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.MY_PAGE_ACCOUNT,
      page: () => const MyAccountScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(MyPageSettingController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.MY_PAGE_NOTICE,
      page: () => const NoticeScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(MyPageNoticeController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.MY_PAGE_HELP_DESK,
      page: () => const HelpDeskScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(HelpDeskController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.MY_PAGE_HELP_DESK_FAQ,
      page: () => const FAQScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(HelpDeskController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.MY_PAGE_HELP_DESK_INQUIRY,
      page: () => const InquiryScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(HelpDeskController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.MY_PAGE_NOTIFICATION,
      page: () => const NotificationScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(MyPageSettingController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.MARKET,
      page: () => const MarketFestivalScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(MarketFestivalController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.MARKET_DETAIL,
      page: () => const MarketDetailScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(MarketDetailController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.FESTIVAl,
      page: () => const MarketFestivalScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(MarketFestivalController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.REVIEW_DETAIL,
      page: () => const DetailReviewScreen(),
      binding: BindingsBuilder(
            () {
          Get.put(DetailReviewController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.SEARCH,
      page: () => const SearchScreen(),
      binding: BindingsBuilder(
            () {
          Get.put(SearchScreenController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.COMMUNITY,
      page: () => const CommunityMainScreen(),
      binding: BindingsBuilder(
            () {
          Get.put(CommunityMainController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.COMMUNITY_DETAIL,
      page: () => const CommunityDetailScreen(),
      binding: BindingsBuilder(
            () {
          Get.put(CommunityDetailController());
        },
      ),
    ),
    GetPage(
      name: SeenearPath.COMMUNITY_WRITE,
      page: () => const CommunityWriteScreen(),
      binding: BindingsBuilder(
            () {
          Get.put(CommunityWriteController());
        },
      ),
    ),
  ];
}
