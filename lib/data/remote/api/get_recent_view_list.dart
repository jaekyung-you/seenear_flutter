import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

import '../response/info_item_response.dart';

/// 내 정보 > 최근 본 목록 호출
class GetRecentViews {
  Future<List<InfoItemResponse>> call({required int size, int? cursorId}) async {
    Response res = await ApiBase().get(
      '/member/api/v1/recently-views',
      query: {'cursorId': cursorId, 'size': size},
    );

    List<InfoItemResponse> list = res.data.map<InfoItemResponse>((e) => InfoItemResponse.fromJson(e)).toList();
    return list;
  }
}
