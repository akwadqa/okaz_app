import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
abstract class ProductDetailsModel with _$ProductDetailsModel {
  const factory ProductDetailsModel({
    String? title,

    @JsonKey(name: 'title_arabic')
    String? titleArabic,

    String? description,

    @JsonKey(name: 'description_arabic')
    String? descriptionArabic,

    int? price,
    String? currency,
    String? city,
    String? condition,

    @JsonKey(name: 'post_type')
    String? listingType,

    String? category,
    String? subcategory,

    List<ProductImage>? images,
    List<ProductAttribute>? attributes,

    int? likes,
    int? comments,
    int? views,

    @JsonKey(name: 'created_on')
    String? createdOn,

    @JsonKey(name: 'user_info')
    ProductUserInfo? userInfo,

    @JsonKey(name: 'is_favorited')
    bool? isFavorited,

    @JsonKey(name: 'is_liked')
    bool? isLiked,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}

/* ===================== Images ===================== */

@freezed
abstract class ProductImage with _$ProductImage {
  const factory ProductImage({
    String? image,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
}

/* ===================== Attributes ===================== */

@freezed
abstract class ProductAttribute with _$ProductAttribute {
  const factory ProductAttribute({
    @JsonKey(name: 'option')
    String? categoryAttribute,
    String? value,
  }) = _ProductAttribute;

  factory ProductAttribute.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeFromJson(json);
}

/* ===================== User Info ===================== */

@freezed
abstract class ProductUserInfo with _$ProductUserInfo {
  const factory ProductUserInfo({
    @JsonKey(name: 'user_id')
    String? userId,

    @JsonKey(name: 'app_user_id')
    String? appUserId,

    @JsonKey(name: 'first_name')
    String? firstName,

    @JsonKey(name: 'last_name')
    String? lastName,

    @JsonKey(name: 'mobile_no')
    String? mobileNo,

    String? country,
  }) = _ProductUserInfo;

  factory ProductUserInfo.fromJson(Map<String, dynamic> json) =>
      _$ProductUserInfoFromJson(json);
}