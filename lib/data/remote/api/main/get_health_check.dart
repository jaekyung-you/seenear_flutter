import 'package:dio/dio.dart';
import 'package:seenear/data/remote/response/health_check_response.dart';

import '../api_base.dart';

class GetHealthCheck {
  Future<HealthCheckResponse> call({required String deviceId}) async {
    Response res = await ApiBase().post('/health', data: {'deviceId': deviceId});
    return HealthCheckResponse.fromJson(res.data);
  }
}
