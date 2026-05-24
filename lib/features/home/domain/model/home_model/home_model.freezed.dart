// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeModel {
  List<BannerModel?>? get banners;
  List<CategoryModel?>? get categories;
  @JsonKey(name: 'app_version')
  AppVersionModel? get appVersion;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeModelCopyWith<HomeModel> get copyWith =>
      _$HomeModelCopyWithImpl<HomeModel>(this as HomeModel, _$identity);

  /// Serializes this HomeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeModel &&
            const DeepCollectionEquality().equals(other.banners, banners) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(banners),
      const DeepCollectionEquality().hash(categories),
      appVersion);

  @override
  String toString() {
    return 'HomeModel(banners: $banners, categories: $categories, appVersion: $appVersion)';
  }
}

/// @nodoc
abstract mixin class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) _then) =
      _$HomeModelCopyWithImpl;
  @useResult
  $Res call(
      {List<BannerModel?>? banners,
      List<CategoryModel?>? categories,
      @JsonKey(name: 'app_version') AppVersionModel? appVersion});

  $AppVersionModelCopyWith<$Res>? get appVersion;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res> implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._self, this._then);

  final HomeModel _self;
  final $Res Function(HomeModel) _then;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
    Object? categories = freezed,
    Object? appVersion = freezed,
  }) {
    return _then(_self.copyWith(
      banners: freezed == banners
          ? _self.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel?>?,
      categories: freezed == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel?>?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersionModel?,
    ));
  }

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppVersionModelCopyWith<$Res>? get appVersion {
    if (_self.appVersion == null) {
      return null;
    }

    return $AppVersionModelCopyWith<$Res>(_self.appVersion!, (value) {
      return _then(_self.copyWith(appVersion: value));
    });
  }
}

/// Adds pattern-matching-related methods to [HomeModel].
extension HomeModelPatterns on HomeModel {
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
    TResult Function(_HomeModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeModel() when $default != null:
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
    TResult Function(_HomeModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeModel():
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
    TResult? Function(_HomeModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeModel() when $default != null:
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
            List<BannerModel?>? banners,
            List<CategoryModel?>? categories,
            @JsonKey(name: 'app_version') AppVersionModel? appVersion)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeModel() when $default != null:
        return $default(_that.banners, _that.categories, _that.appVersion);
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
            List<BannerModel?>? banners,
            List<CategoryModel?>? categories,
            @JsonKey(name: 'app_version') AppVersionModel? appVersion)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeModel():
        return $default(_that.banners, _that.categories, _that.appVersion);
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
            List<BannerModel?>? banners,
            List<CategoryModel?>? categories,
            @JsonKey(name: 'app_version') AppVersionModel? appVersion)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeModel() when $default != null:
        return $default(_that.banners, _that.categories, _that.appVersion);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _HomeModel implements HomeModel {
  const _HomeModel(
      {final List<BannerModel?>? banners,
      final List<CategoryModel?>? categories,
      @JsonKey(name: 'app_version') this.appVersion})
      : _banners = banners,
        _categories = categories;
  factory _HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  final List<BannerModel?>? _banners;
  @override
  List<BannerModel?>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryModel?>? _categories;
  @override
  List<CategoryModel?>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'app_version')
  final AppVersionModel? appVersion;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeModelCopyWith<_HomeModel> get copyWith =>
      __$HomeModelCopyWithImpl<_HomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HomeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeModel &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(_categories),
      appVersion);

  @override
  String toString() {
    return 'HomeModel(banners: $banners, categories: $categories, appVersion: $appVersion)';
  }
}

/// @nodoc
abstract mixin class _$HomeModelCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$HomeModelCopyWith(
          _HomeModel value, $Res Function(_HomeModel) _then) =
      __$HomeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<BannerModel?>? banners,
      List<CategoryModel?>? categories,
      @JsonKey(name: 'app_version') AppVersionModel? appVersion});

  @override
  $AppVersionModelCopyWith<$Res>? get appVersion;
}

/// @nodoc
class __$HomeModelCopyWithImpl<$Res> implements _$HomeModelCopyWith<$Res> {
  __$HomeModelCopyWithImpl(this._self, this._then);

  final _HomeModel _self;
  final $Res Function(_HomeModel) _then;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? banners = freezed,
    Object? categories = freezed,
    Object? appVersion = freezed,
  }) {
    return _then(_HomeModel(
      banners: freezed == banners
          ? _self._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel?>?,
      categories: freezed == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel?>?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersionModel?,
    ));
  }

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppVersionModelCopyWith<$Res>? get appVersion {
    if (_self.appVersion == null) {
      return null;
    }

    return $AppVersionModelCopyWith<$Res>(_self.appVersion!, (value) {
      return _then(_self.copyWith(appVersion: value));
    });
  }
}

/// @nodoc
mixin _$BannerModel {
  @JsonKey(name: 'banner_name')
  String? get bannerName;
  @JsonKey(name: 'banner_name_ar')
  String? get bannerNameAr;
  String? get image;
  String? get post;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BannerModelCopyWith<BannerModel> get copyWith =>
      _$BannerModelCopyWithImpl<BannerModel>(this as BannerModel, _$identity);

  /// Serializes this BannerModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BannerModel &&
            (identical(other.bannerName, bannerName) ||
                other.bannerName == bannerName) &&
            (identical(other.bannerNameAr, bannerNameAr) ||
                other.bannerNameAr == bannerNameAr) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.post, post) || other.post == post));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bannerName, bannerNameAr, image, post);

  @override
  String toString() {
    return 'BannerModel(bannerName: $bannerName, bannerNameAr: $bannerNameAr, image: $image, post: $post)';
  }
}

