import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
abstract class ProductDetailsModel with _$ProductDetailsModel {
  const factory ProductDetailsModel({
    String? title,
    String? name,
    @JsonKey(name: 'title_ar') String? titleAr,
    String? description,
    @JsonKey(name: 'description_ar') String? descriptionAr,
    num? price,
    String? currency,
    String? city,
    String? latitude,
    String? longitude,
    String? condition,
    @JsonKey(name: 'post_type') String? postType,
    String? category,
    String? image,
    String? subcategory,
    List<PostImage>? images,
    List<PostAttribute>? attributes,
    @JsonKey(name: 'is_featured') int? isFeatured,
    @JsonKey(name: 'parent_comments') List<Comment>? parentComments,
    int? likes,
    int? comments,
    int? views,
    int? reports,
    @JsonKey(name: 'created_on') String? createdOn,
    @JsonKey(name: 'user_info') PostOwner? userInfo,
    @JsonKey(name: 'user_is_owner') bool? userIsOwner,
    @JsonKey(name: 'is_favorited') bool? isFavorited,
    @JsonKey(name: 'is_liked') bool? isLiked,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}

@freezed
abstract class PostImage with _$PostImage {
  const factory PostImage(
      {String? image,
      @JsonKey(defaultValue: false, includeToJson: false)
      bool? isFromDevice 
      }) = _PostImage;

  factory PostImage.fromJson(Map<String, dynamic> json) =>
      _$PostImageFromJson(json);
}

@freezed
abstract class PostAttribute with _$PostAttribute {
  const factory PostAttribute({
    String? option,
    String? value,
  }) = _PostAttribute;

  factory PostAttribute.fromJson(Map<String, dynamic> json) =>
      _$PostAttributeFromJson(json);
}

@freezed
abstract class Comment with _$Comment {
  const factory Comment({
    String? name,
    String? content,
    @JsonKey(name: 'comment_by') CommenterInfo? commentBy,
    String? timestamp,
    int? edited,
    @JsonKey(name: 'child_comments') List<Comment>? childComments,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@freezed
abstract class CommenterInfo with _$CommenterInfo {
  const factory CommenterInfo({
    @JsonKey(name: 'app_user_id') String? appUserId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'user_is_owner') bool? userIsOwner,
    String? image,
  }) = _CommenterInfo;

  factory CommenterInfo.fromJson(Map<String, dynamic> json) =>
      _$CommenterInfoFromJson(json);
}

@freezed
abstract class PostOwner with _$PostOwner {
  const factory PostOwner({
    @JsonKey(name: 'post_owner') String? postOwnerEmail,
    @JsonKey(name: 'owner_app_id') String? ownerAppId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    String? country,
  }) = _PostOwner;

  factory PostOwner.fromJson(Map<String, dynamic> json) =>
      _$PostOwnerFromJson(json);
}
