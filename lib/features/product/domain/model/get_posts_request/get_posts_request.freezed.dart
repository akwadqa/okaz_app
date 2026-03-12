// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_posts_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetPostsRequest {
  List<String>? get subcategories;
  List<RequestAttribute>? get attributes;
  @JsonKey(name: 'post_type')
  String? get postType;
  @JsonKey(name: 'title_ar')
  String? get titleAr;
  @JsonKey(name: 'min_price')
  int? get minPrice;

  /// Create a copy of GetPostsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetPostsRequestCopyWith<GetPostsRequest> get copyWith =>
      _$GetPostsRequestCopyWithImpl<GetPostsRequest>(
          this as GetPostsRequest, _$identity);

  /// Serializes this GetPostsRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPostsRequest &&
            const DeepCollectionEquality()
                .equals(other.subcategories, subcategories) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            (identical(other.titleAr, titleAr) || other.titleAr == titleAr) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subcategories),
      const DeepCollectionEquality().hash(attributes),
      postType,
      titleAr,
      minPrice);

  @override
  String toString() {
    return 'GetPostsRequest(subcategories: $subcategories, attributes: $attributes, postType: $postType, titleAr: $titleAr, minPrice: $minPrice)';
  }
}

/// @nodoc
abstract mixin class $GetPostsRequestCopyWith<$Res> {
  factory $GetPostsRequestCopyWith(
          GetPostsRequest value, $Res Function(GetPostsRequest) _then) =
      _$GetPostsRequestCopyWithImpl;
  @useResult
  $Res call(
      {List<String>? subcategories,
      List<RequestAttribute>? attributes,
      @JsonKey(name: 'post_type') String? postType,
      @JsonKey(name: 'title_ar') String? titleAr,
      @JsonKey(name: 'min_price') int? minPrice});
}

/// @nodoc
class _$GetPostsRequestCopyWithImpl<$Res>
    implements $GetPostsRequestCopyWith<$Res> {
  _$GetPostsRequestCopyWithImpl(this._self, this._then);

  final GetPostsRequest _self;
  final $Res Function(GetPostsRequest) _then;

  /// Create a copy of GetPostsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subcategories = freezed,
    Object? attributes = freezed,
    Object? postType = freezed,
    Object? titleAr = freezed,
    Object? minPrice = freezed,
  }) {
    return _then(_self.copyWith(
      subcategories: freezed == subcategories
          ? _self.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<RequestAttribute>?,
      postType: freezed == postType
          ? _self.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String?,
      titleAr: freezed == titleAr
          ? _self.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrice: freezed == minPrice
          ? _self.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetPostsRequest].
extension GetPostsRequestPatterns on GetPostsRequest {
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
    TResult Function(_GetPostsRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetPostsRequest() when $default != null:
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
    TResult Function(_GetPostsRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetPostsRequest():
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
    TResult? Function(_GetPostsRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetPostsRequest() when $default != null:
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
            List<String>? subcategories,
            List<RequestAttribute>? attributes,
            @JsonKey(name: 'post_type') String? postType,
            @JsonKey(name: 'title_ar') String? titleAr,
            @JsonKey(name: 'min_price') int? minPrice)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetPostsRequest() when $default != null:
        return $default(_that.subcategories, _that.attributes, _that.postType,
            _that.titleAr, _that.minPrice);
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
            List<String>? subcategories,
            List<RequestAttribute>? attributes,
            @JsonKey(name: 'post_type') String? postType,
            @JsonKey(name: 'title_ar') String? titleAr,
            @JsonKey(name: 'min_price') int? minPrice)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetPostsRequest():
        return $default(_that.subcategories, _that.attributes, _that.postType,
            _that.titleAr, _that.minPrice);
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
            List<String>? subcategories,
            List<RequestAttribute>? attributes,
            @JsonKey(name: 'post_type') String? postType,
            @JsonKey(name: 'title_ar') String? titleAr,
            @JsonKey(name: 'min_price') int? minPrice)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetPostsRequest() when $default != null:
        return $default(_that.subcategories, _that.attributes, _that.postType,
            _that.titleAr, _that.minPrice);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GetPostsRequest implements GetPostsRequest {
  const _GetPostsRequest(
      {final List<String>? subcategories,
      final List<RequestAttribute>? attributes,
      @JsonKey(name: 'post_type') this.postType,
      @JsonKey(name: 'title_ar') this.titleAr,
      @JsonKey(name: 'min_price') this.minPrice})
      : _subcategories = subcategories,
        _attributes = attributes;
  factory _GetPostsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetPostsRequestFromJson(json);

  final List<String>? _subcategories;
  @override
  List<String>? get subcategories {
    final value = _subcategories;
    if (value == null) return null;
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RequestAttribute>? _attributes;
  @override
  List<RequestAttribute>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'post_type')
  final String? postType;
  @override
  @JsonKey(name: 'title_ar')
  final String? titleAr;
  @override
  @JsonKey(name: 'min_price')
  final int? minPrice;

  /// Create a copy of GetPostsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetPostsRequestCopyWith<_GetPostsRequest> get copyWith =>
      __$GetPostsRequestCopyWithImpl<_GetPostsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetPostsRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetPostsRequest &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            (identical(other.titleAr, titleAr) || other.titleAr == titleAr) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_subcategories),
      const DeepCollectionEquality().hash(_attributes),
      postType,
      titleAr,
      minPrice);

  @override
  String toString() {
    return 'GetPostsRequest(subcategories: $subcategories, attributes: $attributes, postType: $postType, titleAr: $titleAr, minPrice: $minPrice)';
  }
}

/// @nodoc
abstract mixin class _$GetPostsRequestCopyWith<$Res>
    implements $GetPostsRequestCopyWith<$Res> {
  factory _$GetPostsRequestCopyWith(
          _GetPostsRequest value, $Res Function(_GetPostsRequest) _then) =
      __$GetPostsRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String>? subcategories,
      List<RequestAttribute>? attributes,
      @JsonKey(name: 'post_type') String? postType,
      @JsonKey(name: 'title_ar') String? titleAr,
      @JsonKey(name: 'min_price') int? minPrice});
}

