// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyOtpResponseModel {
// @JsonKey(name: 'email') required String userId,
  @JsonKey(name: 'full_name')
  String get fullName;
  @JsonKey(name: 'mobile_no')
  String get mobileNo;
  String get token;

  /// Create a copy of VerifyOtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyOtpResponseModelCopyWith<VerifyOtpResponseModel> get copyWith =>
      _$VerifyOtpResponseModelCopyWithImpl<VerifyOtpResponseModel>(
          this as VerifyOtpResponseModel, _$identity);

  /// Serializes this VerifyOtpResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyOtpResponseModel &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, mobileNo, token);

  @override
  String toString() {
    return 'VerifyOtpResponseModel(fullName: $fullName, mobileNo: $mobileNo, token: $token)';
  }
}

/// @nodoc
abstract mixin class $VerifyOtpResponseModelCopyWith<$Res> {
  factory $VerifyOtpResponseModelCopyWith(VerifyOtpResponseModel value,
          $Res Function(VerifyOtpResponseModel) _then) =
      _$VerifyOtpResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'mobile_no') String mobileNo,
      String token});
}

/// @nodoc
class _$VerifyOtpResponseModelCopyWithImpl<$Res>
    implements $VerifyOtpResponseModelCopyWith<$Res> {
  _$VerifyOtpResponseModelCopyWithImpl(this._self, this._then);

  final VerifyOtpResponseModel _self;
  final $Res Function(VerifyOtpResponseModel) _then;

  /// Create a copy of VerifyOtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? mobileNo = null,
    Object? token = null,
  }) {
    return _then(_self.copyWith(
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _self.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerifyOtpResponseModel].
extension VerifyOtpResponseModelPatterns on VerifyOtpResponseModel {
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
    TResult Function(_VerifyOtpResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpResponseModel() when $default != null:
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
    TResult Function(_VerifyOtpResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpResponseModel():
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
    TResult? Function(_VerifyOtpResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpResponseModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'full_name') String fullName,
            @JsonKey(name: 'mobile_no') String mobileNo, String token)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpResponseModel() when $default != null:
        return $default(_that.fullName, _that.mobileNo, _that.token);
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
    TResult Function(@JsonKey(name: 'full_name') String fullName,
            @JsonKey(name: 'mobile_no') String mobileNo, String token)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpResponseModel():
        return $default(_that.fullName, _that.mobileNo, _that.token);
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
    TResult? Function(@JsonKey(name: 'full_name') String fullName,
            @JsonKey(name: 'mobile_no') String mobileNo, String token)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOtpResponseModel() when $default != null:
        return $default(_that.fullName, _that.mobileNo, _that.token);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerifyOtpResponseModel implements VerifyOtpResponseModel {
  const _VerifyOtpResponseModel(
      {@JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'mobile_no') required this.mobileNo,
      required this.token});
  factory _VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseModelFromJson(json);

// @JsonKey(name: 'email') required String userId,
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'mobile_no')
  final String mobileNo;
  @override
  final String token;

  /// Create a copy of VerifyOtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyOtpResponseModelCopyWith<_VerifyOtpResponseModel> get copyWith =>
      __$VerifyOtpResponseModelCopyWithImpl<_VerifyOtpResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifyOtpResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyOtpResponseModel &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, mobileNo, token);

  @override
  String toString() {
    return 'VerifyOtpResponseModel(fullName: $fullName, mobileNo: $mobileNo, token: $token)';
  }
}

/// @nodoc
abstract mixin class _$VerifyOtpResponseModelCopyWith<$Res>
    implements $VerifyOtpResponseModelCopyWith<$Res> {
  factory _$VerifyOtpResponseModelCopyWith(_VerifyOtpResponseModel value,
          $Res Function(_VerifyOtpResponseModel) _then) =
      __$VerifyOtpResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'mobile_no') String mobileNo,
      String token});
}

/// @nodoc
class __$VerifyOtpResponseModelCopyWithImpl<$Res>
    implements _$VerifyOtpResponseModelCopyWith<$Res> {
  __$VerifyOtpResponseModelCopyWithImpl(this._self, this._then);

  final _VerifyOtpResponseModel _self;
  final $Res Function(_VerifyOtpResponseModel) _then;

  /// Create a copy of VerifyOtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fullName = null,
    Object? mobileNo = null,
    Object? token = null,
  }) {
    return _then(_VerifyOtpResponseModel(
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _self.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
