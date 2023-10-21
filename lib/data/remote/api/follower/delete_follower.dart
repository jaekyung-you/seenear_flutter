import 'package:dio/dio.dart';
import '../api_base.dart';

class DeleteFollower {
  Future<bool> call({required int memberId}) async {
    Response res = await ApiBase().delete('/member/api/v1/follower', data: {
      'memberId': memberId,
    });
    return res.statusCode == 200;
  }
}
