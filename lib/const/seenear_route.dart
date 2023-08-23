import 'package:get/get.dart';
import 'package:seenear/const/seenear_path.dart';
import 'package:seenear/presentation/sign_up/controller/sign_up_controller.dart';
import 'package:seenear/presentation/sign_up/widget/sign_up_screen.dart';

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
  ];
}
