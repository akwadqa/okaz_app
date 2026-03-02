// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetailsModel {

 String? get title;@JsonKey(name: 'title_arabic') String? get titleArabic; String? get description;@JsonKey(name: 'description_arabic') String? get descriptionArabic; int? get price; String? get currency; String? get city; String? get condition;@JsonKey(name: 'post_type') String? get listingType; String? get category; String? get subcategory; List<ProductImage>? get images; List<ProductAttribute>? get attributes; int? get likes; int? get comments; int? get views;@JsonKey(name: 'created_on') String? get createdOn;@JsonKey(name: 'user_info') ProductUserInfo? get userInfo;@JsonKey(name: 'is_favorited') bool? get isFavorited;@JsonKey(name: 'is_liked') bool? get isLiked;
/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith => _$ProductDetailsModelCopyWithImpl<ProductDetailsModel>(this as ProductDetailsModel, _$identity);

  /// Serializes this ProductDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailsModel&&(identical(other.title, title) || other.title == title)&&(identical(other.titleArabic, titleArabic) || other.titleArabic == titleArabic)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionArabic, descriptionArabic) || other.descriptionArabic == descriptionArabic)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.city, city) || other.city == city)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.listingType, listingType) || other.listingType == listingType)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.views, views) || other.views == views)&&(identical(other.createdOn, createdOn) || other.createdOn == createdOn)&&(identical(other.userInfo, userInfo) || other.userInfo == userInfo)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,title,titleArabic,description,descriptionArabic,price,currency,city,condition,listingType,category,subcategory,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(attributes),likes,comments,views,createdOn,userInfo,isFavorited,isLiked]);

@override
String toString() {
  return 'ProductDetailsModel(title: $title, titleArabic: $titleArabic, description: $description, descriptionArabic: $descriptionArabic, price: $price, currency: $currency, city: $city, condition: $condition, listingType: $listingType, category: $category, subcategory: $subcategory, images: $images, attributes: $attributes, likes: $likes, comments: $comments, views: $views, createdOn: $createdOn, userInfo: $userInfo, isFavorited: $isFavorited, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class $ProductDetailsModelCopyWith<$Res>  {
  factory $ProductDetailsModelCopyWith(ProductDetailsModel value, $Res Function(ProductDetailsModel) _then) = _$ProductDetailsModelCopyWithImpl;
@useResult
$Res call({
 String? title,@JsonKey(name: 'title_arabic') String? titleArabic, String? description,@JsonKey(name: 'description_arabic') String? descriptionArabic, int? price, String? currency, String? city, String? condition,@JsonKey(name: 'post_type') String? listingType, String? category, String? subcategory, List<ProductImage>? images, List<ProductAttribute>? attributes, int? likes, int? comments, int? views,@JsonKey(name: 'created_on') String? createdOn,@JsonKey(name: 'user_info') ProductUserInfo? userInfo,@JsonKey(name: 'is_favorited') bool? isFavorited,@JsonKey(name: 'is_liked') bool? isLiked
});


$ProductUserInfoCopyWith<$Res>? get userInfo;

}
/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._self, this._then);

  final ProductDetailsModel _self;
  final $Res Function(ProductDetailsModel) _then;

