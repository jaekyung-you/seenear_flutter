import 'package:get/get.dart';
import 'package:seenear/data/remote/response/review_item_response.dart';

import '../../../data/remote/api/like/do_like.dart';
import '../../../data/remote/api/like/do_unlike.dart';
import '../../../data/remote/api/review/get_review_detail.dart';

class ReviewDetailController extends GetxController {
  int id = 0; // 조회하는 리뷰 id
  bool isMine = false; // 내 리뷰 -> '리뷰 관리' 혹은 '방문자 후기'

  // usecase
  final GetReviewDetail _getReviewDetail = GetReviewDetail();

  // 좋아요, 공감
  final DoLike _doLike = DoLike();
  final DoUnlike _doUnlike = DoUnlike();

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      id = Get.arguments['id'];
      isMine = Get.arguments['isMine'];
      _requestReviewDetail(id: id);
    }
  }

  // 리뷰 상세 후기
  Future<void> _requestReviewDetail({required int id}) async {
    // todo: 서버랑 같이 파라미터 확인
    ReviewItemResponse review = await _getReviewDetail(itemId: id, itemType: '', id: id);
  }

  Future<void> toggleLike({required bool isLiked, required int itemId, required String itemType}) async {
    if (isLiked) {
      bool res = await _doUnlike(itemType: itemType, itemId: itemId);
    } else {
      bool res = await _doLike(itemId: itemId, itemType: itemType);
    }
  }
}
