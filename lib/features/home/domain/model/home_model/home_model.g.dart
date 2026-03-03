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
    );

Map<String, dynamic> _$SubCategoryModelToJson(_SubCategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category_name': instance.categoryName,
      'category_name_ar': instance.categoryNameAr,
      'image': instance.image,
    };
