import 'package:seenear/data/remote/response/member_response.dart';

class Member {
  Member._privateConstructor();

  static final Member _instance = Member._privateConstructor();

  factory Member() {
    return _instance;
  }

  int? memberId;
  String? nickname;
  String? profileImageSrc;

  void setMember(MemberResponse res) {
    memberId = res.memberId;
    nickname = res.name;
    profileImageSrc = res.imageSrc;
  }
}