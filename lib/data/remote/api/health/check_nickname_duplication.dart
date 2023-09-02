import 'package:seenear/data/remote/api/member/member_api.dart';

class CheckNicknameDuplication {
  MemberApi memberApi = MemberApi();

  Future<void> call() async {
    await memberApi.checkNicknameDuplication();
  }
}