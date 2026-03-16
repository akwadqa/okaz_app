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
  String? get title;
  String? get name;
  @JsonKey(name: 'title_ar')
  String? get titleAr;
  String? get description;
  @JsonKey(name: 'description_ar')
  String? get descriptionAr;
  num? get price;
  String? get currency;
  String? get city;
  String? get latitude;
  String? get longitude;
  String? get condition;
  @JsonKey(name: 'post_type')
  String? get postType;
  String? get category;
  String? get image;
  String? get subcategory;
  List<PostImage>? get images;
  List<PostAttribute>? get attributes;
  @JsonKey(name: 'is_featured')
  int? get isFeatured;
  @JsonKey(name: 'parent_comments')
  List<Comment>? get parentComments;
  int? get likes;
  int? get comments;
  int? get views;
  int? get reports;
  @JsonKey(name: 'created_on')
  String? get createdOn;
  @JsonKey(name: 'user_info')
  PostOwner? get userInfo;
  @JsonKey(name: 'user_is_owner')
  bool? get userIsOwner;
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited;
  @JsonKey(name: 'is_liked')
  bool? get isLiked;

  /// Create a copy of ProductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith =>
      _$ProductDetailsModelCopyWithImpl<ProductDetailsModel>(
          this as ProductDetailsModel, _$identity);

  /// Serializes this ProductDetailsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductDetailsModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.titleAr, titleAr) || other.titleAr == titleAr) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionAr, descriptionAr) ||
                other.descriptionAr == descriptionAr) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            const DeepCollectionEquality()
                .equals(other.parentComments, parentComments) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.reports, reports) || other.reports == reports) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.userIsOwner, userIsOwner) ||
                other.userIsOwner == userIsOwner) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        name,
        titleAr,
        description,
        descriptionAr,
        price,
        currency,
        city,
        latitude,
        longitude,
        condition,
        postType,
        category,
        image,
        subcategory,
        const DeepCollectionEquality().hash(images),
        const DeepCollectionEquality().hash(attributes),
        isFeatured,
        const DeepCollectionEquality().hash(parentComments),
        likes,
        comments,
        views,
        reports,
        createdOn,
        userInfo,
        userIsOwner,
        isFavorited,
        isLiked
      ]);

  @override
  String toString() {
    return 'ProductDetailsModel(title: $title, name: $name, titleAr: $titleAr, description: $description, descriptionAr: $descriptionAr, price: $price, currency: $currency, city: $city, latitude: $latitude, longitude: $longitude, condition: $condition, postType: $postType, category: $category, image: $image, subcategory: $subcategory, images: $images, attributes: $attributes, isFeatured: $isFeatured, parentComments: $parentComments, likes: $likes, comments: $comments, views: $views, reports: $reports, createdOn: $createdOn, userInfo: $userInfo, userIsOwner: $userIsOwner, isFavorited: $isFavorited, isLiked: $isLiked)';
  }
}

/// @nodoc
abstract mixin class $ProductDetailsModelCopyWith<$Res> {
  factory $ProductDetailsModelCopyWith(
          ProductDetailsModel value, $Res Function(ProductDetailsModel) _then) =
      _$ProductDetailsModelCopyWithImpl;
  @useResult
  $Res call(
      {String? title,
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
      @JsonKey(name: 'is_liked') bool? isLiked});

  $PostOwnerCopyWith<$Res>? get userInfo;
}

