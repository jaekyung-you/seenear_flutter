import 'package:get/get.dart';
import 'package:seenear/const/seenear_path.dart';
import 'package:seenear/presentation/home/controller/home_controller.dart';
import 'package:seenear/presentation/home/widget/home_screen.dart';
import 'package:seenear/presentation/my_page/controller/my_page_menu_controller.dart';
import 'package:seenear/presentation/my_page/controller/my_page_setting_controller.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/my_account_screen.dart';
import 'package:seenear/presentation/profile/controller/other_profile_detail_controller.dart';
import 'package:seenear/presentation/profile/widget/other_profile_detail_screen.dart';
import 'package:seenear/presentation/sign_up/controller/sign_up_controller.dart';
import 'package:seenear/presentation/sign_up/widget/sign_up_screen.dart';
import '../presentation/my_page/widget/my_page_menu/my_page_screen.dart';
import '../presentation/sign_up/widget/sign_up_complete_screen.dart';

class SeenearRoute {
  SeenearRoute._privateConstruct();

  static final SeenearRoute _instance = SeenearRoute._privateConstruct();

  factory SeenearRoute() {
    return _instance;
  }

  static final routes = [
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
          Get.put(MyPageController());
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
  ];
}
