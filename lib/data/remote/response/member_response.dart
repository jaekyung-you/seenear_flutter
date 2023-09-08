class MemberResponse {
  String imageSrc;
  String name;

  MemberResponse({required this.imageSrc, required this.name});

  factory MemberResponse.fromJson(Map<String, dynamic> json) {
    return MemberResponse(
      imageSrc: json['imageSrc'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() => {
    'imageSrc': imageSrc,
    'name': name,
  };
}