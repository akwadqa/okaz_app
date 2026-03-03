// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_notifications_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppNotificationsModel {
// @JsonKey(name: 'for_user') required String forUser,
  @JsonKey(name: 'content')
  String get emailContent;
  String get subject;
  @JsonKey(name: "creation")
  DateTime get creation;

  /// Create a copy of AppNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppNotificationsModelCopyWith<AppNotificationsModel> get copyWith =>
      _$AppNotificationsModelCopyWithImpl<AppNotificationsModel>(
          this as AppNotificationsModel, _$identity);

  /// Serializes this AppNotificationsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppNotificationsModel &&
            (identical(other.emailContent, emailContent) ||
                other.emailContent == emailContent) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.creation, creation) ||
                other.creation == creation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, emailContent, subject, creation);

  @override
  String toString() {
    return 'AppNotificationsModel(emailContent: $emailContent, subject: $subject, creation: $creation)';
  }
}

/// @nodoc
abstract mixin class $AppNotificationsModelCopyWith<$Res> {
  factory $AppNotificationsModelCopyWith(AppNotificationsModel value,
          $Res Function(AppNotificationsModel) _then) =
      _$AppNotificationsModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String emailContent,
      String subject,
      @JsonKey(name: "creation") DateTime creation});
}

/// @nodoc
class _$AppNotificationsModelCopyWithImpl<$Res>
    implements $AppNotificationsModelCopyWith<$Res> {
  _$AppNotificationsModelCopyWithImpl(this._self, this._then);

  final AppNotificationsModel _self;
  final $Res Function(AppNotificationsModel) _then;

  /// Create a copy of AppNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailContent = null,
    Object? subject = null,
    Object? creation = null,
  }) {
    return _then(_self.copyWith(
      emailContent: null == emailContent
          ? _self.emailContent
          : emailContent // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      creation: null == creation
          ? _self.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppNotificationsModel].
extension AppNotificationsModelPatterns on AppNotificationsModel {
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
    TResult Function(_AppNotificationsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppNotificationsModel() when $default != null:
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
    TResult Function(_AppNotificationsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppNotificationsModel():
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
    TResult? Function(_AppNotificationsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppNotificationsModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'content') String emailContent,
            String subject, @JsonKey(name: "creation") DateTime creation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppNotificationsModel() when $default != null:
        return $default(_that.emailContent, _that.subject, _that.creation);
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
    TResult Function(@JsonKey(name: 'content') String emailContent,
            String subject, @JsonKey(name: "creation") DateTime creation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppNotificationsModel():
        return $default(_that.emailContent, _that.subject, _that.creation);
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
    TResult? Function(@JsonKey(name: 'content') String emailContent,
            String subject, @JsonKey(name: "creation") DateTime creation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppNotificationsModel() when $default != null:
        return $default(_that.emailContent, _that.subject, _that.creation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppNotificationsModel implements AppNotificationsModel {
  const _AppNotificationsModel(
      {@JsonKey(name: 'content') required this.emailContent,
      required this.subject,
      @JsonKey(name: "creation") required this.creation});
  factory _AppNotificationsModel.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationsModelFromJson(json);

// @JsonKey(name: 'for_user') required String forUser,
  @override
  @JsonKey(name: 'content')
  final String emailContent;
  @override
  final String subject;
  @override
  @JsonKey(name: "creation")
  final DateTime creation;

  /// Create a copy of AppNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppNotificationsModelCopyWith<_AppNotificationsModel> get copyWith =>
      __$AppNotificationsModelCopyWithImpl<_AppNotificationsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppNotificationsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppNotificationsModel &&
            (identical(other.emailContent, emailContent) ||
                other.emailContent == emailContent) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.creation, creation) ||
                other.creation == creation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, emailContent, subject, creation);

  @override
  String toString() {
    return 'AppNotificationsModel(emailContent: $emailContent, subject: $subject, creation: $creation)';
  }
}

/// @nodoc
abstract mixin class _$AppNotificationsModelCopyWith<$Res>
    implements $AppNotificationsModelCopyWith<$Res> {
  factory _$AppNotificationsModelCopyWith(_AppNotificationsModel value,
          $Res Function(_AppNotificationsModel) _then) =
      __$AppNotificationsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String emailContent,
      String subject,
      @JsonKey(name: "creation") DateTime creation});
}

/// @nodoc
class __$AppNotificationsModelCopyWithImpl<$Res>
    implements _$AppNotificationsModelCopyWith<$Res> {
  __$AppNotificationsModelCopyWithImpl(this._self, this._then);

  final _AppNotificationsModel _self;
  final $Res Function(_AppNotificationsModel) _then;

  /// Create a copy of AppNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? emailContent = null,
    Object? subject = null,
    Object? creation = null,
  }) {
    return _then(_AppNotificationsModel(
      emailContent: null == emailContent
          ? _self.emailContent
          : emailContent // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      creation: null == creation
          ? _self.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
