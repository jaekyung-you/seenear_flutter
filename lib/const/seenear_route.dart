import 'package:get/get.dart';
import 'package:seenear/const/seenear_path.dart';
import 'package:seenear/presentation/home/controller/home_controller.dart';
import 'package:seenear/presentation/home/widget/home_screen.dart';
import 'package:seenear/presentation/login/controller/login_controller.dart';
import 'package:seenear/presentation/login/widget/login_screen.dart';
import 'package:seenear/presentation/market_festival/controller/market_festival_controller.dart';
import 'package:seenear/presentation/market_festival/widget/market_festival_screen.dart';
import 'package:seenear/presentation/my_page/controller/my_page_menu_controller.dart';
import 'package:seenear/presentation/my_page/controller/my_page_setting_controller.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/my_account_screen.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/notice_screen.dart';
import 'package:seenear/presentation/profile/controller/other_profile_detail_controller.dart';
import 'package:seenear/presentation/profile/widget/other_profile_detail_screen.dart';
import 'package:seenear/presentation/sign_up/controller/sign_up_controller.dart';
import 'package:seenear/presentation/sign_up/widget/sign_up_screen.dart';
import '../presentation/my_page/controller/help_desk_controller.dart';
import '../presentation/my_page/controller/my_page_notice_controller.dart';
import '../presentation/my_page/widget/my_page_menu/my_page_screen.dart';
import '../presentation/my_page/widget/my_setting_menu/faq_screen.dart';
import '../presentation/my_page/widget/my_setting_menu/help_desk_screen.dart';
import '../presentation/my_page/widget/my_setting_menu/inquiry_screen.dart';
import '../presentation/my_page/widget/my_setting_menu/notification_screen.dart';
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
      name: SeenearPath.FESTIVAl,
      page: () => const MarketFestivalScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(MarketFestivalController());
        },
      ),
    ),
  ];
}
