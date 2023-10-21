import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'member_detail_response.freezed.dart';
part 'member_detail_response.g.dart';

@freezed
class MemberDetailResponse with _$MemberDetailResponse {
  const factory MemberDetailResponse({
    required int id, // 멤버id
    required String nickname, // 닉네임
    String? profileImageSrc,
    String? loginType,
  }) = _MemberDetailResponse;

  factory MemberDetailResponse.fromJson(Map<String, Object?> json)
      => _$MemberDetailResponseFromJson(json);
}