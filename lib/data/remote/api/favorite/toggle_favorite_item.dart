import 'package:dio/dio.dart';
import '../api_base.dart';

class ToggleFavoriteItem {
  Future<bool> call({required int itemId, required String itemType}) async {
    Response res = await ApiBase().post('/member/api/v1/favorite-item', data: {
      'itemId': itemId,
      'itemType': itemType,
    });
    return res.statusCode == 200;
  }
}
