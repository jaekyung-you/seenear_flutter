import 'package:get/get.dart';

class MarketDetailController extends GetxController {
  int id = 0; // 조회하는 마켓 id

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      id = Get.arguments['id'];
      _requestMarketDetail(id: id);
    }
  }

  Future<void> _requestMarketDetail({required int id}) async {
    // todo: id로 마켓 디테일 api 호출
  }
}