import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import 'package:seenear/data/remote/response/festival_response.dart';

class GetFestivalList {
  Future<List<FestivalResponse>> call(
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

    List<FestivalResponse> list = res.data.map<FestivalResponse>((e) => FestivalResponse.fromJson(e)).toList();
    return list;
  }
}