/// @nodoc
abstract mixin class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) _then) =
      _$BannerModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'banner_name') String? bannerName,
      @JsonKey(name: 'banner_name_ar') String? bannerNameAr,
      String? image,
      String? post});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res> implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._self, this._then);

  final BannerModel _self;
  final $Res Function(BannerModel) _then;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerName = freezed,
    Object? bannerNameAr = freezed,
    Object? image = freezed,
    Object? post = freezed,
  }) {
    return _then(_self.copyWith(
      bannerName: freezed == bannerName
          ? _self.bannerName
          : bannerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerNameAr: freezed == bannerNameAr
          ? _self.bannerNameAr
          : bannerNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      post: freezed == post
          ? _self.post
          : post // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BannerModel].
extension BannerModelPatterns on BannerModel {
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
    TResult Function(_BannerModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BannerModel() when $default != null:
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
    TResult Function(_BannerModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BannerModel():
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
    TResult? Function(_BannerModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BannerModel() when $default != null:
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
            @JsonKey(name: 'banner_name') String? bannerName,
            @JsonKey(name: 'banner_name_ar') String? bannerNameAr,
            String? image,
            String? post)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BannerModel() when $default != null:
        return $default(
            _that.bannerName, _that.bannerNameAr, _that.image, _that.post);
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
            @JsonKey(name: 'banner_name') String? bannerName,
            @JsonKey(name: 'banner_name_ar') String? bannerNameAr,
            String? image,
            String? post)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BannerModel():
        return $default(
            _that.bannerName, _that.bannerNameAr, _that.image, _that.post);
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
            @JsonKey(name: 'banner_name') String? bannerName,
            @JsonKey(name: 'banner_name_ar') String? bannerNameAr,
            String? image,
            String? post)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BannerModel() when $default != null:
        return $default(
            _that.bannerName, _that.bannerNameAr, _that.image, _that.post);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BannerModel implements BannerModel {
  const _BannerModel(
      {@JsonKey(name: 'banner_name') this.bannerName,
      @JsonKey(name: 'banner_name_ar') this.bannerNameAr,
      this.image,
      this.post});
  factory _BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  @override
  @JsonKey(name: 'banner_name')
  final String? bannerName;
  @override
  @JsonKey(name: 'banner_name_ar')
  final String? bannerNameAr;
  @override
  final String? image;
  @override
  final String? post;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BannerModelCopyWith<_BannerModel> get copyWith =>
      __$BannerModelCopyWithImpl<_BannerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BannerModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BannerModel &&
            (identical(other.bannerName, bannerName) ||
                other.bannerName == bannerName) &&
            (identical(other.bannerNameAr, bannerNameAr) ||
                other.bannerNameAr == bannerNameAr) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.post, post) || other.post == post));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bannerName, bannerNameAr, image, post);

  @override
  String toString() {
    return 'BannerModel(bannerName: $bannerName, bannerNameAr: $bannerNameAr, image: $image, post: $post)';
  }
}

/// @nodoc
abstract mixin class _$BannerModelCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$BannerModelCopyWith(
          _BannerModel value, $Res Function(_BannerModel) _then) =
      __$BannerModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'banner_name') String? bannerName,
      @JsonKey(name: 'banner_name_ar') String? bannerNameAr,
      String? image,
      String? post});
}

/// @nodoc
class __$BannerModelCopyWithImpl<$Res> implements _$BannerModelCopyWith<$Res> {
  __$BannerModelCopyWithImpl(this._self, this._then);

  final _BannerModel _self;
  final $Res Function(_BannerModel) _then;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bannerName = freezed,
    Object? bannerNameAr = freezed,
    Object? image = freezed,
    Object? post = freezed,
  }) {
    return _then(_BannerModel(
      bannerName: freezed == bannerName
          ? _self.bannerName
          : bannerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerNameAr: freezed == bannerNameAr
          ? _self.bannerNameAr
          : bannerNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      post: freezed == post
          ? _self.post
          : post // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CategoryModel {
  String? get name;
  String? get icon;
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @JsonKey(name: 'category_name_ar')
  String? get categoryNameAr;
  List<SubCategoryModel?>? get subcategories;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      _$CategoryModelCopyWithImpl<CategoryModel>(
          this as CategoryModel, _$identity);

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryNameAr, categoryNameAr) ||
                other.categoryNameAr == categoryNameAr) &&
            const DeepCollectionEquality()
                .equals(other.subcategories, subcategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, icon, categoryName,
      categoryNameAr, const DeepCollectionEquality().hash(subcategories));

  @override
  String toString() {
    return 'CategoryModel(name: $name, icon: $icon, categoryName: $categoryName, categoryNameAr: $categoryNameAr, subcategories: $subcategories)';
  }
}