/// @nodoc
class __$GetPostsRequestCopyWithImpl<$Res>
    implements _$GetPostsRequestCopyWith<$Res> {
  __$GetPostsRequestCopyWithImpl(this._self, this._then);

  final _GetPostsRequest _self;
  final $Res Function(_GetPostsRequest) _then;

  /// Create a copy of GetPostsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subcategories = freezed,
    Object? attributes = freezed,
    Object? postType = freezed,
    Object? titleAr = freezed,
    Object? minPrice = freezed,
  }) {
    return _then(_GetPostsRequest(
      subcategories: freezed == subcategories
          ? _self._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<RequestAttribute>?,
      postType: freezed == postType
          ? _self.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String?,
      titleAr: freezed == titleAr
          ? _self.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrice: freezed == minPrice
          ? _self.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$RequestAttribute {
  String? get title;
  String? get value;

  /// Create a copy of RequestAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestAttributeCopyWith<RequestAttribute> get copyWith =>
      _$RequestAttributeCopyWithImpl<RequestAttribute>(
          this as RequestAttribute, _$identity);

  /// Serializes this RequestAttribute to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestAttribute &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, value);

  @override
  String toString() {
    return 'RequestAttribute(title: $title, value: $value)';
  }
}

/// @nodoc
abstract mixin class $RequestAttributeCopyWith<$Res> {
  factory $RequestAttributeCopyWith(
          RequestAttribute value, $Res Function(RequestAttribute) _then) =
      _$RequestAttributeCopyWithImpl;
  @useResult
  $Res call({String? title, String? value});
}

/// @nodoc
class _$RequestAttributeCopyWithImpl<$Res>
    implements $RequestAttributeCopyWith<$Res> {
  _$RequestAttributeCopyWithImpl(this._self, this._then);

  final RequestAttribute _self;
  final $Res Function(RequestAttribute) _then;

  /// Create a copy of RequestAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
  }) {
    return _then(_self.copyWith(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RequestAttribute].
extension RequestAttributePatterns on RequestAttribute {
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
    TResult Function(_RequestAttribute value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RequestAttribute() when $default != null:
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
    TResult Function(_RequestAttribute value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequestAttribute():
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
    TResult? Function(_RequestAttribute value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequestAttribute() when $default != null:
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
    TResult Function(String? title, String? value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RequestAttribute() when $default != null:
        return $default(_that.title, _that.value);
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
    TResult Function(String? title, String? value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequestAttribute():
        return $default(_that.title, _that.value);
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
    TResult? Function(String? title, String? value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequestAttribute() when $default != null:
        return $default(_that.title, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RequestAttribute implements RequestAttribute {
  const _RequestAttribute({this.title, this.value});
  factory _RequestAttribute.fromJson(Map<String, dynamic> json) =>
      _$RequestAttributeFromJson(json);

  @override
  final String? title;
  @override
  final String? value;

  /// Create a copy of RequestAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RequestAttributeCopyWith<_RequestAttribute> get copyWith =>
      __$RequestAttributeCopyWithImpl<_RequestAttribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RequestAttributeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestAttribute &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, value);

  @override
  String toString() {
    return 'RequestAttribute(title: $title, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$RequestAttributeCopyWith<$Res>
    implements $RequestAttributeCopyWith<$Res> {
  factory _$RequestAttributeCopyWith(
          _RequestAttribute value, $Res Function(_RequestAttribute) _then) =
      __$RequestAttributeCopyWithImpl;
  @override
  @useResult
  $Res call({String? title, String? value});
}

/// @nodoc
class __$RequestAttributeCopyWithImpl<$Res>
    implements _$RequestAttributeCopyWith<$Res> {
  __$RequestAttributeCopyWithImpl(this._self, this._then);

  final _RequestAttribute _self;
  final $Res Function(_RequestAttribute) _then;

  /// Create a copy of RequestAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
  }) {
    return _then(_RequestAttribute(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
