import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'market_response.freezed.dart';
part 'market_response.g.dart';

@freezed
class MarketResponse with _$MarketResponse {
  const factory MarketResponse({
    required int itemId,
    required String name,
    required String addressDetailA,
    required String addressDetailB,
    required String date,
    required List<String> imageSrc,
    required int score,
    required int totalComment,
  }) = _MarketResponse;

  factory MarketResponse.fromJson(Map<String, Object?> json)
      => _$MarketResponseFromJson(json);
}