/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._self, this._then);

  final ProductDetailsModel _self;
  final $Res Function(ProductDetailsModel) _then;

  /// Create a copy of ProductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? name = freezed,
    Object? titleAr = freezed,
    Object? description = freezed,
    Object? descriptionAr = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? city = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? condition = freezed,
    Object? postType = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? subcategory = freezed,
    Object? images = freezed,
    Object? attributes = freezed,
    Object? isFeatured = freezed,
    Object? parentComments = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? views = freezed,
    Object? reports = freezed,
    Object? createdOn = freezed,
    Object? userInfo = freezed,
    Object? userIsOwner = freezed,
    Object? isFavorited = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_self.copyWith(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      titleAr: freezed == titleAr
          ? _self.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionAr: freezed == descriptionAr
          ? _self.descriptionAr
          : descriptionAr // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      postType: freezed == postType
          ? _self.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      subcategory: freezed == subcategory
          ? _self.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PostImage>?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<PostAttribute>?,
      isFeatured: freezed == isFeatured
          ? _self.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as int?,
      parentComments: freezed == parentComments
          ? _self.parentComments
          : parentComments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      likes: freezed == likes
          ? _self.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _self.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _self.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      reports: freezed == reports
          ? _self.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as int?,
      createdOn: freezed == createdOn
          ? _self.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String?,
      userInfo: freezed == userInfo
          ? _self.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as PostOwner?,
      userIsOwner: freezed == userIsOwner
          ? _self.userIsOwner
          : userIsOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorited: freezed == isFavorited
          ? _self.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _self.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ProductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostOwnerCopyWith<$Res>? get userInfo {
    if (_self.userInfo == null) {
      return null;
    }

    return $PostOwnerCopyWith<$Res>(_self.userInfo!, (value) {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProductDetailsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductDetailsModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProductDetailsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDetailsModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProductDetailsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDetailsModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
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
            @JsonKey(name: 'is_liked') bool? isLiked)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductDetailsModel() when $default != null:
        return $default(
            _that.title,
            _that.name,
            _that.titleAr,
            _that.description,
            _that.descriptionAr,
            _that.price,
            _that.currency,
            _that.city,
            _that.latitude,
            _that.longitude,
            _that.condition,
            _that.postType,
            _that.category,
            _that.image,
            _that.subcategory,
            _that.images,
            _that.attributes,
            _that.isFeatured,
            _that.parentComments,
            _that.likes,
            _that.comments,
            _that.views,
            _that.reports,
            _that.createdOn,
            _that.userInfo,
            _that.userIsOwner,
            _that.isFavorited,
            _that.isLiked);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
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
            @JsonKey(name: 'is_liked') bool? isLiked)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDetailsModel():
        return $default(
            _that.title,
            _that.name,
            _that.titleAr,
            _that.description,
            _that.descriptionAr,
            _that.price,
            _that.currency,
            _that.city,
            _that.latitude,
            _that.longitude,
            _that.condition,
            _that.postType,
            _that.category,
            _that.image,
            _that.subcategory,
            _that.images,
            _that.attributes,
            _that.isFeatured,
            _that.parentComments,
            _that.likes,
            _that.comments,
            _that.views,
            _that.reports,
            _that.createdOn,
            _that.userInfo,
            _that.userIsOwner,
            _that.isFavorited,
            _that.isLiked);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
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
            @JsonKey(name: 'is_liked') bool? isLiked)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDetailsModel() when $default != null:
        return $default(
            _that.title,
            _that.name,
            _that.titleAr,
            _that.description,
            _that.descriptionAr,
            _that.price,
            _that.currency,
            _that.city,
            _that.latitude,
            _that.longitude,
            _that.condition,
            _that.postType,
            _that.category,
            _that.image,
            _that.subcategory,
            _that.images,
            _that.attributes,
            _that.isFeatured,
            _that.parentComments,
            _that.likes,
            _that.comments,
            _that.views,
            _that.reports,
            _that.createdOn,
            _that.userInfo,
            _that.userIsOwner,
            _that.isFavorited,
            _that.isLiked);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProductDetailsModel implements ProductDetailsModel {
  const _ProductDetailsModel(
      {this.title,
      this.name,
      @JsonKey(name: 'title_ar') this.titleAr,
      this.description,
      @JsonKey(name: 'description_ar') this.descriptionAr,
      this.price,
      this.currency,
      this.city,
      this.latitude,
      this.longitude,
      this.condition,
      @JsonKey(name: 'post_type') this.postType,
      this.category,
      this.image,
      this.subcategory,
      final List<PostImage>? images,
      final List<PostAttribute>? attributes,
      @JsonKey(name: 'is_featured') this.isFeatured,
      @JsonKey(name: 'parent_comments') final List<Comment>? parentComments,
      this.likes,
      this.comments,
      this.views,
      this.reports,
      @JsonKey(name: 'created_on') this.createdOn,
      @JsonKey(name: 'user_info') this.userInfo,
      @JsonKey(name: 'user_is_owner') this.userIsOwner,
      @JsonKey(name: 'is_favorited') this.isFavorited,
      @JsonKey(name: 'is_liked') this.isLiked})
      : _images = images,
        _attributes = attributes,
        _parentComments = parentComments;
  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);

  @override
  final String? title;
  @override
  final String? name;
  @override
  @JsonKey(name: 'title_ar')
  final String? titleAr;
  @override
  final String? description;
  @override
  @JsonKey(name: 'description_ar')
  final String? descriptionAr;
  @override
  final num? price;
  @override
  final String? currency;
  @override
  final String? city;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? condition;
  @override
  @JsonKey(name: 'post_type')
  final String? postType;
  @override
  final String? category;
  @override
  final String? image;
  @override
  final String? subcategory;
  final List<PostImage>? _images;
  @override
  List<PostImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostAttribute>? _attributes;
  @override
  List<PostAttribute>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_featured')
  final int? isFeatured;
  final List<Comment>? _parentComments;
  @override
  @JsonKey(name: 'parent_comments')
  List<Comment>? get parentComments {
    final value = _parentComments;
    if (value == null) return null;
    if (_parentComments is EqualUnmodifiableListView) return _parentComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? likes;
  @override
  final int? comments;
  @override
  final int? views;
  @override
  final int? reports;
  @override
  @JsonKey(name: 'created_on')
  final String? createdOn;
  @override
  @JsonKey(name: 'user_info')
  final PostOwner? userInfo;
  @override
  @JsonKey(name: 'user_is_owner')
  final bool? userIsOwner;
  @override
  @JsonKey(name: 'is_favorited')
  final bool? isFavorited;
  @override
  @JsonKey(name: 'is_liked')
  final bool? isLiked;

  /// Create a copy of ProductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductDetailsModelCopyWith<_ProductDetailsModel> get copyWith =>
      __$ProductDetailsModelCopyWithImpl<_ProductDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductDetailsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDetailsModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.titleAr, titleAr) || other.titleAr == titleAr) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionAr, descriptionAr) ||
                other.descriptionAr == descriptionAr) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            const DeepCollectionEquality()
                .equals(other._parentComments, _parentComments) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.reports, reports) || other.reports == reports) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.userIsOwner, userIsOwner) ||
                other.userIsOwner == userIsOwner) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        name,
        titleAr,
        description,
        descriptionAr,
        price,
        currency,
        city,
        latitude,
        longitude,
        condition,
        postType,
        category,
        image,
        subcategory,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_attributes),
        isFeatured,
        const DeepCollectionEquality().hash(_parentComments),
        likes,
        comments,
        views,
        reports,
        createdOn,
        userInfo,
        userIsOwner,
        isFavorited,
        isLiked
      ]);

  @override
  String toString() {
    return 'ProductDetailsModel(title: $title, name: $name, titleAr: $titleAr, description: $description, descriptionAr: $descriptionAr, price: $price, currency: $currency, city: $city, latitude: $latitude, longitude: $longitude, condition: $condition, postType: $postType, category: $category, image: $image, subcategory: $subcategory, images: $images, attributes: $attributes, isFeatured: $isFeatured, parentComments: $parentComments, likes: $likes, comments: $comments, views: $views, reports: $reports, createdOn: $createdOn, userInfo: $userInfo, userIsOwner: $userIsOwner, isFavorited: $isFavorited, isLiked: $isLiked)';
  }
}

