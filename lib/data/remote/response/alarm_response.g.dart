// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlarmResponseImpl _$$AlarmResponseImplFromJson(Map<String, dynamic> json) =>
    _$AlarmResponseImpl(
      appUpdateNotificationEnabled:
          json['appUpdateNotificationEnabled'] as bool,
      marketingTermsAgreed: json['marketingTermsAgreed'] as bool,
      reviewCommentNotificationEnabled:
          json['reviewCommentNotificationEnabled'] as bool,
      serviceNoticeNotificationEnabled:
          json['serviceNoticeNotificationEnabled'] as bool,
    );

Map<String, dynamic> _$$AlarmResponseImplToJson(_$AlarmResponseImpl instance) =>
    <String, dynamic>{
      'appUpdateNotificationEnabled': instance.appUpdateNotificationEnabled,
      'marketingTermsAgreed': instance.marketingTermsAgreed,
      'reviewCommentNotificationEnabled':
          instance.reviewCommentNotificationEnabled,
      'serviceNoticeNotificationEnabled':
          instance.serviceNoticeNotificationEnabled,
    };
