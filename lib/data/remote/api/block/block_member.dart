import 'package:dio/dio.dart';
import '../../response/member_block_list_response.dart';
import '../api_base.dart';

// 멤버 차단하기
class BlockMember {
  Future<MemberBlockListResponse> call({required int id}) async {
    Response res = await ApiBase().put('/member/api/v1/$id/block');
    return MemberBlockListResponse.fromJson(res.data);
  }
}
