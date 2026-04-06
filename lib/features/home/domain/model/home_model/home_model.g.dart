// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => _HomeModel(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeModelToJson(_HomeModel instance) =>
    <String, dynamic>{
      'banners': instance.banners,
      'categories': instance.categories,
    };

_BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => _BannerModel(
      categoryName: json['category_name'] as String?,
      categoryNameAr: json['category_name_ar'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$BannerModelToJson(_BannerModel instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'category_name_ar': instance.categoryNameAr,
      'image': instance.image,
    };

_CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    _CategoryModel(
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      categoryName: json['category_name'] as String?,
      categoryNameAr: json['category_name_ar'] as String?,
      subcategories: (json['subcategories'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SubCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryModelToJson(_CategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'category_name': instance.categoryName,
      'category_name_ar': instance.categoryNameAr,
      'subcategories': instance.subcategories,
    };

_SubCategoryModel _$SubCategoryModelFromJson(Map<String, dynamic> json) =>
    _SubCategoryModel(
      name: json['name'] as String?,
      categoryName: json['category_name'] as String?,
      categoryNameAr: json['category_name_ar'] as String?,
      image: json['image'] as String?,
      mainAttributes: (json['main_attributes'] as List<dynamic>?)
          ?.map((e) => AttributeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubCategoryModelToJson(_SubCategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category_name': instance.categoryName,
      'category_name_ar': instance.categoryNameAr,
      'image': instance.image,
      'main_attributes': instance.mainAttributes,
    };

_AttributeModel _$AttributeModelFromJson(Map<String, dynamic> json) =>
    _AttributeModel(
      name: json['name'] as String?,
      title: json['title'] as String?,
      dataType: json['data_type'] as String?,
      isMainFilter: (json['is_main_filter'] as num?)?.toInt(),
      isFilterable: (json['is_filterable'] as num?)?.toInt(),
      values: (json['values'] as List<dynamic>?)
          ?.map((e) =>
              MainAttributeValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AttributeModelToJson(_AttributeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'data_type': instance.dataType,
      'is_main_filter': instance.isMainFilter,
      'is_filterable': instance.isFilterable,
      'values': instance.values,
    };

_MainAttributeValueModel _$MainAttributeValueModelFromJson(
        Map<String, dynamic> json) =>
    _MainAttributeValueModel(
      image: json['image'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$MainAttributeValueModelToJson(
        _MainAttributeValueModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
    };
