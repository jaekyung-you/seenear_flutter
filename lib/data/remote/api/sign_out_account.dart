import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

/// additionalInformation : 직접 입력 사유
class SignOutAccount {
  Future<bool> call({String? additionalInformation, required List<String> type}) async {
    Response res = await ApiBase().post(
      '/member/api/v1/close-account',
      data: {
        'additionalInformation': additionalInformation,
        'type': type.toString(),
      },
    );
    return res.statusCode == 200;
  }
}
