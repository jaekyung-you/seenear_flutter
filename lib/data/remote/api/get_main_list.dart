import 'package:dio/dio.dart';
import '../response/main_response.dart';
import 'api_base.dart';

class GetMainList {
  Future<MainResponse> call({required int id}) async {
    Response res = await ApiBase().get(
      '/member/api/v1/main',
      query: {'id': id},
    );
    return MainResponse.fromJson(res.data);
  }
}