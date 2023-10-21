import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

/// 최근 본 목록 추가
class AddRecentItem {
  Future<bool> call({required int itemId, required String itemType}) async {
    Response res = await ApiBase().post('/member/api/v1/recently-views', data: {
      'itemId': itemId,
      'itemType': itemType,
    });
    return res.statusCode == 200;
  }
}