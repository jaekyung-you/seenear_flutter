// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_check_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthCheckResponseImpl _$$HealthCheckResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthCheckResponseImpl(
      accessToken: json['accessToken'] as String,
      member: json['member'] as bool,
      memberView: json['memberView'] == null
          ? null
          : MemberResponse.fromJson(json['memberView'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HealthCheckResponseImplToJson(
        _$HealthCheckResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'member': instance.member,
      'memberView': instance.memberView,
    };
