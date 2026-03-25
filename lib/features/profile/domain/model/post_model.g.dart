// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostModel _$PostModelFromJson(Map<String, dynamic> json) => _PostModel(
      name: json['name'] as String,
      title: json['title'] as String,
      titleAr: json['title_ar'] as String?,
      description: json['description'] as String,
      descriptionAr: json['description_ar'] as String?,
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
      condition: json['condition'] as String,
      likes: (json['likes'] as num).toInt(),
      comments: (json['comments'] as num).toInt(),
      image: json['image'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => PostImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostModelToJson(_PostModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'title_ar': instance.titleAr,
      'description': instance.description,
      'description_ar': instance.descriptionAr,
      'price': instance.price,
      'currency': instance.currency,
      'condition': instance.condition,
      'likes': instance.likes,
      'comments': instance.comments,
      'image': instance.image,
      'images': instance.images,
    };
