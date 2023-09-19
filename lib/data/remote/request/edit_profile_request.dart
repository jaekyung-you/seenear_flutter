class EditProfileRequest {
  final bool hideRealName;
  final String? nickname;
  final String? profileImageSrc;

  EditProfileRequest({
    required this.hideRealName,
    this.nickname = '',
    this.profileImageSrc = '',
  });

  Map<String, dynamic> toJson() => {
        'hideRealName': hideRealName,
        'nickname': nickname,
        'profileImageSrc': profileImageSrc,
      };
}