/// @nodoc
abstract mixin class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) _then) =
      _$CategoryModelCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? icon,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'category_name_ar') String? categoryNameAr,
      List<SubCategoryModel?>? subcategories});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._self, this._then);

  final CategoryModel _self;
  final $Res Function(CategoryModel) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? categoryName = freezed,
    Object? categoryNameAr = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameAr: freezed == categoryNameAr
          ? _self.categoryNameAr
          : categoryNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      subcategories: freezed == subcategories
          ? _self.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryModel?>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CategoryModel].
extension CategoryModelPatterns on CategoryModel {
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
    TResult Function(_CategoryModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryModel() when $default != null:
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
    TResult Function(_CategoryModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryModel():
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
    TResult? Function(_CategoryModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryModel() when $default != null:
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
            String? icon,
            @JsonKey(name: 'category_name') String? categoryName,
            @JsonKey(name: 'category_name_ar') String? categoryNameAr,
            List<SubCategoryModel?>? subcategories)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryModel() when $default != null:
        return $default(_that.name, _that.icon, _that.categoryName,
            _that.categoryNameAr, _that.subcategories);
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
            String? icon,
            @JsonKey(name: 'category_name') String? categoryName,
            @JsonKey(name: 'category_name_ar') String? categoryNameAr,
            List<SubCategoryModel?>? subcategories)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryModel():
        return $default(_that.name, _that.icon, _that.categoryName,
            _that.categoryNameAr, _that.subcategories);
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
            String? icon,
            @JsonKey(name: 'category_name') String? categoryName,
            @JsonKey(name: 'category_name_ar') String? categoryNameAr,
            List<SubCategoryModel?>? subcategories)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryModel() when $default != null:
        return $default(_that.name, _that.icon, _that.categoryName,
            _that.categoryNameAr, _that.subcategories);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryModel implements CategoryModel {
  const _CategoryModel(
      {this.name,
      this.icon,
      @JsonKey(name: 'category_name') this.categoryName,
      @JsonKey(name: 'category_name_ar') this.categoryNameAr,
      final List<SubCategoryModel?>? subcategories})
      : _subcategories = subcategories;
  factory _CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  @override
  final String? name;
  @override
  final String? icon;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  @JsonKey(name: 'category_name_ar')
  final String? categoryNameAr;
  final List<SubCategoryModel?>? _subcategories;
  @override
  List<SubCategoryModel?>? get subcategories {
    final value = _subcategories;
    if (value == null) return null;
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryModelCopyWith<_CategoryModel> get copyWith =>
      __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryNameAr, categoryNameAr) ||
                other.categoryNameAr == categoryNameAr) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, icon, categoryName,
      categoryNameAr, const DeepCollectionEquality().hash(_subcategories));

  @override
  String toString() {
    return 'CategoryModel(name: $name, icon: $icon, categoryName: $categoryName, categoryNameAr: $categoryNameAr, subcategories: $subcategories)';
  }
}

/// @nodoc
abstract mixin class _$CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(
          _CategoryModel value, $Res Function(_CategoryModel) _then) =
      __$CategoryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? icon,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'category_name_ar') String? categoryNameAr,
      List<SubCategoryModel?>? subcategories});
}

/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(this._self, this._then);

  final _CategoryModel _self;
  final $Res Function(_CategoryModel) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? categoryName = freezed,
    Object? categoryNameAr = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_CategoryModel(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameAr: freezed == categoryNameAr
          ? _self.categoryNameAr
          : categoryNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      subcategories: freezed == subcategories
          ? _self._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryModel?>?,
    ));
  }
}

/// @nodoc
mixin _$SubCategoryModel {
  String? get name;
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @JsonKey(name: 'category_name_ar')
  String? get categoryNameAr;
  String? get image;
  @JsonKey(name: 'main_attributes')
  List<AttributeModel>? get mainAttributes;

  /// Create a copy of SubCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubCategoryModelCopyWith<SubCategoryModel> get copyWith =>
      _$SubCategoryModelCopyWithImpl<SubCategoryModel>(
          this as SubCategoryModel, _$identity);

  /// Serializes this SubCategoryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubCategoryModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryNameAr, categoryNameAr) ||
                other.categoryNameAr == categoryNameAr) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other.mainAttributes, mainAttributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      categoryName,
      categoryNameAr,
      image,
      const DeepCollectionEquality().hash(mainAttributes));

  @override
  String toString() {
    return 'SubCategoryModel(name: $name, categoryName: $categoryName, categoryNameAr: $categoryNameAr, image: $image, mainAttributes: $mainAttributes)';
  }
}

/// @nodoc
abstract mixin class $SubCategoryModelCopyWith<$Res> {
  factory $SubCategoryModelCopyWith(
          SubCategoryModel value, $Res Function(SubCategoryModel) _then) =
      _$SubCategoryModelCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'category_name_ar') String? categoryNameAr,
      String? image,
      @JsonKey(name: 'main_attributes') List<AttributeModel>? mainAttributes});
}

/// @nodoc
class _$SubCategoryModelCopyWithImpl<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  _$SubCategoryModelCopyWithImpl(this._self, this._then);

  final SubCategoryModel _self;
  final $Res Function(SubCategoryModel) _then;

  /// Create a copy of SubCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? categoryName = freezed,
    Object? categoryNameAr = freezed,
    Object? image = freezed,
    Object? mainAttributes = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameAr: freezed == categoryNameAr
          ? _self.categoryNameAr
          : categoryNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      mainAttributes: freezed == mainAttributes
          ? _self.mainAttributes
          : mainAttributes // ignore: cast_nullable_to_non_nullable
              as List<AttributeModel>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SubCategoryModel].
