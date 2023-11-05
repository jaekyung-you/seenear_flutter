import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'member_block_list_response.freezed.dart';
part 'member_block_list_response.g.dart';

@freezed
class MemberBlockListResponse with _$MemberBlockListResponse {
  const factory MemberBlockListResponse({
    required List<int> blockedMemberList,
  }) = _MemberBlockListResponse;

  factory MemberBlockListResponse.fromJson(Map<String, Object?> json)
      => _$MemberBlockListResponseFromJson(json);
}