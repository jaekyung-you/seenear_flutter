import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'interest_category_response.freezed.dart';
part 'interest_category_response.g.dart';

@freezed
class InterestCategoryResponse with _$InterestCategoryResponse {
  const factory InterestCategoryResponse({
    required String code,
    required String displayText,
    required String suggestion,
  }) = _InterestCategoryResponse;

  factory InterestCategoryResponse.fromJson(Map<String, Object?> json)
      => _$InterestCategoryResponseFromJson(json);
}