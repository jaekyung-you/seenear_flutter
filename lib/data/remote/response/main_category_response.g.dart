// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainCategoryResponseImpl _$$MainCategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MainCategoryResponseImpl(
      mainName: json['mainName'] as String,
      isActive: json['isActive'] as bool,
      subName: json['subName'] as String?,
    );

Map<String, dynamic> _$$MainCategoryResponseImplToJson(
        _$MainCategoryResponseImpl instance) =>
    <String, dynamic>{
      'mainName': instance.mainName,
      'isActive': instance.isActive,
      'subName': instance.subName,
    };
