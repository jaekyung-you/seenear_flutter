import 'package:dio/dio.dart';
import '../api_base.dart';

class AddFollower {
  Future<bool> call({required int memberId}) async {
    Response res = await ApiBase().post('/member/api/v1/follower', data: {
      'memberId': memberId,
    });
    return res.statusCode == 200;
  }
}
