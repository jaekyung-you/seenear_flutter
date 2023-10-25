// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberDetailResponseImpl _$$MemberDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberDetailResponseImpl(
      id: json['id'] as int,
      nickName: json['nickName'] as String,
      profileImageSrc: json['profileImageSrc'] as String?,
      loginType: json['loginType'] as String?,
    );

Map<String, dynamic> _$$MemberDetailResponseImplToJson(
        _$MemberDetailResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickName': instance.nickName,
      'profileImageSrc': instance.profileImageSrc,
      'loginType': instance.loginType,
    };
