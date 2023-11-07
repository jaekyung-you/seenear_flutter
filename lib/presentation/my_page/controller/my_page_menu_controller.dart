import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/const/enum/my_page_setting.dart';
import 'package:seenear/const/seenear_path.dart';
import 'package:seenear/data/local/member.dart';
import 'package:seenear/data/remote/api/block/block_member.dart';
import 'package:seenear/data/remote/api/favorite/add_favorite_item.dart';
import 'package:seenear/data/remote/api/favorite/delete_favorite_item.dart';
import 'package:seenear/data/remote/api/follower/add_follower.dart';
import 'package:seenear/data/remote/api/follower/delete_follower.dart';
import 'package:seenear/data/remote/api/follower/get_follower_list.dart';
import 'package:seenear/data/remote/api/follower/get_following_list.dart';
import 'package:seenear/data/remote/api/like/do_like.dart';
import 'package:seenear/data/remote/api/like/do_unlike.dart';
import 'package:seenear/data/remote/api/recent/add_recent_item.dart';
import 'package:seenear/data/remote/api/recent/delete_recent_item.dart';
import 'package:seenear/data/remote/api/favorite/get_favorite_items.dart';
import 'package:seenear/data/remote/api/recent/get_recent_view_list.dart';
import 'package:seenear/data/remote/api/review/get_review_list.dart';
import 'package:seenear/data/remote/response/member_follow_list_response.dart';
import 'package:seenear/data/remote/response/review_item_response.dart';
import 'package:seenear/domain/util/snack_bar_manager.dart';
import '../../../const/design_system/base_bottom_sheet.dart';
import '../../../data/remote/api/setting/logout.dart';
import '../../../data/remote/response/info_item_response.dart';

import '../../../data/remote/response/member_response.dart';
import '../widget/my_page_menu/my_page_content_screen.dart';

class MyPageMenuController extends GetxController with GetSingleTickerProviderStateMixin {
  /// property
  late TabController myPageTabController;
  int requestSize = 10;
  RxBool isLoading = false.obs; // 네트워크 로딩중

  /// usecase
  // 찜 목록
  final GetFavoriteItemList _getFavoriteItemList = GetFavoriteItemList();
  final DeleteFavoriteItem _deleteFavoriteItem = DeleteFavoriteItem();
  final AddFavoriteItem _addFavoriteItem = AddFavoriteItem();
  List<InfoItemResponse> favoriteItemList = <InfoItemResponse>[];
  RxList<InfoItemResponse> favoriteMarketItemList = <InfoItemResponse>[].obs;
  RxList<InfoItemResponse> favoriteFestivalItemList = <InfoItemResponse>[].obs;
  int? lastFavoriteId; // cursor에 사용됨

  // 최근 본 목록
  final GetRecentViews _getRecentViews = GetRecentViews();
  final DeleteRecentItem _deleteRecentItem = DeleteRecentItem();
  final AddRecentItem _addRecentItem = AddRecentItem();
  List<InfoItemResponse> recentViewList = <InfoItemResponse>[]; // 최대 10개까지만 보여서 페이징 필요없을 것 같음
  RxList<InfoItemResponse> recentMarketItemList = <InfoItemResponse>[].obs;
  RxList<InfoItemResponse> recentFestivalItemList = <InfoItemResponse>[].obs;

  // 리뷰 관리
  final GetReviewList _getReviewList = GetReviewList();
  List<ReviewItemResponse> reviewList = <ReviewItemResponse>[];
  RxList<ReviewItemResponse> reviewMarketItemList = <ReviewItemResponse>[].obs;
  RxList<ReviewItemResponse> reviewFestivalItemList = <ReviewItemResponse>[].obs;

  // 구독 관리
  final GetFollowerList _getFollowerList = GetFollowerList();
  final GetFollowingList _getFollowingList = GetFollowingList();
  final AddFollower _addFollower = AddFollower();
  final DeleteFollower _deleteFollower = DeleteFollower();
  final BlockMember _blockMember = BlockMember();
  List<MemberResponse> followerList = <MemberResponse>[];
  RxList<MemberResponse> myFollowerList = <MemberResponse>[].obs;
  RxList<MemberResponse> myFollowingList = <MemberResponse>[].obs;