/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? titleArabic = freezed,Object? description = freezed,Object? descriptionArabic = freezed,Object? price = freezed,Object? currency = freezed,Object? city = freezed,Object? condition = freezed,Object? listingType = freezed,Object? category = freezed,Object? subcategory = freezed,Object? images = freezed,Object? attributes = freezed,Object? likes = freezed,Object? comments = freezed,Object? views = freezed,Object? createdOn = freezed,Object? userInfo = freezed,Object? isFavorited = freezed,Object? isLiked = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,titleArabic: freezed == titleArabic ? _self.titleArabic : titleArabic // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionArabic: freezed == descriptionArabic ? _self.descriptionArabic : descriptionArabic // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,listingType: freezed == listingType ? _self.listingType : listingType // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<ProductImage>?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ProductAttribute>?,likes: freezed == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int?,views: freezed == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int?,createdOn: freezed == createdOn ? _self.createdOn : createdOn // ignore: cast_nullable_to_non_nullable
as String?,userInfo: freezed == userInfo ? _self.userInfo : userInfo // ignore: cast_nullable_to_non_nullable
as ProductUserInfo?,isFavorited: freezed == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool?,isLiked: freezed == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductUserInfoCopyWith<$Res>? get userInfo {
    if (_self.userInfo == null) {
    return null;
  }

  return $ProductUserInfoCopyWith<$Res>(_self.userInfo!, (value) {
    return _then(_self.copyWith(userInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetailsModel].
extension ProductDetailsModelPatterns on ProductDetailsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title, @JsonKey(name: 'title_arabic')  String? titleArabic,  String? description, @JsonKey(name: 'description_arabic')  String? descriptionArabic,  int? price,  String? currency,  String? city,  String? condition, @JsonKey(name: 'post_type')  String? listingType,  String? category,  String? subcategory,  List<ProductImage>? images,  List<ProductAttribute>? attributes,  int? likes,  int? comments,  int? views, @JsonKey(name: 'created_on')  String? createdOn, @JsonKey(name: 'user_info')  ProductUserInfo? userInfo, @JsonKey(name: 'is_favorited')  bool? isFavorited, @JsonKey(name: 'is_liked')  bool? isLiked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailsModel() when $default != null:
return $default(_that.title,_that.titleArabic,_that.description,_that.descriptionArabic,_that.price,_that.currency,_that.city,_that.condition,_that.listingType,_that.category,_that.subcategory,_that.images,_that.attributes,_that.likes,_that.comments,_that.views,_that.createdOn,_that.userInfo,_that.isFavorited,_that.isLiked);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title, @JsonKey(name: 'title_arabic')  String? titleArabic,  String? description, @JsonKey(name: 'description_arabic')  String? descriptionArabic,  int? price,  String? currency,  String? city,  String? condition, @JsonKey(name: 'post_type')  String? listingType,  String? category,  String? subcategory,  List<ProductImage>? images,  List<ProductAttribute>? attributes,  int? likes,  int? comments,  int? views, @JsonKey(name: 'created_on')  String? createdOn, @JsonKey(name: 'user_info')  ProductUserInfo? userInfo, @JsonKey(name: 'is_favorited')  bool? isFavorited, @JsonKey(name: 'is_liked')  bool? isLiked)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsModel():
return $default(_that.title,_that.titleArabic,_that.description,_that.descriptionArabic,_that.price,_that.currency,_that.city,_that.condition,_that.listingType,_that.category,_that.subcategory,_that.images,_that.attributes,_that.likes,_that.comments,_that.views,_that.createdOn,_that.userInfo,_that.isFavorited,_that.isLiked);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title, @JsonKey(name: 'title_arabic')  String? titleArabic,  String? description, @JsonKey(name: 'description_arabic')  String? descriptionArabic,  int? price,  String? currency,  String? city,  String? condition, @JsonKey(name: 'post_type')  String? listingType,  String? category,  String? subcategory,  List<ProductImage>? images,  List<ProductAttribute>? attributes,  int? likes,  int? comments,  int? views, @JsonKey(name: 'created_on')  String? createdOn, @JsonKey(name: 'user_info')  ProductUserInfo? userInfo, @JsonKey(name: 'is_favorited')  bool? isFavorited, @JsonKey(name: 'is_liked')  bool? isLiked)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsModel() when $default != null:
return $default(_that.title,_that.titleArabic,_that.description,_that.descriptionArabic,_that.price,_that.currency,_that.city,_that.condition,_that.listingType,_that.category,_that.subcategory,_that.images,_that.attributes,_that.likes,_that.comments,_that.views,_that.createdOn,_that.userInfo,_that.isFavorited,_that.isLiked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDetailsModel implements ProductDetailsModel {
  const _ProductDetailsModel({this.title, @JsonKey(name: 'title_arabic') this.titleArabic, this.description, @JsonKey(name: 'description_arabic') this.descriptionArabic, this.price, this.currency, this.city, this.condition, @JsonKey(name: 'post_type') this.listingType, this.category, this.subcategory, final  List<ProductImage>? images, final  List<ProductAttribute>? attributes, this.likes, this.comments, this.views, @JsonKey(name: 'created_on') this.createdOn, @JsonKey(name: 'user_info') this.userInfo, @JsonKey(name: 'is_favorited') this.isFavorited, @JsonKey(name: 'is_liked') this.isLiked}): _images = images,_attributes = attributes;
  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) => _$ProductDetailsModelFromJson(json);

@override final  String? title;
@override@JsonKey(name: 'title_arabic') final  String? titleArabic;
@override final  String? description;
@override@JsonKey(name: 'description_arabic') final  String? descriptionArabic;
@override final  int? price;
@override final  String? currency;
@override final  String? city;
@override final  String? condition;
@override@JsonKey(name: 'post_type') final  String? listingType;
@override final  String? category;
@override final  String? subcategory;
 final  List<ProductImage>? _images;
@override List<ProductImage>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductAttribute>? _attributes;
@override List<ProductAttribute>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? likes;
@override final  int? comments;
@override final  int? views;
@override@JsonKey(name: 'created_on') final  String? createdOn;
@override@JsonKey(name: 'user_info') final  ProductUserInfo? userInfo;
@override@JsonKey(name: 'is_favorited') final  bool? isFavorited;
@override@JsonKey(name: 'is_liked') final  bool? isLiked;

/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailsModelCopyWith<_ProductDetailsModel> get copyWith => __$ProductDetailsModelCopyWithImpl<_ProductDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailsModel&&(identical(other.title, title) || other.title == title)&&(identical(other.titleArabic, titleArabic) || other.titleArabic == titleArabic)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionArabic, descriptionArabic) || other.descriptionArabic == descriptionArabic)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.city, city) || other.city == city)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.listingType, listingType) || other.listingType == listingType)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.views, views) || other.views == views)&&(identical(other.createdOn, createdOn) || other.createdOn == createdOn)&&(identical(other.userInfo, userInfo) || other.userInfo == userInfo)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,title,titleArabic,description,descriptionArabic,price,currency,city,condition,listingType,category,subcategory,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_attributes),likes,comments,views,createdOn,userInfo,isFavorited,isLiked]);

