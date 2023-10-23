import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_bottom_sheet.dart';
import 'package:seenear/data/remote/api/follower/add_follower.dart';
import 'package:seenear/domain/util/snack_bar_manager.dart';

import '../../../const/enum/community_filter_type.dart';
import '../../../const/enum/community_tab_type.dart';

class CommunityMainController extends GetxController {
  // property
  Rx<CommunityTabType> selectedTab = CommunityTabType.all.obs; // 디폴트 : 전체 글
  Rx<CommunityFilterType> selectedFilter = CommunityFilterType.recent.obs; // 디폴트 : 최신순
  RxInt totalCount = 101.obs;

  // usecase
  final AddFollower _addFollower = AddFollower();

  @override
  void onInit() {
    super.onInit();
    _requestCommunityList();
  }

  Future<void> _requestCommunityList() async {
    // todo: 커뮤니티 리스트 목록 호출
  }

  Future<void> onTapFollow({required int memberId, required String memberName}) async {
    Get.bottomSheet(BaseBottomSheet(
      title: '$memberName 님을 구독하시겠어요?',
      desc: '구독하사면 상대방의 글을 따로 모아볼 수 있어요.',
      buttonTitles: const ['아니요', '구독할래요'],
      onTapButton: (int index) async {
        Get.back();
        if (index == 1) {
          bool res = await _addFollower(memberId: memberId);
          SnackBarManager().showSnackBar(title: res ? '구독이 완료되었습니다.' : '일시적인 오류가 발생했습니다.');
        }
      },
    ));
  }
}
