class MemberDetailResponse {
  int id; // 멤버id
  String nickname; // 닉네임
  String? profileImageSrc;
  String? loginType;

  MemberDetailResponse({
    required this.id,
    required this.nickname,
    this.profileImageSrc,
    this.loginType,
  }); // 프로필 사진

  factory MemberDetailResponse.fromJson(Map<String, dynamic> json) {
    return MemberDetailResponse(
      id: json['id'],
      nickname: json['nickName'],
      profileImageSrc: json['profileImageSrc'],
      loginType: json['loginType'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nickName': nickname,
        'profileImageSrc': profileImageSrc,
        'loginType': loginType,
      };
}
