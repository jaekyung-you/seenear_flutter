import 'package:get/get.dart';

class DetailReviewController extends GetxController {
  int id = 0; // 조회하는 리뷰 id

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

  }
}