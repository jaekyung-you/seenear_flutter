import 'package:dio/dio.dart';
import 'package:seenear/data/remote/response/health_check_response.dart';

import 'api_base.dart';

class GetHealthCheck {
  final Dio dio = Dio();

  Future<HealthCheckResponse> call({required String deviceId}) async {
    Response res = await ApiBase().post('/member/api/v1/recently-views', data: {'deviceId': deviceId});
    return HealthCheckResponse.fromJson(res.data);
  }
}
