// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_attribute_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubcategoryAttributeModel _$SubcategoryAttributeModelFromJson(
        Map<String, dynamic> json) =>
    _SubcategoryAttributeModel(
      attributeId: json['attribute'] as String,
      title: json['title'] as String,
      dataType: json['data_type'] as String,
      isMainFilter: (json['is_main_filter'] as num).toInt(),
      isFilterable: (json['is_filterable'] as num).toInt(),
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SubcategoryAttributeModelToJson(
        _SubcategoryAttributeModel instance) =>
    <String, dynamic>{
      'attribute': instance.attributeId,
      'title': instance.title,
      'data_type': instance.dataType,
      'is_main_filter': instance.isMainFilter,
      'is_filterable': instance.isFilterable,
      'values': instance.values,
    };
