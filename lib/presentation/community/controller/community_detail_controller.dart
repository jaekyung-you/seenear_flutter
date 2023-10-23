import 'package:get/get.dart';

class CommunityDetailController extends GetxController {
  int? id; // 게시물 id

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments) {
      id = Get.arguments['id'];
      _requestDetail(id: id);
    }
  }

  Future<void> _requestDetail({required int? id}) async {
    if (id == null) return;
  }
}
