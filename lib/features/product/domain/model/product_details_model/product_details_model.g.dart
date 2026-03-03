// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) =>
    _ProductDetailsModel(
      title: json['title'] as String?,
      titleArabic: json['title_arabic'] as String?,
      description: json['description'] as String?,
      descriptionArabic: json['description_arabic'] as String?,
      price: (json['price'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      city: json['city'] as String?,
      condition: json['condition'] as String?,
      listingType: json['post_type'] as String?,
      category: json['category'] as String?,
      subcategory: json['subcategory'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => ProductAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      likes: (json['likes'] as num?)?.toInt(),
      comments: (json['comments'] as num?)?.toInt(),
      views: (json['views'] as num?)?.toInt(),
      createdOn: json['created_on'] as String?,
      userInfo: json['user_info'] == null
          ? null
          : ProductUserInfo.fromJson(json['user_info'] as Map<String, dynamic>),
      isFavorited: json['is_favorited'] as bool?,
      isLiked: json['is_liked'] as bool?,
    );

Map<String, dynamic> _$ProductDetailsModelToJson(
        _ProductDetailsModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'title_arabic': instance.titleArabic,
      'description': instance.description,
      'description_arabic': instance.descriptionArabic,
      'price': instance.price,
      'currency': instance.currency,
      'city': instance.city,
      'condition': instance.condition,
      'post_type': instance.listingType,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'images': instance.images,
      'attributes': instance.attributes,
      'likes': instance.likes,
      'comments': instance.comments,
      'views': instance.views,
      'created_on': instance.createdOn,
      'user_info': instance.userInfo,
      'is_favorited': instance.isFavorited,
      'is_liked': instance.isLiked,
    };

_ProductImage _$ProductImageFromJson(Map<String, dynamic> json) =>
    _ProductImage(
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ProductImageToJson(_ProductImage instance) =>
    <String, dynamic>{
      'image': instance.image,
    };

_ProductAttribute _$ProductAttributeFromJson(Map<String, dynamic> json) =>
    _ProductAttribute(
      categoryAttribute: json['option'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$ProductAttributeToJson(_ProductAttribute instance) =>
    <String, dynamic>{
      'option': instance.categoryAttribute,
      'value': instance.value,
    };

_ProductUserInfo _$ProductUserInfoFromJson(Map<String, dynamic> json) =>
    _ProductUserInfo(
      userId: json['user_id'] as String?,
      appUserId: json['app_user_id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      mobileNo: json['mobile_no'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$ProductUserInfoToJson(_ProductUserInfo instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'app_user_id': instance.appUserId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'mobile_no': instance.mobileNo,
      'country': instance.country,
    };
