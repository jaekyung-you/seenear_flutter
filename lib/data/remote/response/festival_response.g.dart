// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'festival_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FestivalResponseImpl _$$FestivalResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FestivalResponseImpl(
      itemId: json['itemId'] as int,
      name: json['name'] as String,
      addressDetailA: json['addressDetailA'] as String,
      addressDetailB: json['addressDetailB'] as String,
      date: json['date'] as String,
      imageSrc:
          (json['imageSrc'] as List<dynamic>).map((e) => e as String).toList(),
      score: json['score'] as int,
      totalComment: json['totalComment'] as int,
    );

Map<String, dynamic> _$$FestivalResponseImplToJson(
        _$FestivalResponseImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'addressDetailA': instance.addressDetailA,
      'addressDetailB': instance.addressDetailB,
      'date': instance.date,
      'imageSrc': instance.imageSrc,
      'score': instance.score,
      'totalComment': instance.totalComment,
    };
