import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

/// 가입 시, 닉네임 중복 체크
/// 회원 정보 변경, 닉네임 변경 시 중복 체크
class CheckNicknameDuplicate {
  Future<bool> call({required String nickname, bool? useKakaoNickname}) async {
    Response res = await ApiBase().get(
      '/member/api/v1/check-duplicated-nickname',
      query: {'insertedNickname': nickname, 'useKakaoNickname': useKakaoNickname ?? false},
    );
    return res.data;
  }
}