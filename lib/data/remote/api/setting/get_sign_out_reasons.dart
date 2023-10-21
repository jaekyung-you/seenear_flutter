import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

import '../../response/sign_out_reason_list.dart';

/// 탈퇴 사유 목록 받아오기
class GetSignOutReasons {
  Future<SignOutReasonList> call() async {
    Response res = await ApiBase().get(
      '/operation/api/v1/close-account-reasons',
    );
    return SignOutReasonList.fromJson(res.data);
  }
}