// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewListResponseImpl _$$ReviewListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewListResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ReviewItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReviewListResponseImplToJson(
        _$ReviewListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
