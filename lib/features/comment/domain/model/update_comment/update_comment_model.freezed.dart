// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateCommentModel {
  @JsonKey(name: 'comment_id')
  String? get commentId;
  @JsonKey(name: 'updated_content')
  String? get updatedContent;

  /// Create a copy of UpdateCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateCommentModelCopyWith<UpdateCommentModel> get copyWith =>
      _$UpdateCommentModelCopyWithImpl<UpdateCommentModel>(
          this as UpdateCommentModel, _$identity);

  /// Serializes this UpdateCommentModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateCommentModel &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.updatedContent, updatedContent) ||
                other.updatedContent == updatedContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, commentId, updatedContent);

  @override
  String toString() {
    return 'UpdateCommentModel(commentId: $commentId, updatedContent: $updatedContent)';
  }
}

/// @nodoc
abstract mixin class $UpdateCommentModelCopyWith<$Res> {
  factory $UpdateCommentModelCopyWith(
          UpdateCommentModel value, $Res Function(UpdateCommentModel) _then) =
      _$UpdateCommentModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'comment_id') String? commentId,
      @JsonKey(name: 'updated_content') String? updatedContent});
}

/// @nodoc
class _$UpdateCommentModelCopyWithImpl<$Res>
    implements $UpdateCommentModelCopyWith<$Res> {
  _$UpdateCommentModelCopyWithImpl(this._self, this._then);

  final UpdateCommentModel _self;
  final $Res Function(UpdateCommentModel) _then;

  /// Create a copy of UpdateCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = freezed,
    Object? updatedContent = freezed,
  }) {
    return _then(_self.copyWith(
      commentId: freezed == commentId
          ? _self.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedContent: freezed == updatedContent
          ? _self.updatedContent
          : updatedContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateCommentModel].
extension UpdateCommentModelPatterns on UpdateCommentModel {
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
    TResult Function(_UpdateCommentModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateCommentModel() when $default != null:
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
    TResult Function(_UpdateCommentModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCommentModel():
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
    TResult? Function(_UpdateCommentModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCommentModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'comment_id') String? commentId,
            @JsonKey(name: 'updated_content') String? updatedContent)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateCommentModel() when $default != null:
        return $default(_that.commentId, _that.updatedContent);
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
    TResult Function(@JsonKey(name: 'comment_id') String? commentId,
            @JsonKey(name: 'updated_content') String? updatedContent)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCommentModel():
        return $default(_that.commentId, _that.updatedContent);
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
    TResult? Function(@JsonKey(name: 'comment_id') String? commentId,
            @JsonKey(name: 'updated_content') String? updatedContent)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCommentModel() when $default != null:
        return $default(_that.commentId, _that.updatedContent);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateCommentModel implements UpdateCommentModel {
  const _UpdateCommentModel(
      {@JsonKey(name: 'comment_id') this.commentId,
      @JsonKey(name: 'updated_content') this.updatedContent});
  factory _UpdateCommentModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateCommentModelFromJson(json);

  @override
  @JsonKey(name: 'comment_id')
  final String? commentId;
  @override
  @JsonKey(name: 'updated_content')
  final String? updatedContent;

  /// Create a copy of UpdateCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateCommentModelCopyWith<_UpdateCommentModel> get copyWith =>
      __$UpdateCommentModelCopyWithImpl<_UpdateCommentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateCommentModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateCommentModel &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.updatedContent, updatedContent) ||
                other.updatedContent == updatedContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, commentId, updatedContent);

  @override
  String toString() {
    return 'UpdateCommentModel(commentId: $commentId, updatedContent: $updatedContent)';
  }
}

/// @nodoc
abstract mixin class _$UpdateCommentModelCopyWith<$Res>
    implements $UpdateCommentModelCopyWith<$Res> {
  factory _$UpdateCommentModelCopyWith(
          _UpdateCommentModel value, $Res Function(_UpdateCommentModel) _then) =
      __$UpdateCommentModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'comment_id') String? commentId,
      @JsonKey(name: 'updated_content') String? updatedContent});
}

/// @nodoc
class __$UpdateCommentModelCopyWithImpl<$Res>
    implements _$UpdateCommentModelCopyWith<$Res> {
  __$UpdateCommentModelCopyWithImpl(this._self, this._then);

  final _UpdateCommentModel _self;
  final $Res Function(_UpdateCommentModel) _then;

  /// Create a copy of UpdateCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? commentId = freezed,
    Object? updatedContent = freezed,
  }) {
    return _then(_UpdateCommentModel(
      commentId: freezed == commentId
          ? _self.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedContent: freezed == updatedContent
          ? _self.updatedContent
          : updatedContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