/// @nodoc
abstract mixin class _$ProductDetailsModelCopyWith<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  factory _$ProductDetailsModelCopyWith(_ProductDetailsModel value,
          $Res Function(_ProductDetailsModel) _then) =
      __$ProductDetailsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? title,
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
      @JsonKey(name: 'is_liked') bool? isLiked});

  @override
  $PostOwnerCopyWith<$Res>? get userInfo;
}

/// @nodoc
class __$ProductDetailsModelCopyWithImpl<$Res>
    implements _$ProductDetailsModelCopyWith<$Res> {
  __$ProductDetailsModelCopyWithImpl(this._self, this._then);

  final _ProductDetailsModel _self;
  final $Res Function(_ProductDetailsModel) _then;

  /// Create a copy of ProductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = freezed,
    Object? name = freezed,
    Object? titleAr = freezed,
    Object? description = freezed,
    Object? descriptionAr = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? city = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? condition = freezed,
    Object? postType = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? subcategory = freezed,
    Object? images = freezed,
    Object? attributes = freezed,
    Object? isFeatured = freezed,
    Object? parentComments = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? views = freezed,
    Object? reports = freezed,
    Object? createdOn = freezed,
    Object? userInfo = freezed,
    Object? userIsOwner = freezed,
    Object? isFavorited = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_ProductDetailsModel(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      titleAr: freezed == titleAr
          ? _self.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionAr: freezed == descriptionAr
          ? _self.descriptionAr
          : descriptionAr // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      postType: freezed == postType
          ? _self.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      subcategory: freezed == subcategory
          ? _self.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PostImage>?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<PostAttribute>?,
      isFeatured: freezed == isFeatured
          ? _self.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as int?,
      parentComments: freezed == parentComments
          ? _self._parentComments
          : parentComments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      likes: freezed == likes
          ? _self.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _self.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _self.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      reports: freezed == reports
          ? _self.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as int?,
      createdOn: freezed == createdOn
          ? _self.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String?,
      userInfo: freezed == userInfo
          ? _self.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as PostOwner?,
      userIsOwner: freezed == userIsOwner
          ? _self.userIsOwner
          : userIsOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorited: freezed == isFavorited
          ? _self.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _self.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ProductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostOwnerCopyWith<$Res>? get userInfo {
    if (_self.userInfo == null) {
      return null;
    }

    return $PostOwnerCopyWith<$Res>(_self.userInfo!, (value) {
      return _then(_self.copyWith(userInfo: value));
    });
  }
}

/// @nodoc
mixin _$PostImage {
  String? get image;

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostImageCopyWith<PostImage> get copyWith =>
      _$PostImageCopyWithImpl<PostImage>(this as PostImage, _$identity);

  /// Serializes this PostImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostImage &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  @override
  String toString() {
    return 'PostImage(image: $image)';
  }
}

/// @nodoc
abstract mixin class $PostImageCopyWith<$Res> {
  factory $PostImageCopyWith(PostImage value, $Res Function(PostImage) _then) =
      _$PostImageCopyWithImpl;
  @useResult
  $Res call({String? image});
}

/// @nodoc
class _$PostImageCopyWithImpl<$Res> implements $PostImageCopyWith<$Res> {
  _$PostImageCopyWithImpl(this._self, this._then);

  final PostImage _self;
  final $Res Function(PostImage) _then;

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_self.copyWith(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PostImage].
extension PostImagePatterns on PostImage {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostImage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostImage() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostImage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostImage():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostImage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostImage() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? image)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostImage() when $default != null:
        return $default(_that.image);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? image) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostImage():
        return $default(_that.image);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? image)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostImage() when $default != null:
        return $default(_that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostImage implements PostImage {
  const _PostImage({this.image});
  factory _PostImage.fromJson(Map<String, dynamic> json) =>
      _$PostImageFromJson(json);

  @override
  final String? image;

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostImageCopyWith<_PostImage> get copyWith =>
      __$PostImageCopyWithImpl<_PostImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostImage &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  @override
  String toString() {
    return 'PostImage(image: $image)';
  }
}

/// @nodoc
abstract mixin class _$PostImageCopyWith<$Res>
    implements $PostImageCopyWith<$Res> {
  factory _$PostImageCopyWith(
          _PostImage value, $Res Function(_PostImage) _then) =
      __$PostImageCopyWithImpl;
  @override
  @useResult
  $Res call({String? image});
}

/// @nodoc
class __$PostImageCopyWithImpl<$Res> implements _$PostImageCopyWith<$Res> {
  __$PostImageCopyWithImpl(this._self, this._then);

  final _PostImage _self;
  final $Res Function(_PostImage) _then;

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_PostImage(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PostAttribute {
  String? get option;
  String? get value;

  /// Create a copy of PostAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostAttributeCopyWith<PostAttribute> get copyWith =>
      _$PostAttributeCopyWithImpl<PostAttribute>(
          this as PostAttribute, _$identity);

  /// Serializes this PostAttribute to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostAttribute &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, option, value);

  @override
  String toString() {
    return 'PostAttribute(option: $option, value: $value)';
  }
}

/// @nodoc
abstract mixin class $PostAttributeCopyWith<$Res> {
  factory $PostAttributeCopyWith(
          PostAttribute value, $Res Function(PostAttribute) _then) =
      _$PostAttributeCopyWithImpl;
  @useResult
  $Res call({String? option, String? value});
}

/// @nodoc
class _$PostAttributeCopyWithImpl<$Res>
    implements $PostAttributeCopyWith<$Res> {
  _$PostAttributeCopyWithImpl(this._self, this._then);

  final PostAttribute _self;
  final $Res Function(PostAttribute) _then;

  /// Create a copy of PostAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = freezed,
    Object? value = freezed,
  }) {
    return _then(_self.copyWith(
      option: freezed == option
          ? _self.option
          : option // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PostAttribute].
extension PostAttributePatterns on PostAttribute {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostAttribute value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostAttribute() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostAttribute value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostAttribute():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostAttribute value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostAttribute() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? option, String? value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostAttribute() when $default != null:
        return $default(_that.option, _that.value);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? option, String? value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostAttribute():
        return $default(_that.option, _that.value);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? option, String? value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostAttribute() when $default != null:
        return $default(_that.option, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostAttribute implements PostAttribute {
  const _PostAttribute({this.option, this.value});
  factory _PostAttribute.fromJson(Map<String, dynamic> json) =>
      _$PostAttributeFromJson(json);

  @override
  final String? option;
  @override
  final String? value;

  /// Create a copy of PostAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostAttributeCopyWith<_PostAttribute> get copyWith =>
      __$PostAttributeCopyWithImpl<_PostAttribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostAttributeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostAttribute &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, option, value);

  @override
  String toString() {
    return 'PostAttribute(option: $option, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$PostAttributeCopyWith<$Res>
    implements $PostAttributeCopyWith<$Res> {
  factory _$PostAttributeCopyWith(
          _PostAttribute value, $Res Function(_PostAttribute) _then) =
      __$PostAttributeCopyWithImpl;
  @override
  @useResult
  $Res call({String? option, String? value});
}

/// @nodoc
class __$PostAttributeCopyWithImpl<$Res>
    implements _$PostAttributeCopyWith<$Res> {
  __$PostAttributeCopyWithImpl(this._self, this._then);

  final _PostAttribute _self;
  final $Res Function(_PostAttribute) _then;

  /// Create a copy of PostAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? option = freezed,
    Object? value = freezed,
  }) {
    return _then(_PostAttribute(
      option: freezed == option
          ? _self.option
          : option // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Comment {
  String? get name;
  String? get content;
  @JsonKey(name: 'comment_by')
  CommenterInfo? get commentBy;
  String? get timestamp;
  int? get edited;
  @JsonKey(name: 'child_comments')
  List<Comment>? get childComments;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommentCopyWith<Comment> get copyWith =>
      _$CommentCopyWithImpl<Comment>(this as Comment, _$identity);

  /// Serializes this Comment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Comment &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.commentBy, commentBy) ||
                other.commentBy == commentBy) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.edited, edited) || other.edited == edited) &&
            const DeepCollectionEquality()
                .equals(other.childComments, childComments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, content, commentBy,
      timestamp, edited, const DeepCollectionEquality().hash(childComments));

  @override
  String toString() {
    return 'Comment(name: $name, content: $content, commentBy: $commentBy, timestamp: $timestamp, edited: $edited, childComments: $childComments)';
  }
}

/// @nodoc
abstract mixin class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) _then) =
      _$CommentCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? content,
      @JsonKey(name: 'comment_by') CommenterInfo? commentBy,
      String? timestamp,
      int? edited,
      @JsonKey(name: 'child_comments') List<Comment>? childComments});

  $CommenterInfoCopyWith<$Res>? get commentBy;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._self, this._then);

  final Comment _self;
  final $Res Function(Comment) _then;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
    Object? commentBy = freezed,
    Object? timestamp = freezed,
    Object? edited = freezed,
    Object? childComments = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      commentBy: freezed == commentBy
          ? _self.commentBy
          : commentBy // ignore: cast_nullable_to_non_nullable
              as CommenterInfo?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      edited: freezed == edited
          ? _self.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as int?,
      childComments: freezed == childComments
          ? _self.childComments
          : childComments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ));
  }

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommenterInfoCopyWith<$Res>? get commentBy {
    if (_self.commentBy == null) {
      return null;
    }

    return $CommenterInfoCopyWith<$Res>(_self.commentBy!, (value) {
      return _then(_self.copyWith(commentBy: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Comment].
extension CommentPatterns on Comment {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Comment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Comment() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Comment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Comment():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Comment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Comment() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? name,
            String? content,
            @JsonKey(name: 'comment_by') CommenterInfo? commentBy,
            String? timestamp,
            int? edited,
            @JsonKey(name: 'child_comments') List<Comment>? childComments)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Comment() when $default != null:
        return $default(_that.name, _that.content, _that.commentBy,
            _that.timestamp, _that.edited, _that.childComments);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? name,
            String? content,
            @JsonKey(name: 'comment_by') CommenterInfo? commentBy,
            String? timestamp,
            int? edited,
            @JsonKey(name: 'child_comments') List<Comment>? childComments)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Comment():
        return $default(_that.name, _that.content, _that.commentBy,
            _that.timestamp, _that.edited, _that.childComments);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? name,
            String? content,
            @JsonKey(name: 'comment_by') CommenterInfo? commentBy,
            String? timestamp,
            int? edited,
            @JsonKey(name: 'child_comments') List<Comment>? childComments)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Comment() when $default != null:
        return $default(_that.name, _that.content, _that.commentBy,
            _that.timestamp, _that.edited, _that.childComments);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Comment implements Comment {
  const _Comment(
      {this.name,
      this.content,
      @JsonKey(name: 'comment_by') this.commentBy,
      this.timestamp,
      this.edited,
      @JsonKey(name: 'child_comments') final List<Comment>? childComments})
      : _childComments = childComments;
  factory _Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  @override
  final String? name;
  @override
  final String? content;
  @override
  @JsonKey(name: 'comment_by')
  final CommenterInfo? commentBy;
  @override
  final String? timestamp;
  @override
  final int? edited;
  final List<Comment>? _childComments;
  @override
  @JsonKey(name: 'child_comments')
  List<Comment>? get childComments {
    final value = _childComments;
    if (value == null) return null;
    if (_childComments is EqualUnmodifiableListView) return _childComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CommentCopyWith<_Comment> get copyWith =>
      __$CommentCopyWithImpl<_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CommentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Comment &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.commentBy, commentBy) ||
                other.commentBy == commentBy) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.edited, edited) || other.edited == edited) &&
            const DeepCollectionEquality()
                .equals(other._childComments, _childComments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, content, commentBy,
      timestamp, edited, const DeepCollectionEquality().hash(_childComments));

  @override
  String toString() {
    return 'Comment(name: $name, content: $content, commentBy: $commentBy, timestamp: $timestamp, edited: $edited, childComments: $childComments)';
  }
}

