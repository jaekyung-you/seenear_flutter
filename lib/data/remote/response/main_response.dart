import 'main_category_response.dart';

class MainResponse {
  List<MainCategoryResponse> categoryList;

  MainResponse({required this.categoryList});

  factory MainResponse.fromJson(Map<String, dynamic> json) {
    return MainResponse(
      categoryList: json['categoryList'].map((e) => MainCategoryResponse.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'categoryList': categoryList.map((e) => e.toJson()).toList(),
      };
}
