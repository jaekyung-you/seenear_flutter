import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

/// 가입 시, 닉네임 중복 체크
class CheckNicknameDuplication {
  Future<bool> call({required String nickname}) async {
    Response res = await ApiBase().get(
      '/member/api/v1/check-duplicated-nickname',
      query: {'insertedNickname': nickname},
    );
    return res.data;
  }
}