import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/one_button_bottom_sheet.dart';

class MarketFestivalController extends GetxController {
  RxList<String> marketList = <String>["1", "2"].obs;
  RxList<String> festivalList = <String>[].obs;

  void onTapFilterCell({required int index}) {
    String title = '';
    Widget? content;
    if (index == 0) {
      title = '지역을 선택해주세요';
      content = Container(
        color: Colors.blue,
        height: 370,
      );
    } else if (index == 1) {
      title = '동네를 선택해주세요';
      content = Container(
        color: Colors.purple,
        height: 370,
      );
    } else if (index == 2) {
      title = '방문 지역을 선택해주세요';
      content = Container(
        color: Colors.pink,
        height: 370,
      );
    }

    Get.bottomSheet(
      isScrollControlled: true,
      OneButtonBottomSheet(
        title: title,
        content: content!,
        buttonTitle: '취소',
        onTapButton: () {
          Get.back();
        },
      ),
    );
  }
}
