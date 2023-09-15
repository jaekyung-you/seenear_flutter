class MemberResponse {
  String? imageSrc;
  String? name;
  int? memberId;

  MemberResponse({required this.imageSrc, required this.name, required this.memberId});

  factory MemberResponse.fromJson(Map<String, dynamic> json) {
    return MemberResponse(
      imageSrc: json['imageSrc'],
      name: json['name'],
      memberId: json['memberId'],
    );
  }

  Map<String, dynamic> toJson() => {
        'imageSrc': imageSrc,
        'name': name,
        'memberId': memberId,
      };
}
