import 'package:seenear/data/remote/api/member/member_api.dart';

class GetMainList {
  MemberApi memberApi = MemberApi();

  Future<void> call() async {
    await memberApi.getMainList();
  }
}