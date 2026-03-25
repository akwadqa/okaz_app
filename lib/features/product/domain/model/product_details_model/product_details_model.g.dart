// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) =>
    _ProductDetailsModel(
      title: json['title'] as String?,
      name: json['name'] as String?,
      titleAr: json['title_ar'] as String?,
      description: json['description'] as String?,
      descriptionAr: json['description_ar'] as String?,
      price: json['price'] as num?,
      currency: json['currency'] as String?,
      city: json['city'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      condition: json['condition'] as String?,
      postType: json['post_type'] as String?,
      category: json['category'] as String?,
      image: json['image'] as String?,
      subcategory: json['subcategory'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => PostImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => PostAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFeatured: (json['is_featured'] as num?)?.toInt(),
      parentComments: (json['parent_comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      likes: (json['likes'] as num?)?.toInt(),
      comments: (json['comments'] as num?)?.toInt(),
      views: (json['views'] as num?)?.toInt(),
      reports: (json['reports'] as num?)?.toInt(),
      createdOn: json['created_on'] as String?,
      userInfo: json['user_info'] == null
          ? null
          : PostOwner.fromJson(json['user_info'] as Map<String, dynamic>),
      userIsOwner: json['user_is_owner'] as bool?,
      isFavorited: json['is_favorited'] as bool?,
      isLiked: json['is_liked'] as bool?,
    );

Map<String, dynamic> _$ProductDetailsModelToJson(
        _ProductDetailsModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'name': instance.name,
      'title_ar': instance.titleAr,
      'description': instance.description,
      'description_ar': instance.descriptionAr,
      'price': instance.price,
      'currency': instance.currency,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'condition': instance.condition,
      'post_type': instance.postType,
      'category': instance.category,
      'image': instance.image,
      'subcategory': instance.subcategory,
      'images': instance.images,
      'attributes': instance.attributes,
      'is_featured': instance.isFeatured,
      'parent_comments': instance.parentComments,
      'likes': instance.likes,
      'comments': instance.comments,
      'views': instance.views,
      'reports': instance.reports,
      'created_on': instance.createdOn,
      'user_info': instance.userInfo,
      'user_is_owner': instance.userIsOwner,
      'is_favorited': instance.isFavorited,
      'is_liked': instance.isLiked,
    };

_PostImage _$PostImageFromJson(Map<String, dynamic> json) => _PostImage(
      image: json['image'] as String?,
      isFromDevice: json['isFromDevice'] as bool? ?? false,
    );

Map<String, dynamic> _$PostImageToJson(_PostImage instance) =>
    <String, dynamic>{
      'image': instance.image,
    };

_PostAttribute _$PostAttributeFromJson(Map<String, dynamic> json) =>
    _PostAttribute(
      option: json['option'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$PostAttributeToJson(_PostAttribute instance) =>
    <String, dynamic>{
      'option': instance.option,
      'value': instance.value,
    };

_Comment _$CommentFromJson(Map<String, dynamic> json) => _Comment(
      name: json['name'] as String?,
      content: json['content'] as String?,
      commentBy: json['comment_by'] == null
          ? null
          : CommenterInfo.fromJson(json['comment_by'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String?,
      edited: (json['edited'] as num?)?.toInt(),
      childComments: (json['child_comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CommentToJson(_Comment instance) => <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
      'comment_by': instance.commentBy,
      'timestamp': instance.timestamp,
      'edited': instance.edited,
      'child_comments': instance.childComments,
    };

_CommenterInfo _$CommenterInfoFromJson(Map<String, dynamic> json) =>
    _CommenterInfo(
      appUserId: json['app_user_id'] as String?,
      firstName: json['first_name'] as String?,
      userIsOwner: json['user_is_owner'] as bool?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CommenterInfoToJson(_CommenterInfo instance) =>
    <String, dynamic>{
      'app_user_id': instance.appUserId,
      'first_name': instance.firstName,
      'user_is_owner': instance.userIsOwner,
      'image': instance.image,
    };

_PostOwner _$PostOwnerFromJson(Map<String, dynamic> json) => _PostOwner(
      postOwnerEmail: json['post_owner'] as String?,
      ownerAppId: json['owner_app_id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      mobileNo: json['mobile_no'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$PostOwnerToJson(_PostOwner instance) =>
    <String, dynamic>{
      'post_owner': instance.postOwnerEmail,
      'owner_app_id': instance.ownerAppId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'mobile_no': instance.mobileNo,
      'country': instance.country,
    };
