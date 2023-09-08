class MainCategoryResponse {
  final String mainName;
  final String subName;

  MainCategoryResponse({required this.mainName, required this.subName});

  factory MainCategoryResponse.fromJson(Map<String, dynamic> json) {
    return MainCategoryResponse(
      mainName: json['mainName'],
      subName: json['subName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'subName': subName,
      'mainName': mainName,
    };
  }
}