import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/const/enum/my_page_setting.dart';

import '../widget/my_page_common_content_screen.dart';

class MyPageController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController myPageTabController;

  void onTapMenuItem(MyPageMenu menu) {
    Get.to(() => MyPageCommonContentScreen(menu: menu));
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
