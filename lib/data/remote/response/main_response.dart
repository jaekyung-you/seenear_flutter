import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:seenear/data/remote/response/main_category_response.dart';

part 'main_response.freezed.dart';
part 'main_response.g.dart';

@freezed
class MainResponse with _$MainResponse {
  const factory MainResponse({
    required List<MainCategoryResponse> categoryList,
  }) = _MainResponse;

  factory MainResponse.fromJson(Map<String, Object?> json)
      => _$MainResponseFromJson(json);
}