// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocation_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OcationTypeModel {

@JsonKey(name: 'image') String get image;@JsonKey(name: 'name') String get title;
/// Create a copy of OcationTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OcationTypeModelCopyWith<OcationTypeModel> get copyWith => _$OcationTypeModelCopyWithImpl<OcationTypeModel>(this as OcationTypeModel, _$identity);

  /// Serializes this OcationTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OcationTypeModel&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image,title);

@override
String toString() {
  return 'OcationTypeModel(image: $image, title: $title)';
}


}

/// @nodoc
abstract mixin class $OcationTypeModelCopyWith<$Res>  {
  factory $OcationTypeModelCopyWith(OcationTypeModel value, $Res Function(OcationTypeModel) _then) = _$OcationTypeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'image') String image,@JsonKey(name: 'name') String title
});




}
/// @nodoc
class _$OcationTypeModelCopyWithImpl<$Res>
    implements $OcationTypeModelCopyWith<$Res> {
  _$OcationTypeModelCopyWithImpl(this._self, this._then);

  final OcationTypeModel _self;
  final $Res Function(OcationTypeModel) _then;

/// Create a copy of OcationTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = null,Object? title = null,}) {
  return _then(_self.copyWith(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OcationTypeModel].
extension OcationTypeModelPatterns on OcationTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OcationTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OcationTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OcationTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _OcationTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OcationTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _OcationTypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'image')  String image, @JsonKey(name: 'name')  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OcationTypeModel() when $default != null:
return $default(_that.image,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'image')  String image, @JsonKey(name: 'name')  String title)  $default,) {final _that = this;
switch (_that) {
case _OcationTypeModel():
return $default(_that.image,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'image')  String image, @JsonKey(name: 'name')  String title)?  $default,) {final _that = this;
switch (_that) {
case _OcationTypeModel() when $default != null:
return $default(_that.image,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OcationTypeModel implements OcationTypeModel {
  const _OcationTypeModel({@JsonKey(name: 'image') required this.image, @JsonKey(name: 'name') required this.title});
  factory _OcationTypeModel.fromJson(Map<String, dynamic> json) => _$OcationTypeModelFromJson(json);

@override@JsonKey(name: 'image') final  String image;
@override@JsonKey(name: 'name') final  String title;

/// Create a copy of OcationTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OcationTypeModelCopyWith<_OcationTypeModel> get copyWith => __$OcationTypeModelCopyWithImpl<_OcationTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OcationTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OcationTypeModel&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image,title);

@override
String toString() {
  return 'OcationTypeModel(image: $image, title: $title)';
}


}

/// @nodoc
abstract mixin class _$OcationTypeModelCopyWith<$Res> implements $OcationTypeModelCopyWith<$Res> {
  factory _$OcationTypeModelCopyWith(_OcationTypeModel value, $Res Function(_OcationTypeModel) _then) = __$OcationTypeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'image') String image,@JsonKey(name: 'name') String title
});




}
/// @nodoc
class __$OcationTypeModelCopyWithImpl<$Res>
    implements _$OcationTypeModelCopyWith<$Res> {
  __$OcationTypeModelCopyWithImpl(this._self, this._then);

  final _OcationTypeModel _self;
  final $Res Function(_OcationTypeModel) _then;

/// Create a copy of OcationTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = null,Object? title = null,}) {
  return _then(_OcationTypeModel(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
