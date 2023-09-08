import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

import '../../response/recent_viewed_item_response.dart';

/// 내 정보 > 최근 본 목록 호출
class GetRecentViews {
  final Dio dio = Dio();

  Future<List<RecentViewedItemResponse>> call({required int size, int? cursorId}) async {
    Response res = await ApiBase().get(
      '/member/api/v1/recently-views',
      query: {'cursorId': cursorId, 'size': cursorId},
    );

    List<RecentViewedItemResponse> list = res.data.map((e) => RecentViewedItemResponse.fromJson(e)).toList();
    return list;
  }
}