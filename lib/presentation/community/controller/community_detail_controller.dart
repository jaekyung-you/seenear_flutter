import 'package:get/get.dart';

import '../../../const/design_system/base_bottom_sheet.dart';
import '../../../data/remote/api/follower/add_follower.dart';
import '../../../data/remote/api/follower/delete_follower.dart';
import '../../../domain/util/snack_bar_manager.dart';

class CommunityDetailController extends GetxController {
  // property
  int? id; // 게시물 id
  RxBool isFollowing = false.obs;

  // usecase
  final DeleteFollower _deleteFollower = DeleteFollower();
  final AddFollower _addFollower = AddFollower();

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      id = Get.arguments['id'];
      _requestDetail(id: id);
    }
  }

  Future<void> _requestDetail({required int? id}) async {
    if (id == null) return;
  }

  Future<void> onTapUnfollow({required int memberId, required String memberName}) async {
    Get.bottomSheet(
      BaseBottomSheet(
        title: '$memberName 님을\n구독 취소하시겠어요?',
        desc: '구독을 취소하시면 구독 목록에서 사라져요.',
        buttonTitles: const ['아니요', '취소할래요'],
        onTapButton: (int index) async {
          Get.back();
          if (index == 1) {
            bool res = await _deleteFollower(memberId: memberId);
            // todo: 해당 사람의 following 프로퍼티를 false로 바꿔줌
            SnackBarManager().showSnackBar(title: res ? '구독이 취소되었습니다.' : '일시적인 오류가 발생했습니다.');
          }
        },
      ),
    );
  }

  Future<void> onTapFollow({required int memberId, required String memberName}) async {
    Get.bottomSheet(
      BaseBottomSheet(
        title: '$memberName 님을 구독하시겠어요?',
        desc: '구독하사면 상대방의 글을 따로 모아볼 수 있어요.',
        buttonTitles: const ['아니요', '구독할래요'],
        onTapButton: (int index) async {
          Get.back();
          if (index == 1) {
            bool res = await _addFollower(memberId: memberId);
            // todo: 해당 사람의 following 프로퍼티를 true로 바꿔줌
            SnackBarManager().showSnackBar(title: res ? '구독이 완료되었습니다.' : '일시적인 오류가 발생했습니다.');
          }
        },
      ),
    );
  }
}