/// @nodoc
abstract mixin class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) _then) =
      __$CommentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? content,
      @JsonKey(name: 'comment_by') CommenterInfo? commentBy,
      String? timestamp,
      int? edited,
      @JsonKey(name: 'child_comments') List<Comment>? childComments});

  @override
  $CommenterInfoCopyWith<$Res>? get commentBy;
}

/// @nodoc
class __$CommentCopyWithImpl<$Res> implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(this._self, this._then);

  final _Comment _self;
  final $Res Function(_Comment) _then;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
    Object? commentBy = freezed,
    Object? timestamp = freezed,
    Object? edited = freezed,
    Object? childComments = freezed,
  }) {
    return _then(_Comment(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      commentBy: freezed == commentBy
          ? _self.commentBy
          : commentBy // ignore: cast_nullable_to_non_nullable
              as CommenterInfo?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      edited: freezed == edited
          ? _self.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as int?,
      childComments: freezed == childComments
          ? _self._childComments
          : childComments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ));
  }

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommenterInfoCopyWith<$Res>? get commentBy {
    if (_self.commentBy == null) {
      return null;
    }

    return $CommenterInfoCopyWith<$Res>(_self.commentBy!, (value) {
      return _then(_self.copyWith(commentBy: value));
    });
  }
}

