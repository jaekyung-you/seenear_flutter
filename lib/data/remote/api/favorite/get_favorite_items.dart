import 'package:dio/dio.dart';
import '../../response/info_item_response.dart';
import '../api_base.dart';

class GetFavoriteItemList {
  Future<List<InfoItemResponse>> call({required int size, int? page = 0}) async {
    Response res = await ApiBase().get(
      '/member/api/v1/favorite-items',
      query: {'page': page, 'size': size},
    );

    List<InfoItemResponse> list = res.data.map<InfoItemResponse>((e) => InfoItemResponse.fromJson(e)).toList();
    return list;
  }
}
