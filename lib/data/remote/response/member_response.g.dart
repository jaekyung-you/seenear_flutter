// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberResponseImpl _$$MemberResponseImplFromJson(Map<String, dynamic> json) =>
    _$MemberResponseImpl(
      imageSrc: json['imageSrc'] as String?,
      name: json['name'] as String,
      memberId: json['memberId'] as int,
    );

Map<String, dynamic> _$$MemberResponseImplToJson(
        _$MemberResponseImpl instance) =>
    <String, dynamic>{
      'imageSrc': instance.imageSrc,
      'name': instance.name,
      'memberId': instance.memberId,
    };
