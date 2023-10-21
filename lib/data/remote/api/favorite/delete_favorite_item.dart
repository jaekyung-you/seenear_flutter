import 'package:dio/dio.dart';
import '../api_base.dart';

class DeleteFavoriteItem {
  Future<bool> call({required int itemId, required String itemType}) async {
    Response res = await ApiBase().delete('/member/api/v1/favorite-item', data: {
      'itemId': itemId,
      'itemType': itemType,
    });
    return res.statusCode == 200;
  }
}
