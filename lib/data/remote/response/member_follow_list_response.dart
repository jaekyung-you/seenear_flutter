import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'member_response.dart';

part 'member_follow_list_response.freezed.dart';
part 'member_follow_list_response.g.dart';

@freezed
class MemberFollowListResponse with _$MemberFollowListResponse {
  const factory MemberFollowListResponse({
    required String followedAt,
    required bool followered, // 팔로잉 하는 사람인지 여부
    List<MemberResponse>? members,
  }) = _MemberFollowListResponse;

  factory MemberFollowListResponse.fromJson(Map<String, Object?> json)
      => _$MemberFollowListResponseFromJson(json);
}