  // 좋아요, 공감
  final DoLike _doLike = DoLike();
  final DoUnlike _doUnlike = DoUnlike();

  // 로그아웃
  final Logout _logout = Logout();

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
        recentViewList.clear();
        recentMarketItemList.clear();
        recentFestivalItemList.clear();

      case MyPageMenu.review:
        reviewList.clear();
        reviewFestivalItemList.clear();
        reviewMarketItemList.clear();

      case MyPageMenu.subscription:
        followerList.clear();
        myFollowerList.clear();
        myFollowingList.clear();

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
        _requestReviewList();
      case MyPageMenu.subscription:
        _requestFollowerList();
    }
  }

  // todo: 스크롤 끝까지 내림 Visibility -> 페이징 구현 필요
  Future<void> _requestFavoriteList() async {
    List<InfoItemResponse> res = await _getFavoriteItemList(size: requestSize);
    favoriteItemList = res;
    for (InfoItemResponse item in favoriteItemList) {
      if (item.itemType == "MARKET") {
        favoriteMarketItemList.add(item);
      } else if (item.itemType == "FESTIVAL") {
        favoriteFestivalItemList.add(item);
      }
    }

    lastFavoriteId = favoriteItemList.last.itemId;
  }

  Future<void> _requestRecentViewList() async {
    // todo: 페이징 구현
    List<InfoItemResponse> res = await _getRecentViews(size: requestSize);
    recentViewList = res;
    for (InfoItemResponse item in recentViewList) {
      if (item.itemType == "MARKET") {
        recentMarketItemList.add(item);
      } else if (item.itemType == "FESTIVAL") {
        recentFestivalItemList.add(item);
      }
    }
  }

  Future<void> _requestReviewList() async {
    // todo: 페이징 구현
    List<ReviewItemResponse> res = await _getReviewList(size: requestSize, type: '');
    reviewList = res;
    for (ReviewItemResponse item in reviewList) {
      if (item.itemType == "MARKET") {
        reviewMarketItemList.add(item);
      } else if (item.itemType == "FESTIVAL") {
        reviewFestivalItemList.add(item);
      }
    }
  }

  Future<void> _requestFollowerList() async {
    // todo: 페이징 구현
    MemberFollowListResponse res = await _getFollowerList(size: 10);
    followerList = res.members ?? [];
    // todo: 서버 쪽에서 타입 분리 필요
    // for (MemberResponse item in followerList) {
    //   if (item.itemType == "MARKET") {
    //     recentMarketItemList                .add(item);
    //   } else if (item.itemType == "FESTIVAL") {
    //     recentFestivalItemList.add(item);
    //   }
    // }
  }

  Future<void> _requestFollowingList() async {
    // todo: 페이징 구현
    MemberFollowListResponse res = await _getFollowingList(size: 10);
    followerList = res.members ?? [];
    // todo: 서버 쪽에서 타입 분리 필요
    // for (MemberResponse item in followerList) {
    //   if (item.itemType == "MARKET") {
    //     recentMarketItemList                .add(item);
    //   } else if (item.itemType == "FESTIVAL") {
    //     recentFestivalItemList.add(item);
    //   }
    // }
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
                bool result = await requestLogout();
                if (result) {
                  SnackBarManager().showSnackBar(title: '로그아웃이 완료되었습니다.');
                  Member().isMember = false;
                  Get.offAllNamed(SeenearPath.LOGIN);
                } else {
                  Get.snackbar('', '로그아웃에 실패했습니다.');
                }
              }
            },
          ),
        );
    }
  }

  void onDeleteItem({required MyPageMenu menu, required int itemId, required String itemType}) {
    if (menu.deleteBottomSheetTitle == null) return;
    Get.bottomSheet(
      BaseBottomSheet(
        title: menu.deleteBottomSheetTitle!,
        desc: menu.deleteBottomSheetDesc,
        buttonTitles: menu.deleteBottomSheetButtons,
        onTapButton: (index) async {
          Get.back();
          bool res = await _requestDeleteItem(menu: menu, itemId: itemId, itemType: itemType);
          SnackBarManager().showSnackBar(title: res ? menu.deleteBottomSheetComplete : '일시적 오류가 발생했습니다.');
        },
      ),
    );
  }

  // todo: menu에 따른 api 호출 필요
  Future<bool> _requestDeleteItem({required MyPageMenu menu, int? itemId, String? itemType, int? memberId}) async {
    bool result;

    switch (menu) {
      case MyPageMenu.favorite:
        if (itemId == null || itemType == null) return false;
        result = await _deleteFavoriteItem(itemId: itemId, itemType: itemType);
        if (result) {
          if (itemType == "MARKET") {
            favoriteMarketItemList.removeWhere((element) => element.itemId == itemId);
          } else if (itemType == "FESTIVAL") {
            favoriteFestivalItemList.removeWhere((element) => element.itemId == itemId);
          }
          return true;
        }
        return false;
      case MyPageMenu.review:
        if (itemId == null || itemType == null) return false;
        result = await _deleteRecentItem(itemId: itemId, itemType: itemType);
        if (result) {
          if (itemType == "MARKET") {
            reviewMarketItemList.removeWhere((element) => element.itemId == itemId);
          } else if (itemType == "FESTIVAL") {
            reviewFestivalItemList.removeWhere((element) => element.itemId == itemId);
          }
          return true;
        }
        return false;
      case MyPageMenu.subscription:
        if (memberId == null) return false;
        result = await _deleteFollower(memberId: memberId);
        // todo: itemType과 같은 것이 필요함 서버 작업 필요
        return false;
      case MyPageMenu.recentView:
        if (itemId == null || itemType == null) return false;
        result = await _deleteRecentItem(itemId: itemId, itemType: itemType);
        if (result) {
          if (itemType == "MARKET") {
            recentMarketItemList.removeWhere((element) => element.itemId == itemId);
          } else if (itemType == "FESTIVAL") {
            recentFestivalItemList.removeWhere((element) => element.itemId == itemId);
          }
          return true;
        }
        return false;
    }
  }

  void onTapBlockFollower({required int memberId}) {
    Get.bottomSheet(
      BaseBottomSheet(
        title: '방실방실방실이 님을\n차단 하시겠어요?',
        desc: '차단하사면 상대방은 회원님의 글을 볼 수 없어요.',
        buttonTitles: const ['아니요', '네 취소할래요'],
        onTapButton: (index) async {
          Get.back();
          if (index == 1) {
            await _blockMember(id: memberId);
            SnackBarManager().showSnackBar(title: '차단이 완료되었습니다.');
          }
        },
      ),
    );
  }

  Future<void> onTapFavoriteIcon({required MyPageMenu menu, required int itemId, required String itemType}) async {
    switch (menu) {
      case MyPageMenu.recentView:
        bool res = await _addRecentItem(itemId: itemId, itemType: itemType);
      case MyPageMenu.favorite:
        bool res = await _addFavoriteItem(itemId: itemId, itemType: itemType);
      default:
        // 나머지 (리뷰 관리, 구독 관리) 에서는 찜 기능이 없어서 패스
        break;
    }
  }

  Future<void> onTapReviewItem({required int id}) async {
    Get.toNamed(SeenearPath.REVIEW_DETAIL, arguments: {'id': id});
  }

  Future<void> onTapAddFollower({required int memberId}) async {
    bool res = await _addFollower(memberId: memberId);
    SnackBarManager().showSnackBar(title: res ? '구독이 완료되었습니다.' : '일시적 오류가 발생했습니다.');
  }

  Future<bool> requestLogout() async {
    try {
      // await UserApi.instance.unlink();
      bool result = await _logout();
      return result;
    } catch (e) {
      print('e: $e');
      return false;
    }
  }

  Future<void> toggleLike({required bool isLiked, required int itemId, required String itemType}) async {
    if (isLiked) {
      bool res = await _doUnlike(itemType: itemType, itemId: itemId);
    } else {
      bool res = await _doLike(itemId: itemId, itemType: itemType);
    }
  }
}
