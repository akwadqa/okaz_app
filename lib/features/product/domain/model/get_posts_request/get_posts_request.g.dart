// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_posts_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetPostsRequest _$GetPostsRequestFromJson(Map<String, dynamic> json) =>
    _GetPostsRequest(
      subcategories: (json['subcategories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => RequestAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      postType: json['post_type'] as String?,
      title: json['title'] as String?,
      minPrice: (json['min_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetPostsRequestToJson(_GetPostsRequest instance) =>
    <String, dynamic>{
      'subcategories': instance.subcategories,
      'attributes': instance.attributes,
      'post_type': instance.postType,
      'title': instance.title,
      'min_price': instance.minPrice,
    };

_RequestAttribute _$RequestAttributeFromJson(Map<String, dynamic> json) =>
    _RequestAttribute(
      title: json['title'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$RequestAttributeToJson(_RequestAttribute instance) =>
    <String, dynamic>{
      'title': instance.title,
      'value': instance.value,
    };