@override
String toString() {
  return 'ProductDetailsModel(title: $title, titleArabic: $titleArabic, description: $description, descriptionArabic: $descriptionArabic, price: $price, currency: $currency, city: $city, condition: $condition, listingType: $listingType, category: $category, subcategory: $subcategory, images: $images, attributes: $attributes, likes: $likes, comments: $comments, views: $views, createdOn: $createdOn, userInfo: $userInfo, isFavorited: $isFavorited, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailsModelCopyWith<$Res> implements $ProductDetailsModelCopyWith<$Res> {
  factory _$ProductDetailsModelCopyWith(_ProductDetailsModel value, $Res Function(_ProductDetailsModel) _then) = __$ProductDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String? title,@JsonKey(name: 'title_arabic') String? titleArabic, String? description,@JsonKey(name: 'description_arabic') String? descriptionArabic, int? price, String? currency, String? city, String? condition,@JsonKey(name: 'post_type') String? listingType, String? category, String? subcategory, List<ProductImage>? images, List<ProductAttribute>? attributes, int? likes, int? comments, int? views,@JsonKey(name: 'created_on') String? createdOn,@JsonKey(name: 'user_info') ProductUserInfo? userInfo,@JsonKey(name: 'is_favorited') bool? isFavorited,@JsonKey(name: 'is_liked') bool? isLiked
});


