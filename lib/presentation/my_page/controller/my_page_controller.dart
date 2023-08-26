import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/const/enum/my_page_setting.dart';

import '../../../const/design_system/base_bottom_sheet.dart';
import '../widget/my_page_content_screen.dart';

class MyPageController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController myPageTabController;

  @override
  void onInit() {
    super.onInit();
    myPageTabController = TabController(vsync: this, length: 2);
  }

  @override
  void onClose() {
    myPageTabController.dispose();
    super.onClose();
  }

  void onTapMenuItem(MyPageMenu menu) {
    Get.to(() => MyPageContentScreen(menu: menu));
  }

  void onTapSettingItem(MyPageSetting setting) {
    switch (setting) {
      case MyPageSetting.account:
      case MyPageSetting.notice:
      case MyPageSetting.helpdesk:
      case MyPageSetting.notification:
    }
  }

  void onDeleteItem(MyPageMenu menu) {
    if (menu.deleteBottomSheetTitle == null) return;
    Get.bottomSheet(
      BaseBottomSheet(
        title: menu.deleteBottomSheetTitle!,
        desc: menu.deleteBottomSheetDesc,
        buttonTitles: const ['취소', '확인'],
        onTapButton: (index) {
          Get.back();
          if (index == 1) onDeleteItem(MyPageMenu.recentView);
        },
      ),
    );
  }
}
