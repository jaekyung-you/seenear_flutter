import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import '../../response/interest_category_response.dart';

/// 관심 목록 받아오기
class GetInterestCategory {
  Future<List<InterestCategoryResponse>> call() async {
    Response res = await ApiBase().get(
      '/operation/api/v1/categories',
    );

    List<InterestCategoryResponse> list =
        res.data['data'].map<InterestCategoryResponse>((e) => InterestCategoryResponse.fromJson(e)).toList();
    return list;
  }
}
