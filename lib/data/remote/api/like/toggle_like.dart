import 'package:dio/dio.dart';
import '../api_base.dart';

/// 공감, 좋아요 버튼
class ToggleLike {
  Future<bool> call({required int itemId, required String itemType}) async {
    Response res = await ApiBase().post('/member/api/v1/like', data: {'itemId': itemId, 'itemType': itemType});
    return res.statusCode == 200;
  }
}
