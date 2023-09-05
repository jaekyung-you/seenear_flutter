import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/one_button_bottom_sheet.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import '../../../const/define.dart';

class MarketFestivalController extends GetxController {
  bool isMarket = true;
  RxList<String> marketList = <String>[].obs;
  RxList<String> festivalList = <String>[].obs;

  // property
  RxInt totalCount = 10.obs;
  RxString region = ''.obs; // 지역
  RxString location = ''.obs; // 동네
  RxString date = ''.obs; // 2023-10-07 (월) 이런식

  RxList<String> filterList = <String>[].obs;
  RxString sort = '거리순'.obs; // or 인기순

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      isMarket = Get.arguments['type'] == 'market';
    }
    getList();
  }

  void onTapResetButton() {
    region.value = '';
    location.value = '';
    date.value = '';
    filterList.value = [];
  }

  Future<void> getList() async {
    if (isMarket) {
      totalCount.value = marketList.length;
      // todo: market list api 호출
    } else {
      totalCount.value = festivalList.length;
      // todo: festival list api 호출
    }

    return;
  }

  void onTapFilterCell({required int index}) {
    String title = '';
    Widget? content;

    if (index == 0) {
      title = '지역을 선택해주세요';
      content = SizedBox(
        height: Get.height / 1.9 ,
        child: GridView.builder(
            itemCount: Defines.selectRegionList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
              mainAxisSpacing: 16, //수평 Padding
              crossAxisSpacing: 6,
              mainAxisExtent: 36,//수직 Padding
            ),
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    Defines.selectRegionList[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: SeenearColor.grey80, // blue80
                    ),
                  ),
                  const SizedBox(width: 4,),
                  Image.asset(
                    'assets/images/check_filled.png',
                    width: 22,
                  ),
                ],
              );
            }),
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