@override $ProductUserInfoCopyWith<$Res>? get userInfo;

}
/// @nodoc
class __$ProductDetailsModelCopyWithImpl<$Res>
    implements _$ProductDetailsModelCopyWith<$Res> {
  __$ProductDetailsModelCopyWithImpl(this._self, this._then);

  final _ProductDetailsModel _self;
  final $Res Function(_ProductDetailsModel) _then;

/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? titleArabic = freezed,Object? description = freezed,Object? descriptionArabic = freezed,Object? price = freezed,Object? currency = freezed,Object? city = freezed,Object? condition = freezed,Object? listingType = freezed,Object? category = freezed,Object? subcategory = freezed,Object? images = freezed,Object? attributes = freezed,Object? likes = freezed,Object? comments = freezed,Object? views = freezed,Object? createdOn = freezed,Object? userInfo = freezed,Object? isFavorited = freezed,Object? isLiked = freezed,}) {
  return _then(_ProductDetailsModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,titleArabic: freezed == titleArabic ? _self.titleArabic : titleArabic // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionArabic: freezed == descriptionArabic ? _self.descriptionArabic : descriptionArabic // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,listingType: freezed == listingType ? _self.listingType : listingType // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ProductImage>?,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ProductAttribute>?,likes: freezed == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int?,views: freezed == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int?,createdOn: freezed == createdOn ? _self.createdOn : createdOn // ignore: cast_nullable_to_non_nullable
as String?,userInfo: freezed == userInfo ? _self.userInfo : userInfo // ignore: cast_nullable_to_non_nullable
as ProductUserInfo?,isFavorited: freezed == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool?,isLiked: freezed == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductUserInfoCopyWith<$Res>? get userInfo {
    if (_self.userInfo == null) {
    return null;
  }

  return $ProductUserInfoCopyWith<$Res>(_self.userInfo!, (value) {
    return _then(_self.copyWith(userInfo: value));
  });
}
}


/// @nodoc
mixin _$ProductImage {

 String? get image;
/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductImageCopyWith<ProductImage> get copyWith => _$ProductImageCopyWithImpl<ProductImage>(this as ProductImage, _$identity);

  /// Serializes this ProductImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductImage&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'ProductImage(image: $image)';
}


}

/// @nodoc
abstract mixin class $ProductImageCopyWith<$Res>  {
  factory $ProductImageCopyWith(ProductImage value, $Res Function(ProductImage) _then) = _$ProductImageCopyWithImpl;
@useResult
$Res call({
 String? image
});




}
/// @nodoc
class _$ProductImageCopyWithImpl<$Res>
    implements $ProductImageCopyWith<$Res> {
  _$ProductImageCopyWithImpl(this._self, this._then);

  final ProductImage _self;
  final $Res Function(ProductImage) _then;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = freezed,}) {
  return _then(_self.copyWith(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductImage].
extension ProductImagePatterns on ProductImage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductImage value)  $default,){
final _that = this;
switch (_that) {
case _ProductImage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductImage value)?  $default,){
final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that.image);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? image)  $default,) {final _that = this;
switch (_that) {
case _ProductImage():
return $default(_that.image);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? image)?  $default,) {final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductImage implements ProductImage {
  const _ProductImage({this.image});
  factory _ProductImage.fromJson(Map<String, dynamic> json) => _$ProductImageFromJson(json);

@override final  String? image;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductImageCopyWith<_ProductImage> get copyWith => __$ProductImageCopyWithImpl<_ProductImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductImage&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'ProductImage(image: $image)';
}


}

