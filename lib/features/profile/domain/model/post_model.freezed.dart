// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostModel {
  String get name;
  String get title;
  @JsonKey(name: "title_ar")
  String? get titleAr;
  String get description;
  @JsonKey(name: "description_ar")
  String? get descriptionAr;
  double get price;
  String get currency;
  String get condition;
  int get likes;
  int get comments;
  String? get image;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostModelCopyWith<PostModel> get copyWith =>
      _$PostModelCopyWithImpl<PostModel>(this as PostModel, _$identity);

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleAr, titleAr) || other.titleAr == titleAr) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionAr, descriptionAr) ||
                other.descriptionAr == descriptionAr) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      title,
      titleAr,
      description,
      descriptionAr,
      price,
      currency,
      condition,
      likes,
      comments,
      image);

  @override
  String toString() {
    return 'PostModel(name: $name, title: $title, titleAr: $titleAr, description: $description, descriptionAr: $descriptionAr, price: $price, currency: $currency, condition: $condition, likes: $likes, comments: $comments, image: $image)';
  }
}

/// @nodoc
abstract mixin class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) _then) =
      _$PostModelCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String title,
      @JsonKey(name: "title_ar") String? titleAr,
      String description,
      @JsonKey(name: "description_ar") String? descriptionAr,
      double price,
      String currency,
      String condition,
      int likes,
      int comments,
      String? image});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res> implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._self, this._then);

  final PostModel _self;
  final $Res Function(PostModel) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? titleAr = freezed,
    Object? description = null,
    Object? descriptionAr = freezed,
    Object? price = null,
    Object? currency = null,
    Object? condition = null,
    Object? likes = null,
    Object? comments = null,
    Object? image = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleAr: freezed == titleAr
          ? _self.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionAr: freezed == descriptionAr
          ? _self.descriptionAr
          : descriptionAr // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _self.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _self.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PostModel].
extension PostModelPatterns on PostModel {
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
    TResult Function(_PostModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostModel() when $default != null:
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
    TResult Function(_PostModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostModel():
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
    TResult? Function(_PostModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostModel() when $default != null:
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
            String name,
            String title,
            @JsonKey(name: "title_ar") String? titleAr,
            String description,
            @JsonKey(name: "description_ar") String? descriptionAr,
            double price,
            String currency,
            String condition,
            int likes,
            int comments,
            String? image)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostModel() when $default != null:
        return $default(
            _that.name,
            _that.title,
            _that.titleAr,
            _that.description,
            _that.descriptionAr,
            _that.price,
            _that.currency,
            _that.condition,
            _that.likes,
            _that.comments,
            _that.image);
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
            String name,
            String title,
            @JsonKey(name: "title_ar") String? titleAr,
            String description,
            @JsonKey(name: "description_ar") String? descriptionAr,
            double price,
            String currency,
            String condition,
            int likes,
            int comments,
            String? image)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostModel():
        return $default(
            _that.name,
            _that.title,
            _that.titleAr,
            _that.description,
            _that.descriptionAr,
            _that.price,
            _that.currency,
            _that.condition,
            _that.likes,
            _that.comments,
            _that.image);
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
            String name,
            String title,
            @JsonKey(name: "title_ar") String? titleAr,
            String description,
            @JsonKey(name: "description_ar") String? descriptionAr,
            double price,
            String currency,
            String condition,
            int likes,
            int comments,
            String? image)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostModel() when $default != null:
        return $default(
            _that.name,
            _that.title,
            _that.titleAr,
            _that.description,
            _that.descriptionAr,
            _that.price,
            _that.currency,
            _that.condition,
            _that.likes,
            _that.comments,
            _that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostModel implements PostModel {
  const _PostModel(
      {required this.name,
      required this.title,
      @JsonKey(name: "title_ar") required this.titleAr,
      required this.description,
      @JsonKey(name: "description_ar") required this.descriptionAr,
      required this.price,
      required this.currency,
      required this.condition,
      required this.likes,
      required this.comments,
      required this.image});
  factory _PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  @override
  final String name;
  @override
  final String title;
  @override
  @JsonKey(name: "title_ar")
  final String? titleAr;
  @override
  final String description;
  @override
  @JsonKey(name: "description_ar")
  final String? descriptionAr;
  @override
  final double price;
  @override
  final String currency;
  @override
  final String condition;
  @override
  final int likes;
  @override
  final int comments;
  @override
  final String? image;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostModelCopyWith<_PostModel> get copyWith =>
      __$PostModelCopyWithImpl<_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleAr, titleAr) || other.titleAr == titleAr) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionAr, descriptionAr) ||
                other.descriptionAr == descriptionAr) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      title,
      titleAr,
      description,
      descriptionAr,
      price,
      currency,
      condition,
      likes,
      comments,
      image);

  @override
  String toString() {
    return 'PostModel(name: $name, title: $title, titleAr: $titleAr, description: $description, descriptionAr: $descriptionAr, price: $price, currency: $currency, condition: $condition, likes: $likes, comments: $comments, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$PostModelCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$PostModelCopyWith(
          _PostModel value, $Res Function(_PostModel) _then) =
      __$PostModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String title,
      @JsonKey(name: "title_ar") String? titleAr,
      String description,
      @JsonKey(name: "description_ar") String? descriptionAr,
      double price,
      String currency,
      String condition,
      int likes,
      int comments,
      String? image});
}

/// @nodoc
class __$PostModelCopyWithImpl<$Res> implements _$PostModelCopyWith<$Res> {
  __$PostModelCopyWithImpl(this._self, this._then);

  final _PostModel _self;
  final $Res Function(_PostModel) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? titleAr = freezed,
    Object? description = null,
    Object? descriptionAr = freezed,
    Object? price = null,
    Object? currency = null,
    Object? condition = null,
    Object? likes = null,
    Object? comments = null,
    Object? image = freezed,
  }) {
    return _then(_PostModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleAr: freezed == titleAr
          ? _self.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionAr: freezed == descriptionAr
          ? _self.descriptionAr
          : descriptionAr // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _self.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _self.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