extension SubCategoryModelPatterns on SubCategoryModel {
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
    TResult Function(_SubCategoryModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubCategoryModel() when $default != null:
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
    TResult Function(_SubCategoryModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubCategoryModel():
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
    TResult? Function(_SubCategoryModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubCategoryModel() when $default != null:
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
            @JsonKey(name: 'category_name') String? categoryName,
            @JsonKey(name: 'category_name_ar') String? categoryNameAr,
            String? image,
            @JsonKey(name: 'main_attributes')
            List<AttributeModel>? mainAttributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubCategoryModel() when $default != null:
        return $default(_that.name, _that.categoryName, _that.categoryNameAr,
            _that.image, _that.mainAttributes);
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
            @JsonKey(name: 'category_name') String? categoryName,
            @JsonKey(name: 'category_name_ar') String? categoryNameAr,
            String? image,
            @JsonKey(name: 'main_attributes')
            List<AttributeModel>? mainAttributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubCategoryModel():
        return $default(_that.name, _that.categoryName, _that.categoryNameAr,
            _that.image, _that.mainAttributes);
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
            @JsonKey(name: 'category_name') String? categoryName,
            @JsonKey(name: 'category_name_ar') String? categoryNameAr,
            String? image,
            @JsonKey(name: 'main_attributes')
            List<AttributeModel>? mainAttributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubCategoryModel() when $default != null:
        return $default(_that.name, _that.categoryName, _that.categoryNameAr,
            _that.image, _that.mainAttributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SubCategoryModel implements SubCategoryModel {
  const _SubCategoryModel(
      {this.name,
      @JsonKey(name: 'category_name') this.categoryName,
      @JsonKey(name: 'category_name_ar') this.categoryNameAr,
      this.image,
      @JsonKey(name: 'main_attributes')
      final List<AttributeModel>? mainAttributes})
      : _mainAttributes = mainAttributes;
  factory _SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryModelFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  @JsonKey(name: 'category_name_ar')
  final String? categoryNameAr;
  @override
  final String? image;
  final List<AttributeModel>? _mainAttributes;
  @override
  @JsonKey(name: 'main_attributes')
  List<AttributeModel>? get mainAttributes {
    final value = _mainAttributes;
    if (value == null) return null;
    if (_mainAttributes is EqualUnmodifiableListView) return _mainAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SubCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubCategoryModelCopyWith<_SubCategoryModel> get copyWith =>
      __$SubCategoryModelCopyWithImpl<_SubCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubCategoryModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubCategoryModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryNameAr, categoryNameAr) ||
                other.categoryNameAr == categoryNameAr) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._mainAttributes, _mainAttributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      categoryName,
      categoryNameAr,
      image,
      const DeepCollectionEquality().hash(_mainAttributes));

  @override
  String toString() {
    return 'SubCategoryModel(name: $name, categoryName: $categoryName, categoryNameAr: $categoryNameAr, image: $image, mainAttributes: $mainAttributes)';
  }
}

/// @nodoc
abstract mixin class _$SubCategoryModelCopyWith<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  factory _$SubCategoryModelCopyWith(
          _SubCategoryModel value, $Res Function(_SubCategoryModel) _then) =
      __$SubCategoryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'category_name_ar') String? categoryNameAr,
      String? image,
      @JsonKey(name: 'main_attributes') List<AttributeModel>? mainAttributes});
}

/// @nodoc
class __$SubCategoryModelCopyWithImpl<$Res>
    implements _$SubCategoryModelCopyWith<$Res> {
  __$SubCategoryModelCopyWithImpl(this._self, this._then);

  final _SubCategoryModel _self;
  final $Res Function(_SubCategoryModel) _then;

  /// Create a copy of SubCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? categoryName = freezed,
    Object? categoryNameAr = freezed,
    Object? image = freezed,
    Object? mainAttributes = freezed,
  }) {
    return _then(_SubCategoryModel(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameAr: freezed == categoryNameAr
          ? _self.categoryNameAr
          : categoryNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      mainAttributes: freezed == mainAttributes
          ? _self._mainAttributes
          : mainAttributes // ignore: cast_nullable_to_non_nullable
              as List<AttributeModel>?,
    ));
  }
}

/// @nodoc
mixin _$AttributeModel {
  String? get name;
  String? get title;
  @JsonKey(name: 'data_type')
  String? get dataType;
  @JsonKey(name: 'is_main_filter')
  int? get isMainFilter;
  @JsonKey(name: 'is_filterable')
  int? get isFilterable; // String? values,
  List<MainAttributeValueModel>? get values;

  /// Create a copy of AttributeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttributeModelCopyWith<AttributeModel> get copyWith =>
      _$AttributeModelCopyWithImpl<AttributeModel>(
          this as AttributeModel, _$identity);

  /// Serializes this AttributeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttributeModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            (identical(other.isMainFilter, isMainFilter) ||
                other.isMainFilter == isMainFilter) &&
            (identical(other.isFilterable, isFilterable) ||
                other.isFilterable == isFilterable) &&
            const DeepCollectionEquality().equals(other.values, values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, title, dataType,
      isMainFilter, isFilterable, const DeepCollectionEquality().hash(values));

  @override
  String toString() {
    return 'AttributeModel(name: $name, title: $title, dataType: $dataType, isMainFilter: $isMainFilter, isFilterable: $isFilterable, values: $values)';
  }
}

