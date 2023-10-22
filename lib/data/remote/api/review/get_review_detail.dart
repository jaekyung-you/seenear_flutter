import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import 'package:seenear/data/remote/response/review_item_response.dart';

/// 리뷰 상세보기
class GetReviewDetail {
  Future<ReviewItemResponse> call({required int id, required int itemId, required String itemType}) async {
    Response res = await ApiBase().get(
      '/review/api/v1/$id',
      query: {'itemId': itemId, 'itemType': itemType},
    );

    return ReviewItemResponse.fromJson(res.data);
  }
}
