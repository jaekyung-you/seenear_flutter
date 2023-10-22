import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:seenear/data/remote/response/review_item_response.dart';

part 'review_list_response.freezed.dart';
part 'review_list_response.g.dart';

@freezed
class ReviewListResponse with _$ReviewListResponse {
  const factory ReviewListResponse({
    List<ReviewItemResponse>? data,
  }) = _ReviewListResponse;

  factory ReviewListResponse.fromJson(Map<String, Object?> json)
      => _$ReviewListResponseFromJson(json);
}