/// @nodoc
mixin _$CommenterInfo {
  @JsonKey(name: 'app_user_id')
  String? get appUserId;
  @JsonKey(name: 'first_name')
  String? get firstName;
  @JsonKey(name: 'user_is_owner')
  bool? get userIsOwner;
  String? get image;

  /// Create a copy of CommenterInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommenterInfoCopyWith<CommenterInfo> get copyWith =>
      _$CommenterInfoCopyWithImpl<CommenterInfo>(
          this as CommenterInfo, _$identity);

  /// Serializes this CommenterInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommenterInfo &&
            (identical(other.appUserId, appUserId) ||
                other.appUserId == appUserId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.userIsOwner, userIsOwner) ||
                other.userIsOwner == userIsOwner) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appUserId, firstName, userIsOwner, image);

  @override
  String toString() {
    return 'CommenterInfo(appUserId: $appUserId, firstName: $firstName, userIsOwner: $userIsOwner, image: $image)';
  }
}

/// @nodoc
abstract mixin class $CommenterInfoCopyWith<$Res> {
  factory $CommenterInfoCopyWith(
          CommenterInfo value, $Res Function(CommenterInfo) _then) =
      _$CommenterInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'app_user_id') String? appUserId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'user_is_owner') bool? userIsOwner,
      String? image});
}

