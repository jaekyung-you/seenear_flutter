import 'package:dio/dio.dart';
import '../../request/member_additional_info_request.dart';
import '../api_base.dart';

/// 가입 시 거주지역, 관심지역, 관심사 추가 등록
class RegisterAdditionalInfo {
  Future<bool> call({required MemberAddInformationRequest request}) async {
    Response res = await ApiBase().post('/member/api/v1/information', data: request.toJson());
    return res.statusCode == 200;
  }
}
