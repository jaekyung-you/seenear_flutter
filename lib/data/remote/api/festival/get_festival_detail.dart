import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import 'package:seenear/data/remote/response/festival_response.dart';

class GetFestivalDetail {
  Future<FestivalResponse> call({required int id}) async {
    Response res = await ApiBase().get('/festival/api/v1/$id');
    return FestivalResponse.fromJson(res.data);
  }
}
