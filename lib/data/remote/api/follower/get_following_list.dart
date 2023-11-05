import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import '../../response/member_follow_list_response.dart';

/// 나를 팔로잉하는 사람들 목록
class GetFollowingList {
  Future<MemberFollowListResponse> call({required int size, int? page = 0}) async {
    Response res = await ApiBase().get(
      '/member/api/v1/followereds',
      query: {'page': page, 'size': size},
    );
    return MemberFollowListResponse.fromJson(res.data);
  }
}
