import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

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
