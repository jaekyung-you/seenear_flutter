import 'package:dio/dio.dart';
import '../../response/member_follow_list_response.dart';
import '../api_base.dart';

/// 내가 팔로우하는 사람들 목록
class GetFollowerList {
  Future<MemberFollowListResponse> call({required int size, int? page = 0}) async {
    Response res = await ApiBase().get(
      '/member/api/v1/followers',
      query: {'page': page, 'size': size},
    );
    return MemberFollowListResponse.fromJson(res.data);
  }
}
