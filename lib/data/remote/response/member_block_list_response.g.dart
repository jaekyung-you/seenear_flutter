// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_block_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberBlockListResponseImpl _$$MemberBlockListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberBlockListResponseImpl(
      blockedMemberList: (json['blockedMemberList'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$MemberBlockListResponseImplToJson(
        _$MemberBlockListResponseImpl instance) =>
    <String, dynamic>{
      'blockedMemberList': instance.blockedMemberList,
    };