/// @nodoc
class _$CommenterInfoCopyWithImpl<$Res>
    implements $CommenterInfoCopyWith<$Res> {
  _$CommenterInfoCopyWithImpl(this._self, this._then);

  final CommenterInfo _self;
  final $Res Function(CommenterInfo) _then;

  /// Create a copy of CommenterInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUserId = freezed,
    Object? firstName = freezed,
    Object? userIsOwner = freezed,
    Object? image = freezed,
  }) {
    return _then(_self.copyWith(
      appUserId: freezed == appUserId
          ? _self.appUserId
          : appUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      userIsOwner: freezed == userIsOwner
          ? _self.userIsOwner
          : userIsOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CommenterInfo].
extension CommenterInfoPatterns on CommenterInfo {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CommenterInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CommenterInfo() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CommenterInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommenterInfo():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CommenterInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommenterInfo() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'app_user_id') String? appUserId,
            @JsonKey(name: 'first_name') String? firstName,
            @JsonKey(name: 'user_is_owner') bool? userIsOwner,
            String? image)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CommenterInfo() when $default != null:
        return $default(
            _that.appUserId, _that.firstName, _that.userIsOwner, _that.image);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'app_user_id') String? appUserId,
            @JsonKey(name: 'first_name') String? firstName,
            @JsonKey(name: 'user_is_owner') bool? userIsOwner,
            String? image)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommenterInfo():
        return $default(
            _that.appUserId, _that.firstName, _that.userIsOwner, _that.image);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'app_user_id') String? appUserId,
            @JsonKey(name: 'first_name') String? firstName,
            @JsonKey(name: 'user_is_owner') bool? userIsOwner,
            String? image)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommenterInfo() when $default != null:
        return $default(
            _that.appUserId, _that.firstName, _that.userIsOwner, _that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CommenterInfo implements CommenterInfo {
  const _CommenterInfo(
      {@JsonKey(name: 'app_user_id') this.appUserId,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'user_is_owner') this.userIsOwner,
      this.image});
  factory _CommenterInfo.fromJson(Map<String, dynamic> json) =>
      _$CommenterInfoFromJson(json);

  @override
  @JsonKey(name: 'app_user_id')
  final String? appUserId;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'user_is_owner')
  final bool? userIsOwner;
  @override
  final String? image;

  /// Create a copy of CommenterInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CommenterInfoCopyWith<_CommenterInfo> get copyWith =>
      __$CommenterInfoCopyWithImpl<_CommenterInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CommenterInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommenterInfo &&
            (identical(other.appUserId, appUserId) ||
                other.appUserId == appUserId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.userIsOwner, userIsOwner) ||
                other.userIsOwner == userIsOwner) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appUserId, firstName, userIsOwner, image);

  @override
  String toString() {
    return 'CommenterInfo(appUserId: $appUserId, firstName: $firstName, userIsOwner: $userIsOwner, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$CommenterInfoCopyWith<$Res>
    implements $CommenterInfoCopyWith<$Res> {
  factory _$CommenterInfoCopyWith(
          _CommenterInfo value, $Res Function(_CommenterInfo) _then) =
      __$CommenterInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'app_user_id') String? appUserId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'user_is_owner') bool? userIsOwner,
      String? image});
}

