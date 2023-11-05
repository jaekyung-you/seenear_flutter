import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import 'package:seenear/data/remote/response/market_response.dart';

class GetMarketList {
  Future<List<MarketResponse>> call(
      {required int page, required int size, String? addressDetailA, String? addressDetailB, String? date}) async {
    Response res = await ApiBase().get(
      '/festival/api/v1/lists',
      query: {
        'page': page,
        'size': size,
        'addressDetailA': addressDetailA,
        'addressDetailB': addressDetailB,
        'date': date,
      },
    );

    List<MarketResponse> list = res.data.map<MarketResponse>((e) => MarketResponse.fromJson(e)).toList();
    return list;
  }
}
