import 'package:dio/dio.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:seenear/data/remote/api/api_base.dart';

class Login {
  Future<Response> call({required User user}) async {
    Response res = await ApiBase().post('/member/api/v1/create', data: user.toJson());
    return res;
  }
}
