// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewItemResponseImpl _$$ReviewItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewItemResponseImpl(
      id: json['id'] as int,
      itemId: json['itemId'] as int,
      commentCount: json['commentCount'] as int?,
      content: json['content'] as String?,
      date: json['date'] as String?,
      images: json['images'] as String?,
      likeCount: json['likeCount'] as int?,
    );

Map<String, dynamic> _$$ReviewItemResponseImplToJson(
        _$ReviewItemResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'commentCount': instance.commentCount,
      'content': instance.content,
      'date': instance.date,
      'images': instance.images,
      'likeCount': instance.likeCount,
    };
