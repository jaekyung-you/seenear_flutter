import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

import '../../response/review_detail_response.dart';

/// 리뷰 상세보기
class GetReviewDetail {
  Future<ReviewDetailResponse> call({required int id}) async {
    Response res = await ApiBase().get('/review/api/v1/$id');

    return ReviewDetailResponse.fromJson(res.data);
  }
}
