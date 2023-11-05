import 'package:dio/dio.dart';
import 'package:seenear/data/remote/response/alarm_response.dart';
import '../api_base.dart';

// 설정 > 알림 정보 가져오기
class GetAlarm {
  Future<AlarmResponse> call() async {
    Response res = await ApiBase().post('/member/api/v1/alarm');
    return AlarmResponse.fromJson(res.data);
  }
}
