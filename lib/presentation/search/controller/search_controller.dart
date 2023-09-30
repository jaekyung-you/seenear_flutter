import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreenController extends GetxController with GetSingleTickerProviderStateMixin {
  // property
  TextEditingController searchInputController = TextEditingController();
  late TabController tabController;
  List<String> tabList = ['인기 검색어', '최근 검색어'];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
