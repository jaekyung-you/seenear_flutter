import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'review_item_response.freezed.dart';

part 'review_item_response.g.dart';

@freezed
class ReviewItemResponse with _$ReviewItemResponse {
  const factory ReviewItemResponse({
    required int id,
    required int itemId,
    int? commentCount,
    String? content,
    String? date,
    String? images,
    int? likeCount,
  }) = _ReviewItemResponse;

  factory ReviewItemResponse.fromJson(Map<String, Object?> json) => _$ReviewItemResponseFromJson(json);
}
