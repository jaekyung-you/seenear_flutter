import 'package:dio/dio.dart';

import '../response/recent_viewed_item_response.dart';
import 'api_base.dart';

class GetFavoriteItemList {
  final Dio dio = Dio();

  Future<List<RecentViewedItemResponse>> call({required int size, int? cursorId}) async {
    Response res = await ApiBase().get(
      '/member/api/v1/favorite-items',
      query: {'cursorId': cursorId, 'size': cursorId},
    );

    List<RecentViewedItemResponse> list = res.data.map((e) => RecentViewedItemResponse.fromJson(e)).toList();
    return list;
  }
}
