import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:seenear/data/remote/response/member_response.dart';

part 'comment_response.freezed.dart';

part 'comment_response.g.dart';

@freezed
class CommentResponse with _$CommentResponse {
  const factory CommentResponse({
    required int id,
    required MemberResponse memberView,
    required String content,
    required String date,
    int? parentId,
  }) = _CommentResponse;

  factory CommentResponse.fromJson(Map<String, Object?> json) => _$CommentResponseFromJson(json);
}