/// @nodoc
abstract mixin class _$ProductImageCopyWith<$Res> implements $ProductImageCopyWith<$Res> {
  factory _$ProductImageCopyWith(_ProductImage value, $Res Function(_ProductImage) _then) = __$ProductImageCopyWithImpl;
@override @useResult
$Res call({
 String? image
});




}
/// @nodoc
class __$ProductImageCopyWithImpl<$Res>
    implements _$ProductImageCopyWith<$Res> {
  __$ProductImageCopyWithImpl(this._self, this._then);

  final _ProductImage _self;
  final $Res Function(_ProductImage) _then;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = freezed,}) {
  return _then(_ProductImage(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductAttribute {

@JsonKey(name: 'option') String? get categoryAttribute; String? get value;
/// Create a copy of ProductAttribute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductAttributeCopyWith<ProductAttribute> get copyWith => _$ProductAttributeCopyWithImpl<ProductAttribute>(this as ProductAttribute, _$identity);

  /// Serializes this ProductAttribute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductAttribute&&(identical(other.categoryAttribute, categoryAttribute) || other.categoryAttribute == categoryAttribute)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryAttribute,value);

@override
String toString() {
  return 'ProductAttribute(categoryAttribute: $categoryAttribute, value: $value)';
}


}

/// @nodoc
abstract mixin class $ProductAttributeCopyWith<$Res>  {
  factory $ProductAttributeCopyWith(ProductAttribute value, $Res Function(ProductAttribute) _then) = _$ProductAttributeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'option') String? categoryAttribute, String? value
});




}
/// @nodoc
class _$ProductAttributeCopyWithImpl<$Res>
    implements $ProductAttributeCopyWith<$Res> {
  _$ProductAttributeCopyWithImpl(this._self, this._then);

  final ProductAttribute _self;
  final $Res Function(ProductAttribute) _then;

/// Create a copy of ProductAttribute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryAttribute = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
categoryAttribute: freezed == categoryAttribute ? _self.categoryAttribute : categoryAttribute // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductAttribute].
extension ProductAttributePatterns on ProductAttribute {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductAttribute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductAttribute() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductAttribute value)  $default,){
final _that = this;
switch (_that) {
case _ProductAttribute():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductAttribute value)?  $default,){
final _that = this;
switch (_that) {
case _ProductAttribute() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'option')  String? categoryAttribute,  String? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductAttribute() when $default != null:
return $default(_that.categoryAttribute,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'option')  String? categoryAttribute,  String? value)  $default,) {final _that = this;
switch (_that) {
case _ProductAttribute():
return $default(_that.categoryAttribute,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'option')  String? categoryAttribute,  String? value)?  $default,) {final _that = this;
switch (_that) {
case _ProductAttribute() when $default != null:
return $default(_that.categoryAttribute,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductAttribute implements ProductAttribute {
  const _ProductAttribute({@JsonKey(name: 'option') this.categoryAttribute, this.value});
  factory _ProductAttribute.fromJson(Map<String, dynamic> json) => _$ProductAttributeFromJson(json);

@override@JsonKey(name: 'option') final  String? categoryAttribute;
@override final  String? value;

/// Create a copy of ProductAttribute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductAttributeCopyWith<_ProductAttribute> get copyWith => __$ProductAttributeCopyWithImpl<_ProductAttribute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductAttributeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductAttribute&&(identical(other.categoryAttribute, categoryAttribute) || other.categoryAttribute == categoryAttribute)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryAttribute,value);

@override
String toString() {
  return 'ProductAttribute(categoryAttribute: $categoryAttribute, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ProductAttributeCopyWith<$Res> implements $ProductAttributeCopyWith<$Res> {
  factory _$ProductAttributeCopyWith(_ProductAttribute value, $Res Function(_ProductAttribute) _then) = __$ProductAttributeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'option') String? categoryAttribute, String? value
});




}
/// @nodoc
class __$ProductAttributeCopyWithImpl<$Res>
    implements _$ProductAttributeCopyWith<$Res> {
  __$ProductAttributeCopyWithImpl(this._self, this._then);

  final _ProductAttribute _self;
  final $Res Function(_ProductAttribute) _then;

/// Create a copy of ProductAttribute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryAttribute = freezed,Object? value = freezed,}) {
  return _then(_ProductAttribute(
categoryAttribute: freezed == categoryAttribute ? _self.categoryAttribute : categoryAttribute // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductUserInfo {

@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'app_user_id') String? get appUserId;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'mobile_no') String? get mobileNo; String? get country;
/// Create a copy of ProductUserInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductUserInfoCopyWith<ProductUserInfo> get copyWith => _$ProductUserInfoCopyWithImpl<ProductUserInfo>(this as ProductUserInfo, _$identity);

  /// Serializes this ProductUserInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductUserInfo&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.appUserId, appUserId) || other.appUserId == appUserId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,appUserId,firstName,lastName,mobileNo,country);

@override
String toString() {
  return 'ProductUserInfo(userId: $userId, appUserId: $appUserId, firstName: $firstName, lastName: $lastName, mobileNo: $mobileNo, country: $country)';
}


}

/// @nodoc
abstract mixin class $ProductUserInfoCopyWith<$Res>  {
  factory $ProductUserInfoCopyWith(ProductUserInfo value, $Res Function(ProductUserInfo) _then) = _$ProductUserInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'app_user_id') String? appUserId,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? country
});




}
/// @nodoc
class _$ProductUserInfoCopyWithImpl<$Res>
    implements $ProductUserInfoCopyWith<$Res> {
  _$ProductUserInfoCopyWithImpl(this._self, this._then);

  final ProductUserInfo _self;
  final $Res Function(ProductUserInfo) _then;

/// Create a copy of ProductUserInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? appUserId = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? country = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,appUserId: freezed == appUserId ? _self.appUserId : appUserId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductUserInfo].
extension ProductUserInfoPatterns on ProductUserInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductUserInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductUserInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductUserInfo value)  $default,){
final _that = this;
switch (_that) {
case _ProductUserInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductUserInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ProductUserInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'app_user_id')  String? appUserId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductUserInfo() when $default != null:
return $default(_that.userId,_that.appUserId,_that.firstName,_that.lastName,_that.mobileNo,_that.country);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'app_user_id')  String? appUserId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? country)  $default,) {final _that = this;
switch (_that) {
case _ProductUserInfo():
return $default(_that.userId,_that.appUserId,_that.firstName,_that.lastName,_that.mobileNo,_that.country);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'app_user_id')  String? appUserId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? country)?  $default,) {final _that = this;
switch (_that) {
case _ProductUserInfo() when $default != null:
return $default(_that.userId,_that.appUserId,_that.firstName,_that.lastName,_that.mobileNo,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductUserInfo implements ProductUserInfo {
  const _ProductUserInfo({@JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'app_user_id') this.appUserId, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'mobile_no') this.mobileNo, this.country});
  factory _ProductUserInfo.fromJson(Map<String, dynamic> json) => _$ProductUserInfoFromJson(json);

@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'app_user_id') final  String? appUserId;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override final  String? country;

/// Create a copy of ProductUserInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductUserInfoCopyWith<_ProductUserInfo> get copyWith => __$ProductUserInfoCopyWithImpl<_ProductUserInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductUserInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductUserInfo&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.appUserId, appUserId) || other.appUserId == appUserId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,appUserId,firstName,lastName,mobileNo,country);

@override
String toString() {
  return 'ProductUserInfo(userId: $userId, appUserId: $appUserId, firstName: $firstName, lastName: $lastName, mobileNo: $mobileNo, country: $country)';
}


}

/// @nodoc
abstract mixin class _$ProductUserInfoCopyWith<$Res> implements $ProductUserInfoCopyWith<$Res> {
  factory _$ProductUserInfoCopyWith(_ProductUserInfo value, $Res Function(_ProductUserInfo) _then) = __$ProductUserInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'app_user_id') String? appUserId,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? country
});




}
/// @nodoc
class __$ProductUserInfoCopyWithImpl<$Res>
    implements _$ProductUserInfoCopyWith<$Res> {
  __$ProductUserInfoCopyWithImpl(this._self, this._then);

  final _ProductUserInfo _self;
  final $Res Function(_ProductUserInfo) _then;

/// Create a copy of ProductUserInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? appUserId = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? country = freezed,}) {
  return _then(_ProductUserInfo(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,appUserId: freezed == appUserId ? _self.appUserId : appUserId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
