import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'info_item_response.freezed.dart';
part 'info_item_response.g.dart';

@freezed
class InfoItemResponse with _$InfoItemResponse {
  const factory InfoItemResponse({
    String? createdAt,
    required String date,
    List<String>? images,
    required int itemId,
    required String itemType, // "FESTIVAL", "MARKET"
    required String name,
    required int reviewCount,
    required int score,
    String? updatedAt,
  }) = _InfoItemResponse;

  factory InfoItemResponse.fromJson(Map<String, Object?> json)
      => _$InfoItemResponseFromJson(json);
}
