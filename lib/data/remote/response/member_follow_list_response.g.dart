// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_follow_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberFollowListResponseImpl _$$MemberFollowListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberFollowListResponseImpl(
      followedAt: json['followedAt'] as String,
      followered: json['followered'] as bool,
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => MemberResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MemberFollowListResponseImplToJson(
        _$MemberFollowListResponseImpl instance) =>
    <String, dynamic>{
      'followedAt': instance.followedAt,
      'followered': instance.followered,
      'members': instance.members,
    };
