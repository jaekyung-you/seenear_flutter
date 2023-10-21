// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainResponseImpl _$$MainResponseImplFromJson(Map<String, dynamic> json) =>
    _$MainResponseImpl(
      categoryList: (json['categoryList'] as List<dynamic>)
          .map((e) => MainCategoryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MainResponseImplToJson(_$MainResponseImpl instance) =>
    <String, dynamic>{
      'categoryList': instance.categoryList,
    };
