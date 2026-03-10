// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcategory_attribute_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubcategoryAttributeModel {
  @JsonKey(name: 'attribute')
  String get attributeId;
  String get title;
  @JsonKey(name: 'data_type')
  String get dataType;
  @JsonKey(name: 'is_main_filter')
  int get isMainFilter;
  @JsonKey(name: 'is_filterable')
  int get isFilterable;
  List<String> get values;

  /// Create a copy of SubcategoryAttributeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubcategoryAttributeModelCopyWith<SubcategoryAttributeModel> get copyWith =>
      _$SubcategoryAttributeModelCopyWithImpl<SubcategoryAttributeModel>(
          this as SubcategoryAttributeModel, _$identity);

  /// Serializes this SubcategoryAttributeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubcategoryAttributeModel &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
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
  int get hashCode => Object.hash(runtimeType, attributeId, title, dataType,
      isMainFilter, isFilterable, const DeepCollectionEquality().hash(values));

  @override
  String toString() {
    return 'SubcategoryAttributeModel(attributeId: $attributeId, title: $title, dataType: $dataType, isMainFilter: $isMainFilter, isFilterable: $isFilterable, values: $values)';
  }
}

/// @nodoc
abstract mixin class $SubcategoryAttributeModelCopyWith<$Res> {
  factory $SubcategoryAttributeModelCopyWith(SubcategoryAttributeModel value,
          $Res Function(SubcategoryAttributeModel) _then) =
      _$SubcategoryAttributeModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'attribute') String attributeId,
      String title,
      @JsonKey(name: 'data_type') String dataType,
      @JsonKey(name: 'is_main_filter') int isMainFilter,
      @JsonKey(name: 'is_filterable') int isFilterable,
      List<String> values});
}

/// @nodoc
class _$SubcategoryAttributeModelCopyWithImpl<$Res>
    implements $SubcategoryAttributeModelCopyWith<$Res> {
  _$SubcategoryAttributeModelCopyWithImpl(this._self, this._then);

  final SubcategoryAttributeModel _self;
  final $Res Function(SubcategoryAttributeModel) _then;

  /// Create a copy of SubcategoryAttributeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = null,
    Object? title = null,
    Object? dataType = null,
    Object? isMainFilter = null,
    Object? isFilterable = null,
    Object? values = null,
  }) {
    return _then(_self.copyWith(
      attributeId: null == attributeId
          ? _self.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dataType: null == dataType
          ? _self.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String,
      isMainFilter: null == isMainFilter
          ? _self.isMainFilter
          : isMainFilter // ignore: cast_nullable_to_non_nullable
              as int,
      isFilterable: null == isFilterable
          ? _self.isFilterable
          : isFilterable // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _self.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SubcategoryAttributeModel].
extension SubcategoryAttributeModelPatterns on SubcategoryAttributeModel {
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
    TResult Function(_SubcategoryAttributeModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubcategoryAttributeModel() when $default != null:
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
    TResult Function(_SubcategoryAttributeModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubcategoryAttributeModel():
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
    TResult? Function(_SubcategoryAttributeModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubcategoryAttributeModel() when $default != null:
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
            @JsonKey(name: 'attribute') String attributeId,
            String title,
            @JsonKey(name: 'data_type') String dataType,
            @JsonKey(name: 'is_main_filter') int isMainFilter,
            @JsonKey(name: 'is_filterable') int isFilterable,
            List<String> values)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubcategoryAttributeModel() when $default != null:
        return $default(_that.attributeId, _that.title, _that.dataType,
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
            @JsonKey(name: 'attribute') String attributeId,
            String title,
            @JsonKey(name: 'data_type') String dataType,
            @JsonKey(name: 'is_main_filter') int isMainFilter,
            @JsonKey(name: 'is_filterable') int isFilterable,
            List<String> values)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubcategoryAttributeModel():
        return $default(_that.attributeId, _that.title, _that.dataType,
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
            @JsonKey(name: 'attribute') String attributeId,
            String title,
            @JsonKey(name: 'data_type') String dataType,
            @JsonKey(name: 'is_main_filter') int isMainFilter,
            @JsonKey(name: 'is_filterable') int isFilterable,
            List<String> values)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubcategoryAttributeModel() when $default != null:
        return $default(_that.attributeId, _that.title, _that.dataType,
            _that.isMainFilter, _that.isFilterable, _that.values);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SubcategoryAttributeModel implements SubcategoryAttributeModel {
  const _SubcategoryAttributeModel(
      {@JsonKey(name: 'attribute') required this.attributeId,
      required this.title,
      @JsonKey(name: 'data_type') required this.dataType,
      @JsonKey(name: 'is_main_filter') required this.isMainFilter,
      @JsonKey(name: 'is_filterable') required this.isFilterable,
      final List<String> values = const []})
      : _values = values;
  factory _SubcategoryAttributeModel.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryAttributeModelFromJson(json);

  @override
  @JsonKey(name: 'attribute')
  final String attributeId;
  @override
  final String title;
  @override
  @JsonKey(name: 'data_type')
  final String dataType;
  @override
  @JsonKey(name: 'is_main_filter')
  final int isMainFilter;
  @override
  @JsonKey(name: 'is_filterable')
  final int isFilterable;
  final List<String> _values;
  @override
  @JsonKey()
  List<String> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  /// Create a copy of SubcategoryAttributeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubcategoryAttributeModelCopyWith<_SubcategoryAttributeModel>
      get copyWith =>
          __$SubcategoryAttributeModelCopyWithImpl<_SubcategoryAttributeModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubcategoryAttributeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubcategoryAttributeModel &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
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
  int get hashCode => Object.hash(runtimeType, attributeId, title, dataType,
      isMainFilter, isFilterable, const DeepCollectionEquality().hash(_values));

  @override
  String toString() {
    return 'SubcategoryAttributeModel(attributeId: $attributeId, title: $title, dataType: $dataType, isMainFilter: $isMainFilter, isFilterable: $isFilterable, values: $values)';
  }
}

/// @nodoc
abstract mixin class _$SubcategoryAttributeModelCopyWith<$Res>
    implements $SubcategoryAttributeModelCopyWith<$Res> {
  factory _$SubcategoryAttributeModelCopyWith(_SubcategoryAttributeModel value,
          $Res Function(_SubcategoryAttributeModel) _then) =
      __$SubcategoryAttributeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attribute') String attributeId,
      String title,
      @JsonKey(name: 'data_type') String dataType,
      @JsonKey(name: 'is_main_filter') int isMainFilter,
      @JsonKey(name: 'is_filterable') int isFilterable,
      List<String> values});
}

/// @nodoc
class __$SubcategoryAttributeModelCopyWithImpl<$Res>
    implements _$SubcategoryAttributeModelCopyWith<$Res> {
  __$SubcategoryAttributeModelCopyWithImpl(this._self, this._then);

  final _SubcategoryAttributeModel _self;
  final $Res Function(_SubcategoryAttributeModel) _then;

  /// Create a copy of SubcategoryAttributeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? attributeId = null,
    Object? title = null,
    Object? dataType = null,
    Object? isMainFilter = null,
    Object? isFilterable = null,
    Object? values = null,
  }) {
    return _then(_SubcategoryAttributeModel(
      attributeId: null == attributeId
          ? _self.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dataType: null == dataType
          ? _self.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String,
      isMainFilter: null == isMainFilter
          ? _self.isMainFilter
          : isMainFilter // ignore: cast_nullable_to_non_nullable
              as int,
      isFilterable: null == isFilterable
          ? _self.isFilterable
          : isFilterable // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _self._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
