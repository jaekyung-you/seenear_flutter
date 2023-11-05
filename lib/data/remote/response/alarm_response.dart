import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'alarm_response.freezed.dart';
part 'alarm_response.g.dart';

@freezed
class AlarmResponse with _$AlarmResponse {
  const factory AlarmResponse({
    required bool appUpdateNotificationEnabled,
    required bool marketingTermsAgreed,
    required bool reviewCommentNotificationEnabled,
    required bool serviceNoticeNotificationEnabled,
  }) = _AlarmResponse;

  factory AlarmResponse.fromJson(Map<String, Object?> json)
      => _$AlarmResponseFromJson(json);
}