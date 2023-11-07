// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewDetailResponseImpl _$$ReviewDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewDetailResponseImpl(
      comment: (json['comment'] as List<dynamic>?)
          ?.map((e) => CommentResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String?,
      createdAt: json['createdAt'] as String,
      id: json['id'] as int,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      likeCount: json['likeCount'] as int,
      score: (json['score'] as num?)?.toDouble(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$ReviewDetailResponseImplToJson(
        _$ReviewDetailResponseImpl instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'id': instance.id,
      'images': instance.images,
      'likeCount': instance.likeCount,
      'score': instance.score,
      'title': instance.title,
    };
