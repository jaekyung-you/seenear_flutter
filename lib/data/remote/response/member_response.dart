import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'member_response.freezed.dart';
part 'member_response.g.dart';

@freezed
class MemberResponse with _$MemberResponse {
  const factory MemberResponse({
    String? imageSrc,
    required String name,
    required int memberId,
  }) = _MemberResponse;

  factory MemberResponse.fromJson(Map<String, Object?> json)
      => _$MemberResponseFromJson(json);
}