import 'package:get/get.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/const/enum/my_page_setting.dart';

class MyPageController extends GetxController {
  void onTapMenuItem(MyPageMenu menu) {
    switch (menu) {
      case MyPageMenu.recentView:
      case MyPageMenu.liked:
      case MyPageMenu.review:
      case MyPageMenu.subscription:
    }
  }

  void onTapSettingItem(MyPageSetting setting) {
    switch (setting) {
      case MyPageSetting.account:
      case MyPageSetting.notice:
      case MyPageSetting.helpdesk:
      case MyPageSetting.notification:
    }
  }
}
