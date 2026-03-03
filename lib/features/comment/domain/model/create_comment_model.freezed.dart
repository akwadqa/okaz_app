// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCommentModel {
  @JsonKey(name: 'post_id')
  String? get postId;
  String? get content;
  @JsonKey(name: 'parent_comment')
  String? get parentComment;

  /// Create a copy of CreateCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateCommentModelCopyWith<CreateCommentModel> get copyWith =>
      _$CreateCommentModelCopyWithImpl<CreateCommentModel>(
          this as CreateCommentModel, _$identity);

  /// Serializes this CreateCommentModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCommentModel &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.parentComment, parentComment) ||
                other.parentComment == parentComment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postId, content, parentComment);

  @override
  String toString() {
    return 'CreateCommentModel(postId: $postId, content: $content, parentComment: $parentComment)';
  }
}

/// @nodoc
abstract mixin class $CreateCommentModelCopyWith<$Res> {
  factory $CreateCommentModelCopyWith(
          CreateCommentModel value, $Res Function(CreateCommentModel) _then) =
      _$CreateCommentModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'post_id') String? postId,
      String? content,
      @JsonKey(name: 'parent_comment') String? parentComment});
}

/// @nodoc
class _$CreateCommentModelCopyWithImpl<$Res>
    implements $CreateCommentModelCopyWith<$Res> {
  _$CreateCommentModelCopyWithImpl(this._self, this._then);

  final CreateCommentModel _self;
  final $Res Function(CreateCommentModel) _then;

  /// Create a copy of CreateCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? content = freezed,
    Object? parentComment = freezed,
  }) {
    return _then(_self.copyWith(
      postId: freezed == postId
          ? _self.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      parentComment: freezed == parentComment
          ? _self.parentComment
          : parentComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateCommentModel].
extension CreateCommentModelPatterns on CreateCommentModel {
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
    TResult Function(_CreateCommentModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCommentModel() when $default != null:
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
    TResult Function(_CreateCommentModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommentModel():
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
    TResult? Function(_CreateCommentModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommentModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'post_id') String? postId, String? content,
            @JsonKey(name: 'parent_comment') String? parentComment)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCommentModel() when $default != null:
        return $default(_that.postId, _that.content, _that.parentComment);
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
    TResult Function(@JsonKey(name: 'post_id') String? postId, String? content,
            @JsonKey(name: 'parent_comment') String? parentComment)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommentModel():
        return $default(_that.postId, _that.content, _that.parentComment);
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
    TResult? Function(@JsonKey(name: 'post_id') String? postId, String? content,
            @JsonKey(name: 'parent_comment') String? parentComment)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommentModel() when $default != null:
        return $default(_that.postId, _that.content, _that.parentComment);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateCommentModel implements CreateCommentModel {
  const _CreateCommentModel(
      {@JsonKey(name: 'post_id') this.postId,
      this.content,
      @JsonKey(name: 'parent_comment') this.parentComment});
  factory _CreateCommentModel.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentModelFromJson(json);

  @override
  @JsonKey(name: 'post_id')
  final String? postId;
  @override
  final String? content;
  @override
  @JsonKey(name: 'parent_comment')
  final String? parentComment;

  /// Create a copy of CreateCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateCommentModelCopyWith<_CreateCommentModel> get copyWith =>
      __$CreateCommentModelCopyWithImpl<_CreateCommentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateCommentModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateCommentModel &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.parentComment, parentComment) ||
                other.parentComment == parentComment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postId, content, parentComment);

  @override
  String toString() {
    return 'CreateCommentModel(postId: $postId, content: $content, parentComment: $parentComment)';
  }
}

/// @nodoc
abstract mixin class _$CreateCommentModelCopyWith<$Res>
    implements $CreateCommentModelCopyWith<$Res> {
  factory _$CreateCommentModelCopyWith(
          _CreateCommentModel value, $Res Function(_CreateCommentModel) _then) =
      __$CreateCommentModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'post_id') String? postId,
      String? content,
      @JsonKey(name: 'parent_comment') String? parentComment});
}

/// @nodoc
class __$CreateCommentModelCopyWithImpl<$Res>
    implements _$CreateCommentModelCopyWith<$Res> {
  __$CreateCommentModelCopyWithImpl(this._self, this._then);

  final _CreateCommentModel _self;
  final $Res Function(_CreateCommentModel) _then;

  /// Create a copy of CreateCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? postId = freezed,
    Object? content = freezed,
    Object? parentComment = freezed,
  }) {
    return _then(_CreateCommentModel(
      postId: freezed == postId
          ? _self.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      parentComment: freezed == parentComment
          ? _self.parentComment
          : parentComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
