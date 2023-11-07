import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:seenear/data/remote/response/comment_response.dart';

part 'review_detail_response.freezed.dart';

part 'review_detail_response.g.dart';

@freezed
class ReviewDetailResponse with _$ReviewDetailResponse {
  const factory ReviewDetailResponse({
    CommentResponse? comment,
    String? content,
    required String createdAt,
    required int id,
    List<String>? images,
    required int likeCount,
    double? score,
    required String title,
  }) = _ReviewDetailResponse;

  factory ReviewDetailResponse.fromJson(Map<String, Object?> json) => _$ReviewDetailResponseFromJson(json);
}
