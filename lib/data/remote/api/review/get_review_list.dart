import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import 'package:seenear/data/remote/response/review_item_response.dart';

/// 내 리뷰 리스트 불러오기
class GetReviewList {
  Future<List<ReviewItemResponse>> call({required int size, required String type, int? cursorId}) async {
    Response res = await ApiBase().get(
      '/review/api/v1/lists',
      query: {'cursorId': cursorId, 'size': size, 'type': type},
    );

    List<ReviewItemResponse> list = res.data.map<ReviewItemResponse>((e) => ReviewItemResponse.fromJson(e)).toList();
    return list;
  }
}
