import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

class Logout {
  Future<bool> call({required String deviceId, required String osType, required String memberId}) async {
    Response res = await ApiBase().post(
      '/member/api/v1/member-logout',
      data: {'deviceId': deviceId, 'osType': osType, 'memberId': memberId},
    );
    return res.data;
  }
}
