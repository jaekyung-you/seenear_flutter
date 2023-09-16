import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

import '../response/member_detail_response.dart';

class GetMyProfile {
  Future<MemberDetailResponse> call() async {
    Response res = await ApiBase().get('/member/api/v1/my-profile');
    return MemberDetailResponse.fromJson(res.data);
  }
}