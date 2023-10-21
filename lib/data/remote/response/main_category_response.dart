import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'main_category_response.freezed.dart';
part 'main_category_response.g.dart';

@freezed
class MainCategoryResponse with _$MainCategoryResponse {
  const factory MainCategoryResponse({
    required String mainName,
    required bool isActive,
    String? subName,
  }) = _MainCategoryResponse;

  factory MainCategoryResponse.fromJson(Map<String, Object?> json)
      => _$MainCategoryResponseFromJson(json);
}