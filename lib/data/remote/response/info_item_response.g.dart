// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfoItemResponseImpl _$$InfoItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InfoItemResponseImpl(
      createdAt: json['createdAt'] as String?,
      date: json['date'] as String,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      itemId: json['itemId'] as int,
      itemType: json['itemType'] as String,
      name: json['name'] as String,
      reviewCount: json['reviewCount'] as int,
      score: json['score'] as int,
      updatedAt: json['updatedAt'] as String?,
      closed: json['closed'] as bool?,
      like: json['like'] as bool?,
    );

Map<String, dynamic> _$$InfoItemResponseImplToJson(
        _$InfoItemResponseImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'date': instance.date,
      'images': instance.images,
      'itemId': instance.itemId,
      'itemType': instance.itemType,
      'name': instance.name,
      'reviewCount': instance.reviewCount,
      'score': instance.score,
      'updatedAt': instance.updatedAt,
      'closed': instance.closed,
      'like': instance.like,
    };
