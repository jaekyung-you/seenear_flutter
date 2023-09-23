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

  // '찜하기' 토글
  Future<void> onTapFavoriteButton() async {

  }

  // '주소복사' 버튼
  Future<void> onTapCopyAddress() async {

  }

  // '가는 길 바로보기' 버튼
  Future<void> onTapNavigate() async {
    // todo: 네비게이션 연결
  }

  // '나도 후기 쓰기' 버사
  Future<void> onTapWriteReview() async {

  }


}