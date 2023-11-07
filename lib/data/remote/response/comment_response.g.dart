// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentResponseImpl _$$CommentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentResponseImpl(
      id: json['id'] as int,
      memberView:
          MemberResponse.fromJson(json['memberView'] as Map<String, dynamic>),
      content: json['content'] as String,
      date: json['date'] as String,
      parentId: json['parentId'] as int?,
    );

Map<String, dynamic> _$$CommentResponseImplToJson(
        _$CommentResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberView': instance.memberView,
      'content': instance.content,
      'date': instance.date,
      'parentId': instance.parentId,
    };
