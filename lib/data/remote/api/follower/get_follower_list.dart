import 'package:dio/dio.dart';
import 'package:seenear/data/remote/response/member_response.dart';
import '../api_base.dart';

class GetFollowerList {
  Future<List<MemberResponse>> call({required int size, int? page = 0}) async {
    Response res = await ApiBase().get(
      '/member/api/v1/followers',
      query: {'page': page, 'size': size},
    );

    List<MemberResponse> list = res.data.map<MemberResponse>((e) => MemberResponse.fromJson(e)).toList();
    return list;
  }
}
