import 'package:get/get.dart';
import 'package:seenear/data/remote/response/review_item_response.dart';

import '../../../data/remote/api/review/get_review_detail.dart';

class DetailReviewController extends GetxController {
  int id = 0; // 조회하는 리뷰 id

  // usecase
  final GetReviewDetail _getReviewDetail = GetReviewDetail();

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      id = Get.arguments['id'];
      _requestReviewDetail(id: id);
    }
  }

  // 리뷰 상세 후기
  Future<void> _requestReviewDetail({required int id}) async {
    // todo: 서버랑 같이 파라미터 확인
    ReviewItemResponse review = await _getReviewDetail(itemId: id, itemType: '', id: id);
  }
}
