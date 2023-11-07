import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'review_item_response.freezed.dart';

part 'review_item_response.g.dart';

@freezed
class ReviewItemResponse with _$ReviewItemResponse {
  const factory ReviewItemResponse({
    required int id, // 리뷰 자체 id
    required int itemId, // 리뷰를 단 게시물에 대한 itemId
    required String itemType, // MARKET, FESTIVAL 등
    int? commentCount,
    String? content,
    String? date,
    List<String>? images,
    int? likeCount,
  }) = _ReviewItemResponse;

  factory ReviewItemResponse.fromJson(Map<String, Object?> json) => _$ReviewItemResponseFromJson(json);
}
