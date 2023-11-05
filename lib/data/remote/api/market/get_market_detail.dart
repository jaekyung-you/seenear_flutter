import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import 'package:seenear/data/remote/response/market_response.dart';

class GetFestivalDetail {
  Future<MarketResponse> call({required int id}) async {
    Response res = await ApiBase().get('/market/api/v1/$id');
    return MarketResponse.fromJson(res.data);
  }
}
