import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/remote/response/info_item_response.dart';

class SearchScreenController extends GetxController with GetSingleTickerProviderStateMixin {
  // property
  TextEditingController searchInputController = TextEditingController();
  late TabController tabController;
  List<String> tabList = ['인기 검색어', '최근 검색어'];
  RxBool showResult = false.obs;
  RxList<InfoItemResponse> searchResultList = <InfoItemResponse>[].obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 2);
    searchInputController.addListener(() {
      showResult.value = searchInputController.text.trim().isNotEmpty;
      if (showResult.value) {
        String keyword = searchInputController.text.trim();
        _requestSearchResult(keyword: keyword);
      }
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  Future<void> _requestSearchResult({required String keyword}) async {
    // todo: 임의로.. itemType이 달라지면 헤더를 넣어줌
    // 1. api 호출

    // 2. 성공하면 searchResultList에 넣기
    // 임의로 mock data
    InfoItemResponse mock1 = InfoItemResponse(
      date: "2023-08-14",
      id: 1,
      imageSrc: "https://picsum.photos/id/37/200/300",
      itemId: 101,
      itemType: "FESTIVAL",
      name: "Sample Festival 1",
      reviewCount: 15,
      score: 4,
    );

    InfoItemResponse mock2 = InfoItemResponse(
      date: "2023-08-14",
      id: 2,
      imageSrc: "https://picsum.photos/id/27/200/300",
      itemId: 101,
      itemType: "FESTIVAL",
      name: "Sample Festival 1",
      reviewCount: 15,
      score: 4,
    );

    InfoItemResponse mock3 = InfoItemResponse(
      date: "2023-08-14",
      id: 3,
      imageSrc: "https://picsum.photos/id/23/200/300",
      itemId: 101,
      itemType: "MARKET",
      name: "Sample MARKET 1",
      reviewCount: 15,
      score: 9,
    );

    InfoItemResponse mock4 = InfoItemResponse(
      date: "2023-08-14",
      id: 4,
      imageSrc: "https://picsum.photos/id/7/200/300",
      itemId: 101,
      itemType: "MARKET",
      name: "Sample MARKET 1",
      reviewCount: 15,
      score: 4,
    );

    InfoItemResponse mock5 = InfoItemResponse(
      date: "2023-08-14",
      id: 5,
      imageSrc: "https://picsum.photos/id/3/200/300",
      itemId: 101,
      itemType: "CHAT",
      name: "Sample ChAT 1",
      reviewCount: 11,
      score: 9,
    );

    InfoItemResponse chatHeader = InfoItemResponse(
      date: "",
      id: 0, // listview에서 id 중복되어도 되는가?
      imageSrc: "",
      itemId: 0,
      itemType: "HEADER",
      name: "이야기방",
      reviewCount: 0,
      score: 0,
    );
    InfoItemResponse marketHeader = InfoItemResponse(
      date: "",
      id: 0, // listview에서 id 중복되어도 되는가?
      imageSrc: "",
      itemId: 0,
      itemType: "HEADER",
      name: "전국 장날",
      reviewCount: 0,
      score: 0,
    );
    InfoItemResponse festivalHeader = InfoItemResponse(
      date: "",
      id: 0, // listview에서 id 중복되어도 되는가?
      imageSrc: "",
      itemId: 0,
      itemType: "HEADER",
      name: "축제/행사",
      reviewCount: 0,
      score: 0,
    );

    for (var element in [mock1, mock2, mock3, mock4, mock5]) {
      searchResultList.add(element);
      int index = searchResultList.indexOf(element);
      int prevIndex = searchResultList.indexOf(element) - 1;

      // 첫 번째 무조건 헤더 넣어줌
      if (index == 0) {
        if (element.itemType == "CHAT") {
          searchResultList.insert(0, chatHeader);
        }

        if (element.itemType == "MARKET") {
          searchResultList.insert(0, marketHeader);
        }

        if (element.itemType == "FESTIVAL") {
          searchResultList.insert(0, festivalHeader);
        }
      } else if (prevIndex > 0 && searchResultList[index].itemType != searchResultList[prevIndex].itemType) {
        // 이전과 현재의 itemType이 다르면, 현재 itemType  헤더 넣어줌
        if (searchResultList[index].itemType == "CHAT") {
          searchResultList.insert(index, chatHeader);
        }

        if (searchResultList[index].itemType == "MARKET") {
          searchResultList.insert(index, marketHeader);
        }

        if (searchResultList[index].itemType == "FESTIVAL") {
          searchResultList.insert(index, festivalHeader);
        }
      }





    }

    // 3. for-loop으로 헤더 넣기


  }
}
