import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/const/enum/my_page_setting.dart';
import 'package:seenear/const/seenear_path.dart';
import 'package:seenear/data/remote/api/delete_favorite_item.dart';
import 'package:seenear/data/remote/api/get_favorite_items.dart';
import 'package:seenear/domain/util/snack_bar_manager.dart';
import '../../../const/design_system/base_bottom_sheet.dart';
import '../../../data/remote/response/info_item_response.dart';
import '../widget/my_page_menu/my_page_content_screen.dart';

class MyPageMenuController extends GetxController with GetSingleTickerProviderStateMixin {
  /// property
  late TabController myPageTabController;
  int requestSize = 10;

  RxList<InfoItemResponse> favoriteItemList = <InfoItemResponse>[].obs;

  /// usecase
  GetFavoriteItemList _getFavoriteItemList = GetFavoriteItemList();
  DeleteFavoriteItem _deleteFavoriteItem = DeleteFavoriteItem();

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

  void requestListByMenu(MyPageMenu menu) {
    switch (menu) {
      case MyPageMenu.recentView:
      case MyPageMenu.review:
      case MyPageMenu.subscription:
        break;

      case MyPageMenu.favorite:
      _requestFavoriteList();
    }
  }

  Future<void> _requestFavoriteList() async {
    // todo: 페이징 구현
    List<InfoItemResponse> res = await _getFavoriteItemList(size: requestSize, cursorId: null);
    favoriteItemList.value = res;
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
    }
  }

  void onDeleteItem(MyPageMenu menu) {
    if (menu.deleteBottomSheetTitle == null) return;
    Get.bottomSheet(
      BaseBottomSheet(
        title: menu.deleteBottomSheetTitle!,
        desc: menu.deleteBottomSheetDesc,
        buttonTitles: menu.deleteBottomSheetButtons,
        onTapButton: (index) {
          Get.back();
          if (index == 1) SnackBarManager().showSnackBar(title: menu.deleteBottomSheetComplete);
        },
      ),
    );
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
