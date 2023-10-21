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
    searchResultList.clear();

    // 1. api 호출

    // 2. 성공하면 searchResultList에 넣기
    // 임의로 mock data
    InfoItemResponse mock1 = InfoItemResponse(
        date: "2023-08-14",
        itemId: 1,
        itemType: "FESTIVAL",
        name: "Sample Festival 1",
        reviewCount: 15,
        score: 4,
        images: [
          "https://picsum.photos/id/37/200/300",
        ]);

    InfoItemResponse mock2 = InfoItemResponse(
        date: "2023-08-14",
        itemId: 1,
        itemType: "FESTIVAL",
        name: "Sample Festival 1",
        reviewCount: 15,
        score: 4,
        images: [
          "https://picsum.photos/id/37/200/300",
        ]);

    InfoItemResponse mock3 = InfoItemResponse(
        date: "2023-08-14",
        itemId: 1,
        itemType: "FESTIVAL",
        name: "Sample Festival 1",
        reviewCount: 15,
        score: 4,
        images: [
          "https://picsum.photos/id/37/200/300",
        ]);

    InfoItemResponse mock4 = InfoItemResponse(
        date: "2023-08-14",
        itemId: 1,
        itemType: "FESTIVAL",
        name: "Sample Festival 1",
        reviewCount: 15,
        score: 4,
        images: [
          "https://picsum.photos/id/37/200/300",
        ]);

    InfoItemResponse mock5 = InfoItemResponse(
        date: "2023-08-14",
        itemId: 1,
        itemType: "FESTIVAL",
        name: "Sample Festival 1",
        reviewCount: 15,
        score: 4,
        images: [
          "https://picsum.photos/id/37/200/300",
        ]);

    // header
    InfoItemResponse chatHeader = InfoItemResponse(
        date: "2023-08-14",
        itemId: 1,
        itemType: "FESTIVAL",
        name: "Sample Festival 1",
        reviewCount: 15,
        score: 4,
        images: [
          "https://picsum.photos/id/37/200/300",
        ]);

    InfoItemResponse marketHeader = InfoItemResponse(
        date: "2023-08-14",
        itemId: 1,
        itemType: "FESTIVAL",
        name: "Sample Festival 1",
        reviewCount: 15,
        score: 4,
        images: [
          "https://picsum.photos/id/37/200/300",
        ]);

    InfoItemResponse festivalHeader = InfoItemResponse(
            date: "2023-08-14",
            itemId: 1,
            itemType: "FESTIVAL",
            name: "Sample Festival 1",
            reviewCount: 15,
            score: 4,
            images: [
              "https://picsum.photos/id/37/200/300",
            ]);

    // footer
    InfoItemResponse chatFooter = InfoItemResponse(
            date: "2023-08-14",
            itemId: 1,
            itemType: "FESTIVAL",
            name: "Sample Festival 1",
            reviewCount: 15,
            score: 4,
            images: [
              "https://picsum.photos/id/37/200/300",
            ]);
    InfoItemResponse marketFooter = InfoItemResponse(
            date: "2023-08-14",
            itemId: 1,
            itemType: "FESTIVAL",
            name: "Sample Festival 1",
            reviewCount: 15,
            score: 4,
            images: [
              "https://picsum.photos/id/37/200/300",
            ]);
    InfoItemResponse festivalFooter = InfoItemResponse(
            date: "2023-08-14",
            itemId: 1,
            itemType: "FESTIVAL",
            name: "Sample Festival 1",
            reviewCount: 15,
            score: 4,
            images: [
              "https://picsum.photos/id/37/200/300",
            ]);

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
        // 이전과 현재의 itemType이 다르면, 현재 itemType 헤더 넣어줌
        if (searchResultList[index].itemType == "CHAT") {
          searchResultList.insert(index, chatHeader);
        }

        if (searchResultList[index].itemType == "MARKET") {
          searchResultList.insert(index, marketHeader);
        }

        if (searchResultList[index].itemType == "FESTIVAL") {
          searchResultList.insert(index, festivalHeader);
        }

        // 푸터 넣어줌
        if (searchResultList[prevIndex].itemType == "CHAT") {
          searchResultList.insert(index, chatFooter);
        }

        if (searchResultList[prevIndex].itemType == "MARKET") {
          searchResultList.insert(index, marketFooter);
        }

        if (searchResultList[prevIndex].itemType == "FESTIVAL") {
          searchResultList.insert(index, festivalFooter);
        }
      }
    }

    if (searchResultList.last.itemType == "CHAT") {
      searchResultList.add(chatFooter);
    }

    if (searchResultList.last.itemType == "MARKET") {
      searchResultList.add(marketFooter);
    }

    if (searchResultList.last.itemType == "FESTIVAL") {
      searchResultList.add(festivalFooter);
    }
  }
}
