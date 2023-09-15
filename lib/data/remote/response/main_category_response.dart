class MainCategoryResponse {
  final String mainName;
  final String subName;
  final bool isActive;

  MainCategoryResponse({required this.mainName, required this.subName, required this.isActive});

  factory MainCategoryResponse.fromJson(Map<String, dynamic> json) {
    return MainCategoryResponse(
      mainName: json['mainName'],
      subName: json['subName'],
      isActive: json['isActive'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'subName': subName,
      'mainName': mainName,
      'isActive': isActive,
    };
  }
}
