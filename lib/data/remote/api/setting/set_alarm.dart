import 'package:dio/dio.dart';
import '../../response/alarm_response.dart';
import '../api_base.dart';

// 설정 > 알림 정보 설정하기
class SetAlarm {
  Future<bool> call({required AlarmResponse request}) async {
    Response res = await ApiBase().put('/member/api/v1/alarm', data: request.toJson());
    return res.statusCode == 200;
  }
}