/// @nodoc
abstract mixin class $AttributeModelCopyWith<$Res> {
  factory $AttributeModelCopyWith(
          AttributeModel value, $Res Function(AttributeModel) _then) =
      _$AttributeModelCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? title,
      @JsonKey(name: 'data_type') String? dataType,
      @JsonKey(name: 'is_main_filter') int? isMainFilter,
      @JsonKey(name: 'is_filterable') int? isFilterable,
      List<MainAttributeValueModel>? values});
}

/// @nodoc
class _$AttributeModelCopyWithImpl<$Res>
    implements $AttributeModelCopyWith<$Res> {
  _$AttributeModelCopyWithImpl(this._self, this._then);

  final AttributeModel _self;
  final $Res Function(AttributeModel) _then;

  /// Create a copy of AttributeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
    Object? dataType = freezed,
    Object? isMainFilter = freezed,
    Object? isFilterable = freezed,
    Object? values = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      dataType: freezed == dataType
          ? _self.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String?,
      isMainFilter: freezed == isMainFilter
          ? _self.isMainFilter
          : isMainFilter // ignore: cast_nullable_to_non_nullable
              as int?,
      isFilterable: freezed == isFilterable
          ? _self.isFilterable
          : isFilterable // ignore: cast_nullable_to_non_nullable
              as int?,
      values: freezed == values
          ? _self.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<MainAttributeValueModel>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AttributeModel].
extension AttributeModelPatterns on AttributeModel {
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
    TResult Function(_AttributeModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttributeModel() when $default != null:
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
    TResult Function(_AttributeModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttributeModel():
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
    TResult? Function(_AttributeModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttributeModel() when $default != null:
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
            String? title,
            @JsonKey(name: 'data_type') String? dataType,
            @JsonKey(name: 'is_main_filter') int? isMainFilter,
            @JsonKey(name: 'is_filterable') int? isFilterable,
            List<MainAttributeValueModel>? values)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttributeModel() when $default != null:
        return $default(_that.name, _that.title, _that.dataType,
            _that.isMainFilter, _that.isFilterable, _that.values);
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
            String? title,
            @JsonKey(name: 'data_type') String? dataType,
            @JsonKey(name: 'is_main_filter') int? isMainFilter,
            @JsonKey(name: 'is_filterable') int? isFilterable,
            List<MainAttributeValueModel>? values)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttributeModel():
        return $default(_that.name, _that.title, _that.dataType,
            _that.isMainFilter, _that.isFilterable, _that.values);
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
            String? title,
            @JsonKey(name: 'data_type') String? dataType,
            @JsonKey(name: 'is_main_filter') int? isMainFilter,
            @JsonKey(name: 'is_filterable') int? isFilterable,
            List<MainAttributeValueModel>? values)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttributeModel() when $default != null:
        return $default(_that.name, _that.title, _that.dataType,
            _that.isMainFilter, _that.isFilterable, _that.values);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AttributeModel implements AttributeModel {
  const _AttributeModel(
      {this.name,
      this.title,
      @JsonKey(name: 'data_type') this.dataType,
      @JsonKey(name: 'is_main_filter') this.isMainFilter,
      @JsonKey(name: 'is_filterable') this.isFilterable,
      final List<MainAttributeValueModel>? values})
      : _values = values;
  factory _AttributeModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeModelFromJson(json);

  @override
  final String? name;
  @override
  final String? title;
  @override
  @JsonKey(name: 'data_type')
  final String? dataType;
  @override
  @JsonKey(name: 'is_main_filter')
  final int? isMainFilter;
  @override
  @JsonKey(name: 'is_filterable')
  final int? isFilterable;
// String? values,
  final List<MainAttributeValueModel>? _values;
// String? values,
  @override
  List<MainAttributeValueModel>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of AttributeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttributeModelCopyWith<_AttributeModel> get copyWith =>
      __$AttributeModelCopyWithImpl<_AttributeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AttributeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttributeModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            (identical(other.isMainFilter, isMainFilter) ||
                other.isMainFilter == isMainFilter) &&
            (identical(other.isFilterable, isFilterable) ||
                other.isFilterable == isFilterable) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, title, dataType,
      isMainFilter, isFilterable, const DeepCollectionEquality().hash(_values));

  @override
  String toString() {
    return 'AttributeModel(name: $name, title: $title, dataType: $dataType, isMainFilter: $isMainFilter, isFilterable: $isFilterable, values: $values)';
  }
}

/// @nodoc
abstract mixin class _$AttributeModelCopyWith<$Res>
    implements $AttributeModelCopyWith<$Res> {
  factory _$AttributeModelCopyWith(
          _AttributeModel value, $Res Function(_AttributeModel) _then) =
      __$AttributeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? title,
      @JsonKey(name: 'data_type') String? dataType,
      @JsonKey(name: 'is_main_filter') int? isMainFilter,
      @JsonKey(name: 'is_filterable') int? isFilterable,
      List<MainAttributeValueModel>? values});
}

