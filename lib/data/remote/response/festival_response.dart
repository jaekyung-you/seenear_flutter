import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'festival_response.freezed.dart';

part 'festival_response.g.dart';

@freezed
class FestivalResponse with _$FestivalResponse {
  const factory FestivalResponse({
    required int itemId,
    required String name,
    required String addressDetailA,
    required String addressDetailB,
    required String date,
    required List<String> imageSrc,
    required int score,
    required int totalComment,
  }) = _FestivalResponse;

  factory FestivalResponse.fromJson(Map<String, Object?> json) => _$FestivalResponseFromJson(json);
}
