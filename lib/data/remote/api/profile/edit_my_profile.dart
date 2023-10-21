import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

class EditMyProfile {
  Future<bool> call({bool hideRealName = true, String? nickname = '', String? profileImageSrc = ''}) async {
    Response res = await ApiBase().put('/member/api/v1/my-profiles', data: {
      'hideRealName': hideRealName,
      'nickname': nickname,
      'profileImageSrc': profileImageSrc,
    });
    return res.statusCode == 200;
  }
}