/// @nodoc
class __$AttributeModelCopyWithImpl<$Res>
    implements _$AttributeModelCopyWith<$Res> {
  __$AttributeModelCopyWithImpl(this._self, this._then);

  final _AttributeModel _self;
  final $Res Function(_AttributeModel) _then;

  /// Create a copy of AttributeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
    Object? dataType = freezed,
    Object? isMainFilter = freezed,
    Object? isFilterable = freezed,
    Object? values = freezed,
  }) {
    return _then(_AttributeModel(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      dataType: freezed == dataType
          ? _self.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String?,
      isMainFilter: freezed == isMainFilter
          ? _self.isMainFilter
          : isMainFilter // ignore: cast_nullable_to_non_nullable
              as int?,
      isFilterable: freezed == isFilterable
          ? _self.isFilterable
          : isFilterable // ignore: cast_nullable_to_non_nullable
              as int?,
      values: freezed == values
          ? _self._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<MainAttributeValueModel>?,
    ));
  }
}

/// @nodoc
mixin _$MainAttributeValueModel {
  String? get image;
  String? get title;

  /// Create a copy of MainAttributeValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainAttributeValueModelCopyWith<MainAttributeValueModel> get copyWith =>
      _$MainAttributeValueModelCopyWithImpl<MainAttributeValueModel>(
          this as MainAttributeValueModel, _$identity);

  /// Serializes this MainAttributeValueModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainAttributeValueModel &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, title);

  @override
  String toString() {
    return 'MainAttributeValueModel(image: $image, title: $title)';
  }
}

/// @nodoc
abstract mixin class $MainAttributeValueModelCopyWith<$Res> {
  factory $MainAttributeValueModelCopyWith(MainAttributeValueModel value,
          $Res Function(MainAttributeValueModel) _then) =
      _$MainAttributeValueModelCopyWithImpl;
  @useResult
  $Res call({String? image, String? title});
}

