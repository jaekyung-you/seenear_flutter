import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

/// 최근 본 목록 삭제
class DeleteRecentItem {
  Future<bool> call({required int itemId, required String itemType}) async {
    Response res = await ApiBase().delete('/member/api/v1/recently-view', data: {
      'itemId': itemId,
      'itemType': itemType,
    });
    return res.statusCode == 200;
  }
}