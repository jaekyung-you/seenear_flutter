import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/enum/other_profile_tab_menu.dart';

class OtherProfileDetailController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  List<OtherProfileTabMenu> tabMenu = OtherProfileTabMenu.values;
  List<String> reviewList = ['a', 'b', 'c', 'd,' 'e', 'a', 'b', 'c', 'd,' 'e'];
  List<String> communityList = [];
  int userId = 0;

  @override
  void onInit() {
    super.onInit();
    userId = Get.arguments['userId'];
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}