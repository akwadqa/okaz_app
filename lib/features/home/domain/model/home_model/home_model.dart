import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  const factory HomeModel({
    List<BannerModel?>? banners,
    List<CategoryModel?>? categories,
    @JsonKey(name: 'app_version') AppVersionModel? appVersion,
    @JsonKey(name: 'contact_us') ContactUsModel? contactUsModel,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

@freezed
abstract class BannerModel with _$BannerModel {
  const factory BannerModel({
    @JsonKey(name: 'banner_name') String? bannerName,
    @JsonKey(name: 'banner_name_ar') String? bannerNameAr,
    String? image,
    String? post,
    
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    String? name,
    String? icon,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'category_name_ar') String? categoryNameAr,
    List<SubCategoryModel?>? subcategories,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
abstract class SubCategoryModel with _$SubCategoryModel {
  const factory SubCategoryModel({
    String? name,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'category_name_ar') String? categoryNameAr,
    String? image,
    @JsonKey(name: 'main_attributes') List<AttributeModel>? mainAttributes,
  }) = _SubCategoryModel;

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryModelFromJson(json);
}

@freezed
abstract class AttributeModel with _$AttributeModel {
  const factory AttributeModel({
    String? name,
    String? title,
    @JsonKey(name: 'data_type') String? dataType,
    @JsonKey(name: 'is_main_filter') int? isMainFilter,
    @JsonKey(name: 'is_filterable') int? isFilterable,
    // String? values,
    List<MainAttributeValueModel>? values
  }) = _AttributeModel;

  factory AttributeModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeModelFromJson(json);
}

@freezed
abstract class MainAttributeValueModel with _$MainAttributeValueModel {
  const factory MainAttributeValueModel({
    String? image,
    String? title,
   
  }) = _MainAttributeValueModel;

  factory MainAttributeValueModel.fromJson(Map<String, dynamic> json) =>
      _$MainAttributeValueModelFromJson(json);
}
@freezed
abstract class AppVersionModel with _$AppVersionModel {
  const factory AppVersionModel({
    @JsonKey(name: 'android_version') String? androidVersion,
    @JsonKey(name: 'ios_version') String? iosVersion,
    @JsonKey(name: 'android_url') String? androidUrl,
    @JsonKey(name: 'ios_url') String? iosUrl,
    @JsonKey(name: 'app_update_required') int? appUpdateRequired,
    @JsonKey(name: 'app_update_message') String? appUpdateMessage,
    @JsonKey(name: 'apple_review') int? appleReview,
  }) = _AppVersionModel;

  factory AppVersionModel.fromJson(Map<String, dynamic> json) =>
      _$AppVersionModelFromJson(json);
}
@freezed
abstract class ContactUsModel with _$ContactUsModel {
  const factory ContactUsModel({
    @JsonKey(name: 'phone_number') String? phoneNumber,

  }) = _ContactUsModel;

  factory ContactUsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactUsModelFromJson(json);
}