/// @nodoc
class __$CommenterInfoCopyWithImpl<$Res>
    implements _$CommenterInfoCopyWith<$Res> {
  __$CommenterInfoCopyWithImpl(this._self, this._then);

  final _CommenterInfo _self;
  final $Res Function(_CommenterInfo) _then;

  /// Create a copy of CommenterInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appUserId = freezed,
    Object? firstName = freezed,
    Object? userIsOwner = freezed,
    Object? image = freezed,
  }) {
    return _then(_CommenterInfo(
      appUserId: freezed == appUserId
          ? _self.appUserId
          : appUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      userIsOwner: freezed == userIsOwner
          ? _self.userIsOwner
          : userIsOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PostOwner {
  @JsonKey(name: 'post_owner')
  String? get postOwnerEmail;
  @JsonKey(name: 'owner_app_id')
  String? get ownerAppId;
  @JsonKey(name: 'first_name')
  String? get firstName;
  @JsonKey(name: 'last_name')
  String? get lastName;
  @JsonKey(name: 'mobile_no')
  String? get mobileNo;
  String? get country;

  /// Create a copy of PostOwner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostOwnerCopyWith<PostOwner> get copyWith =>
      _$PostOwnerCopyWithImpl<PostOwner>(this as PostOwner, _$identity);

  /// Serializes this PostOwner to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostOwner &&
            (identical(other.postOwnerEmail, postOwnerEmail) ||
                other.postOwnerEmail == postOwnerEmail) &&
            (identical(other.ownerAppId, ownerAppId) ||
                other.ownerAppId == ownerAppId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postOwnerEmail, ownerAppId,
      firstName, lastName, mobileNo, country);

  @override
  String toString() {
    return 'PostOwner(postOwnerEmail: $postOwnerEmail, ownerAppId: $ownerAppId, firstName: $firstName, lastName: $lastName, mobileNo: $mobileNo, country: $country)';
  }
}

/// @nodoc
abstract mixin class $PostOwnerCopyWith<$Res> {
  factory $PostOwnerCopyWith(PostOwner value, $Res Function(PostOwner) _then) =
      _$PostOwnerCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'post_owner') String? postOwnerEmail,
      @JsonKey(name: 'owner_app_id') String? ownerAppId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      String? country});
}

/// @nodoc
class _$PostOwnerCopyWithImpl<$Res> implements $PostOwnerCopyWith<$Res> {
  _$PostOwnerCopyWithImpl(this._self, this._then);

