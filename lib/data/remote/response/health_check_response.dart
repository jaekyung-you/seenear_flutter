import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'member_response.dart';

part 'health_check_response.freezed.dart';
part 'health_check_response.g.dart';

@freezed
class HealthCheckResponse with _$HealthCheckResponse {
  const factory HealthCheckResponse({
    required String accessToken, // 발급받은 토큰
    required bool member,
    MemberResponse? memberView,
  }) = _HealthCheckResponse;

  factory HealthCheckResponse.fromJson(Map<String, Object?> json)
      => _$HealthCheckResponseFromJson(json);
}