/// @nodoc
class _$MainAttributeValueModelCopyWithImpl<$Res>
    implements $MainAttributeValueModelCopyWith<$Res> {
  _$MainAttributeValueModelCopyWithImpl(this._self, this._then);

  final MainAttributeValueModel _self;
  final $Res Function(MainAttributeValueModel) _then;

  /// Create a copy of MainAttributeValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? title = freezed,
  }) {
    return _then(_self.copyWith(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MainAttributeValueModel].
extension MainAttributeValueModelPatterns on MainAttributeValueModel {
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
    TResult Function(_MainAttributeValueModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MainAttributeValueModel() when $default != null:
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
    TResult Function(_MainAttributeValueModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainAttributeValueModel():
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
    TResult? Function(_MainAttributeValueModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainAttributeValueModel() when $default != null:
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
    TResult Function(String? image, String? title)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MainAttributeValueModel() when $default != null:
        return $default(_that.image, _that.title);
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
    TResult Function(String? image, String? title) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainAttributeValueModel():
        return $default(_that.image, _that.title);
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
    TResult? Function(String? image, String? title)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainAttributeValueModel() when $default != null:
        return $default(_that.image, _that.title);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MainAttributeValueModel implements MainAttributeValueModel {
  const _MainAttributeValueModel({this.image, this.title});
  factory _MainAttributeValueModel.fromJson(Map<String, dynamic> json) =>
      _$MainAttributeValueModelFromJson(json);

  @override
  final String? image;
  @override
  final String? title;

  /// Create a copy of MainAttributeValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MainAttributeValueModelCopyWith<_MainAttributeValueModel> get copyWith =>
      __$MainAttributeValueModelCopyWithImpl<_MainAttributeValueModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MainAttributeValueModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainAttributeValueModel &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, title);

  @override
  String toString() {
    return 'MainAttributeValueModel(image: $image, title: $title)';
  }
}

/// @nodoc
abstract mixin class _$MainAttributeValueModelCopyWith<$Res>
    implements $MainAttributeValueModelCopyWith<$Res> {
  factory _$MainAttributeValueModelCopyWith(_MainAttributeValueModel value,
          $Res Function(_MainAttributeValueModel) _then) =
      __$MainAttributeValueModelCopyWithImpl;
  @override
  @useResult
  $Res call({String? image, String? title});
}

/// @nodoc
class __$MainAttributeValueModelCopyWithImpl<$Res>
    implements _$MainAttributeValueModelCopyWith<$Res> {
  __$MainAttributeValueModelCopyWithImpl(this._self, this._then);

  final _MainAttributeValueModel _self;
  final $Res Function(_MainAttributeValueModel) _then;

  /// Create a copy of MainAttributeValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? image = freezed,
    Object? title = freezed,
  }) {
    return _then(_MainAttributeValueModel(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$AppVersionModel {
  @JsonKey(name: 'android_version')
  String? get androidVersion;
  @JsonKey(name: 'ios_version')
  String? get iosVersion;
  @JsonKey(name: 'android_url')
  String? get androidUrl;
  @JsonKey(name: 'ios_url')
  String? get iosUrl;
  @JsonKey(name: 'app_update_required')
  int? get appUpdateRequired;
  @JsonKey(name: 'app_update_message')
  String? get appUpdateMessage;
  @JsonKey(name: 'apple_review')
  int? get appleReview;

  /// Create a copy of AppVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppVersionModelCopyWith<AppVersionModel> get copyWith =>
      _$AppVersionModelCopyWithImpl<AppVersionModel>(
          this as AppVersionModel, _$identity);

  /// Serializes this AppVersionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppVersionModel &&
            (identical(other.androidVersion, androidVersion) ||
                other.androidVersion == androidVersion) &&
            (identical(other.iosVersion, iosVersion) ||
                other.iosVersion == iosVersion) &&
            (identical(other.androidUrl, androidUrl) ||
                other.androidUrl == androidUrl) &&
            (identical(other.iosUrl, iosUrl) || other.iosUrl == iosUrl) &&
            (identical(other.appUpdateRequired, appUpdateRequired) ||
                other.appUpdateRequired == appUpdateRequired) &&
            (identical(other.appUpdateMessage, appUpdateMessage) ||
                other.appUpdateMessage == appUpdateMessage) &&
            (identical(other.appleReview, appleReview) ||
                other.appleReview == appleReview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, androidVersion, iosVersion,
      androidUrl, iosUrl, appUpdateRequired, appUpdateMessage, appleReview);

  @override
  String toString() {
    return 'AppVersionModel(androidVersion: $androidVersion, iosVersion: $iosVersion, androidUrl: $androidUrl, iosUrl: $iosUrl, appUpdateRequired: $appUpdateRequired, appUpdateMessage: $appUpdateMessage, appleReview: $appleReview)';
  }
}

/// @nodoc
abstract mixin class $AppVersionModelCopyWith<$Res> {
  factory $AppVersionModelCopyWith(
          AppVersionModel value, $Res Function(AppVersionModel) _then) =
      _$AppVersionModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'android_version') String? androidVersion,
      @JsonKey(name: 'ios_version') String? iosVersion,
      @JsonKey(name: 'android_url') String? androidUrl,
      @JsonKey(name: 'ios_url') String? iosUrl,
      @JsonKey(name: 'app_update_required') int? appUpdateRequired,
      @JsonKey(name: 'app_update_message') String? appUpdateMessage,
      @JsonKey(name: 'apple_review') int? appleReview});
}

/// @nodoc
class _$AppVersionModelCopyWithImpl<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  _$AppVersionModelCopyWithImpl(this._self, this._then);

  final AppVersionModel _self;
  final $Res Function(AppVersionModel) _then;

  /// Create a copy of AppVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? androidVersion = freezed,
    Object? iosVersion = freezed,
    Object? androidUrl = freezed,
    Object? iosUrl = freezed,
    Object? appUpdateRequired = freezed,
    Object? appUpdateMessage = freezed,
    Object? appleReview = freezed,
  }) {
    return _then(_self.copyWith(
      androidVersion: freezed == androidVersion
          ? _self.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      iosVersion: freezed == iosVersion
          ? _self.iosVersion
          : iosVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      androidUrl: freezed == androidUrl
          ? _self.androidUrl
          : androidUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      iosUrl: freezed == iosUrl
          ? _self.iosUrl
          : iosUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appUpdateRequired: freezed == appUpdateRequired
          ? _self.appUpdateRequired
          : appUpdateRequired // ignore: cast_nullable_to_non_nullable
              as int?,
      appUpdateMessage: freezed == appUpdateMessage
          ? _self.appUpdateMessage
          : appUpdateMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      appleReview: freezed == appleReview
          ? _self.appleReview
          : appleReview // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppVersionModel].
extension AppVersionModelPatterns on AppVersionModel {
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
    TResult Function(_AppVersionModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppVersionModel() when $default != null:
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
    TResult Function(_AppVersionModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppVersionModel():
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
    TResult? Function(_AppVersionModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppVersionModel() when $default != null:
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
            @JsonKey(name: 'android_version') String? androidVersion,
            @JsonKey(name: 'ios_version') String? iosVersion,
            @JsonKey(name: 'android_url') String? androidUrl,
            @JsonKey(name: 'ios_url') String? iosUrl,
            @JsonKey(name: 'app_update_required') int? appUpdateRequired,
            @JsonKey(name: 'app_update_message') String? appUpdateMessage,
            @JsonKey(name: 'apple_review') int? appleReview)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppVersionModel() when $default != null:
        return $default(
            _that.androidVersion,
            _that.iosVersion,
            _that.androidUrl,
            _that.iosUrl,
            _that.appUpdateRequired,
            _that.appUpdateMessage,
            _that.appleReview);
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
            @JsonKey(name: 'android_version') String? androidVersion,
            @JsonKey(name: 'ios_version') String? iosVersion,
            @JsonKey(name: 'android_url') String? androidUrl,
            @JsonKey(name: 'ios_url') String? iosUrl,
            @JsonKey(name: 'app_update_required') int? appUpdateRequired,
            @JsonKey(name: 'app_update_message') String? appUpdateMessage,
            @JsonKey(name: 'apple_review') int? appleReview)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppVersionModel():
        return $default(
            _that.androidVersion,
            _that.iosVersion,
            _that.androidUrl,
            _that.iosUrl,
            _that.appUpdateRequired,
            _that.appUpdateMessage,
            _that.appleReview);
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
            @JsonKey(name: 'android_version') String? androidVersion,
            @JsonKey(name: 'ios_version') String? iosVersion,
            @JsonKey(name: 'android_url') String? androidUrl,
            @JsonKey(name: 'ios_url') String? iosUrl,
            @JsonKey(name: 'app_update_required') int? appUpdateRequired,
            @JsonKey(name: 'app_update_message') String? appUpdateMessage,
            @JsonKey(name: 'apple_review') int? appleReview)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppVersionModel() when $default != null:
        return $default(
            _that.androidVersion,
            _that.iosVersion,
            _that.androidUrl,
            _that.iosUrl,
            _that.appUpdateRequired,
            _that.appUpdateMessage,
            _that.appleReview);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppVersionModel implements AppVersionModel {
  const _AppVersionModel(
      {@JsonKey(name: 'android_version') this.androidVersion,
      @JsonKey(name: 'ios_version') this.iosVersion,
      @JsonKey(name: 'android_url') this.androidUrl,
      @JsonKey(name: 'ios_url') this.iosUrl,
      @JsonKey(name: 'app_update_required') this.appUpdateRequired,
      @JsonKey(name: 'app_update_message') this.appUpdateMessage,
      @JsonKey(name: 'apple_review') this.appleReview});
  factory _AppVersionModel.fromJson(Map<String, dynamic> json) =>
      _$AppVersionModelFromJson(json);

  @override
  @JsonKey(name: 'android_version')
  final String? androidVersion;
  @override
  @JsonKey(name: 'ios_version')
  final String? iosVersion;
  @override
  @JsonKey(name: 'android_url')
  final String? androidUrl;
  @override
  @JsonKey(name: 'ios_url')
  final String? iosUrl;
  @override
  @JsonKey(name: 'app_update_required')
  final int? appUpdateRequired;
  @override
  @JsonKey(name: 'app_update_message')
  final String? appUpdateMessage;
  @override
  @JsonKey(name: 'apple_review')
  final int? appleReview;

  /// Create a copy of AppVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppVersionModelCopyWith<_AppVersionModel> get copyWith =>
      __$AppVersionModelCopyWithImpl<_AppVersionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppVersionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppVersionModel &&
            (identical(other.androidVersion, androidVersion) ||
                other.androidVersion == androidVersion) &&
            (identical(other.iosVersion, iosVersion) ||
                other.iosVersion == iosVersion) &&
            (identical(other.androidUrl, androidUrl) ||
                other.androidUrl == androidUrl) &&
            (identical(other.iosUrl, iosUrl) || other.iosUrl == iosUrl) &&
            (identical(other.appUpdateRequired, appUpdateRequired) ||
                other.appUpdateRequired == appUpdateRequired) &&
            (identical(other.appUpdateMessage, appUpdateMessage) ||
                other.appUpdateMessage == appUpdateMessage) &&
            (identical(other.appleReview, appleReview) ||
                other.appleReview == appleReview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, androidVersion, iosVersion,
      androidUrl, iosUrl, appUpdateRequired, appUpdateMessage, appleReview);

  @override
  String toString() {
    return 'AppVersionModel(androidVersion: $androidVersion, iosVersion: $iosVersion, androidUrl: $androidUrl, iosUrl: $iosUrl, appUpdateRequired: $appUpdateRequired, appUpdateMessage: $appUpdateMessage, appleReview: $appleReview)';
  }
}

/// @nodoc
abstract mixin class _$AppVersionModelCopyWith<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  factory _$AppVersionModelCopyWith(
          _AppVersionModel value, $Res Function(_AppVersionModel) _then) =
      __$AppVersionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'android_version') String? androidVersion,
      @JsonKey(name: 'ios_version') String? iosVersion,
      @JsonKey(name: 'android_url') String? androidUrl,
      @JsonKey(name: 'ios_url') String? iosUrl,
      @JsonKey(name: 'app_update_required') int? appUpdateRequired,
      @JsonKey(name: 'app_update_message') String? appUpdateMessage,
      @JsonKey(name: 'apple_review') int? appleReview});
}

/// @nodoc
class __$AppVersionModelCopyWithImpl<$Res>
    implements _$AppVersionModelCopyWith<$Res> {
  __$AppVersionModelCopyWithImpl(this._self, this._then);

  final _AppVersionModel _self;
  final $Res Function(_AppVersionModel) _then;

  /// Create a copy of AppVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? androidVersion = freezed,
    Object? iosVersion = freezed,
    Object? androidUrl = freezed,
    Object? iosUrl = freezed,
    Object? appUpdateRequired = freezed,
    Object? appUpdateMessage = freezed,
    Object? appleReview = freezed,
  }) {
    return _then(_AppVersionModel(
      androidVersion: freezed == androidVersion
          ? _self.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      iosVersion: freezed == iosVersion
          ? _self.iosVersion
          : iosVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      androidUrl: freezed == androidUrl
          ? _self.androidUrl
          : androidUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      iosUrl: freezed == iosUrl
          ? _self.iosUrl
          : iosUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appUpdateRequired: freezed == appUpdateRequired
          ? _self.appUpdateRequired
          : appUpdateRequired // ignore: cast_nullable_to_non_nullable
              as int?,
      appUpdateMessage: freezed == appUpdateMessage
          ? _self.appUpdateMessage
          : appUpdateMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      appleReview: freezed == appleReview
          ? _self.appleReview
          : appleReview // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