  final PostOwner _self;
  final $Res Function(PostOwner) _then;

  /// Create a copy of PostOwner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postOwnerEmail = freezed,
    Object? ownerAppId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? mobileNo = freezed,
    Object? country = freezed,
  }) {
    return _then(_self.copyWith(
      postOwnerEmail: freezed == postOwnerEmail
          ? _self.postOwnerEmail
          : postOwnerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerAppId: freezed == ownerAppId
          ? _self.ownerAppId
          : ownerAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _self.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PostOwner].
extension PostOwnerPatterns on PostOwner {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostOwner value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostOwner() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostOwner value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostOwner():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostOwner value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostOwner() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'post_owner') String? postOwnerEmail,
            @JsonKey(name: 'owner_app_id') String? ownerAppId,
            @JsonKey(name: 'first_name') String? firstName,
            @JsonKey(name: 'last_name') String? lastName,
            @JsonKey(name: 'mobile_no') String? mobileNo,
            String? country)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostOwner() when $default != null:
        return $default(_that.postOwnerEmail, _that.ownerAppId, _that.firstName,
            _that.lastName, _that.mobileNo, _that.country);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'post_owner') String? postOwnerEmail,
            @JsonKey(name: 'owner_app_id') String? ownerAppId,
            @JsonKey(name: 'first_name') String? firstName,
            @JsonKey(name: 'last_name') String? lastName,
            @JsonKey(name: 'mobile_no') String? mobileNo,
            String? country)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostOwner():
        return $default(_that.postOwnerEmail, _that.ownerAppId, _that.firstName,
            _that.lastName, _that.mobileNo, _that.country);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'post_owner') String? postOwnerEmail,
            @JsonKey(name: 'owner_app_id') String? ownerAppId,
            @JsonKey(name: 'first_name') String? firstName,
            @JsonKey(name: 'last_name') String? lastName,
            @JsonKey(name: 'mobile_no') String? mobileNo,
            String? country)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostOwner() when $default != null:
        return $default(_that.postOwnerEmail, _that.ownerAppId, _that.firstName,
            _that.lastName, _that.mobileNo, _that.country);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostOwner implements PostOwner {
  const _PostOwner(
      {@JsonKey(name: 'post_owner') this.postOwnerEmail,
      @JsonKey(name: 'owner_app_id') this.ownerAppId,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'mobile_no') this.mobileNo,
      this.country});
  factory _PostOwner.fromJson(Map<String, dynamic> json) =>
      _$PostOwnerFromJson(json);

  @override
  @JsonKey(name: 'post_owner')
  final String? postOwnerEmail;
  @override
  @JsonKey(name: 'owner_app_id')
  final String? ownerAppId;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'mobile_no')
  final String? mobileNo;
  @override
  final String? country;

  /// Create a copy of PostOwner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostOwnerCopyWith<_PostOwner> get copyWith =>
      __$PostOwnerCopyWithImpl<_PostOwner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostOwnerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostOwner &&
            (identical(other.postOwnerEmail, postOwnerEmail) ||
                other.postOwnerEmail == postOwnerEmail) &&
            (identical(other.ownerAppId, ownerAppId) ||
                other.ownerAppId == ownerAppId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postOwnerEmail, ownerAppId,
      firstName, lastName, mobileNo, country);

  @override
  String toString() {
    return 'PostOwner(postOwnerEmail: $postOwnerEmail, ownerAppId: $ownerAppId, firstName: $firstName, lastName: $lastName, mobileNo: $mobileNo, country: $country)';
  }
}

/// @nodoc
abstract mixin class _$PostOwnerCopyWith<$Res>
    implements $PostOwnerCopyWith<$Res> {
  factory _$PostOwnerCopyWith(
          _PostOwner value, $Res Function(_PostOwner) _then) =
      __$PostOwnerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'post_owner') String? postOwnerEmail,
      @JsonKey(name: 'owner_app_id') String? ownerAppId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      String? country});
}

/// @nodoc
class __$PostOwnerCopyWithImpl<$Res> implements _$PostOwnerCopyWith<$Res> {
  __$PostOwnerCopyWithImpl(this._self, this._then);

  final _PostOwner _self;
  final $Res Function(_PostOwner) _then;

  /// Create a copy of PostOwner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? postOwnerEmail = freezed,
    Object? ownerAppId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? mobileNo = freezed,
    Object? country = freezed,
  }) {
    return _then(_PostOwner(
      postOwnerEmail: freezed == postOwnerEmail
          ? _self.postOwnerEmail
          : postOwnerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerAppId: freezed == ownerAppId
          ? _self.ownerAppId
          : ownerAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _self.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
