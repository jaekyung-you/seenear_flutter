import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import '../../response/review_list_response.dart';

/// 내 리뷰 리스트 불러오기
class GetReviewList {
  Future<List<ReviewListResponse>> call({required int size, required String type, int? cursorId}) async {
    Response res = await ApiBase().get(
      '/review/api/v1/lists',
      query: {'cursorId': cursorId, 'size': size, 'type': type},
    );

    List<ReviewListResponse> list = res.data.map<ReviewListResponse>((e) => ReviewListResponse.fromJson(e)).toList();
    return list;
  }
}
