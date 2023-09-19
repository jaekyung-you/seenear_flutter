import 'package:dio/dio.dart';
import 'api_base.dart';

class DeleteFavoriteItem {
  Future<bool> call({required int id}) async {
    Response res = await ApiBase().delete('/member/api/v1/favorite-item', data: {'id': id});
    return res.statusCode == 200;
  }
}
