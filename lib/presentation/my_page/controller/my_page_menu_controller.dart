import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/const/enum/my_page_setting.dart';
import 'package:seenear/const/seenear_path.dart';
import 'package:seenear/data/remote/api/delete_favorite_item.dart';
import 'package:seenear/data/remote/api/delete_recent_item.dart';
import 'package:seenear/data/remote/api/get_favorite_items.dart';
import 'package:seenear/data/remote/api/get_recent_view_list.dart';
import 'package:seenear/domain/util/snack_bar_manager.dart';
import '../../../const/design_system/base_bottom_sheet.dart';
import '../../../data/remote/response/info_item_response.dart';
import '../widget/my_page_menu/my_page_content_screen.dart';

class MyPageMenuController extends GetxController with GetSingleTickerProviderStateMixin {
  /// property
  late TabController myPageTabController;
  int requestSize = 10;
  RxBool isLoading = false.obs; // 네트워크 로딩중

  List<InfoItemResponse> favoriteItemList = <InfoItemResponse>[];
  RxList<InfoItemResponse> favoriteMarketItemList = <InfoItemResponse>[].obs;
  RxList<InfoItemResponse> favoriteFestivalItemList = <InfoItemResponse>[].obs;
  int? lastFavoriteId; // cursor에 사용됨

  List<InfoItemResponse> recentViewList = <InfoItemResponse>[]; // 최대 10개까지만 보여서 페이징 필요없을 것 같음
  RxList<InfoItemResponse> recentMarketItemList = <InfoItemResponse>[].obs;
  RxList<InfoItemResponse> recentFestivalItemList = <InfoItemResponse>[].obs;

  /// usecase
  final GetFavoriteItemList _getFavoriteItemList = GetFavoriteItemList();
  final DeleteFavoriteItem _deleteFavoriteItem = DeleteFavoriteItem();
  final GetRecentViews _getRecentViews = GetRecentViews();
  final DeleteRecentItem _deleteRecentItem = DeleteRecentItem();


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

  void clearList(MyPageMenu menu) {
    switch (menu) {
      case MyPageMenu.recentView:
      case MyPageMenu.review:
      case MyPageMenu.subscription:
        break;

      case MyPageMenu.favorite:
        favoriteItemList.clear();
        favoriteMarketItemList.clear();
        favoriteFestivalItemList.clear();
    }
  }


  void requestListByMenu(MyPageMenu menu) {
    switch (menu) {
      case MyPageMenu.favorite:
        _requestFavoriteList();
      case MyPageMenu.recentView:
        _requestRecentViewList();
      case MyPageMenu.review:
      case MyPageMenu.subscription:
        break;
    }
  }

  // todo: 스크롤 끝까지 내림 Visibility -> 페이징 구현 필요
  Future<void> _requestFavoriteList() async {
    List<InfoItemResponse> res = await _getFavoriteItemList(size: requestSize, cursorId: lastFavoriteId);
    favoriteItemList = res;
    for (InfoItemResponse item in favoriteItemList) {
      if (item.itemType == "MARKET") {
        favoriteMarketItemList.add(item);
      } else if (item.itemType == "FESTIVAL") {
        favoriteFestivalItemList.add(item);
      }
    }

    lastFavoriteId = favoriteItemList.last.itemId;
    print("lastFavoriteId: $lastFavoriteId");
  }

  Future<void> _requestRecentViewList() async {
    // todo: 페이징 구현
    List<InfoItemResponse> res = await _getRecentViews(size: requestSize, cursorId: null);
    recentViewList = res;
    for (InfoItemResponse item in recentViewList) {
      if (item.itemType == "MARKET") {
        recentMarketItemList                .add(item);
      } else if (item.itemType == "FESTIVAL") {
        recentFestivalItemList.add(item);
      }
    }
  }

  void onTapMenuItem(MyPageMenu menu) {
    Get.to(() => MyPageContentScreen(menu: menu));
  }

  void onTapSettingItem(MyPageSetting setting) {
    switch (setting) {
      case MyPageSetting.account:
        Get.toNamed(SeenearPath.MY_PAGE_ACCOUNT);
      case MyPageSetting.notice:
        Get.toNamed(SeenearPath.MY_PAGE_NOTICE);
      case MyPageSetting.helpdesk:
        Get.toNamed(SeenearPath.MY_PAGE_HELP_DESK);
      case MyPageSetting.notification:
        Get.toNamed(SeenearPath.MY_PAGE_NOTIFICATION);
      case MyPageSetting.logout:
        Get.bottomSheet(
          BaseBottomSheet(
            title: '정말 로그아웃 하시겠어요?',
            desc: '로그아웃 시 일부 기능 사용이 불가할 수 있어요!',
            buttonTitles: const ['아니요', '로그아웃'],
            onTapButton: (index) async {
              Get.back();
              if (index == 1) {
                SnackBarManager().showSnackBar(title: '로그아웃이 완료되었습니다.');
                Get.offAllNamed(SeenearPath.LOGIN);
              }
            },
          ),
        );

    }
  }

  void onDeleteItem({required MyPageMenu menu, required int id}) {
    if (menu.deleteBottomSheetTitle == null) return;
    Get.bottomSheet(
      BaseBottomSheet(
        title: menu.deleteBottomSheetTitle!,
        desc: menu.deleteBottomSheetDesc,
        buttonTitles: menu.deleteBottomSheetButtons,
        onTapButton: (index) async {
          Get.back();
          bool res = await _requestDeleteItem(menu: menu, id: id);
          if (!res) return; //  실패하면 토스트 팝업 안 띄움
          if (index == 1) SnackBarManager().showSnackBar(title: menu.deleteBottomSheetComplete);
        },
      ),
    );
  }

  // todo: menu에 따른 api 호출 필요
  Future<bool> _requestDeleteItem({required MyPageMenu menu, required int id}) async {
    switch (menu) {
      case MyPageMenu.favorite:
        bool res = await _deleteFavoriteItem(id: id);
        return res;
      case MyPageMenu.review:
        bool res = await _deleteRecentItem(id: id);
        return res;
      case MyPageMenu.subscription:
      case MyPageMenu.recentView:
        return true; // todo: 각각 api 필요
    }
  }

  void onTapBlockFollower() {
    Get.bottomSheet(
      BaseBottomSheet(
        title: '방실방실방실이 님을\n차단 하시겠어요?',
        desc: '차단하사면 상대방은 회원님의 글을 볼 수 없어요.',
        buttonTitles: const ['아니요', '네 취소할래요'],
        onTapButton: (index) {
          Get.back();
          if (index == 1) SnackBarManager().showSnackBar(title: '차단이 완료되었습니다.');
        },
      ),
    );
  }
}
