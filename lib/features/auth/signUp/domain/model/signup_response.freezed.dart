// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignupResponseModel {

@JsonKey(name: 'user_id') String get userId; String get subscriber;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName; String get email;@JsonKey(name: 'mobile_no') String get mobileNo;
/// Create a copy of SignupResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupResponseModelCopyWith<SignupResponseModel> get copyWith => _$SignupResponseModelCopyWithImpl<SignupResponseModel>(this as SignupResponseModel, _$identity);

  /// Serializes this SignupResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupResponseModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.subscriber, subscriber) || other.subscriber == subscriber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,subscriber,firstName,lastName,email,mobileNo);

@override
String toString() {
  return 'SignupResponseModel(userId: $userId, subscriber: $subscriber, firstName: $firstName, lastName: $lastName, email: $email, mobileNo: $mobileNo)';
}


}

/// @nodoc
abstract mixin class $SignupResponseModelCopyWith<$Res>  {
  factory $SignupResponseModelCopyWith(SignupResponseModel value, $Res Function(SignupResponseModel) _then) = _$SignupResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId, String subscriber,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String email,@JsonKey(name: 'mobile_no') String mobileNo
});




}
/// @nodoc
class _$SignupResponseModelCopyWithImpl<$Res>
    implements $SignupResponseModelCopyWith<$Res> {
  _$SignupResponseModelCopyWithImpl(this._self, this._then);

  final SignupResponseModel _self;
  final $Res Function(SignupResponseModel) _then;

/// Create a copy of SignupResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? subscriber = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? mobileNo = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,subscriber: null == subscriber ? _self.subscriber : subscriber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupResponseModel].
extension SignupResponseModelPatterns on SignupResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SignupResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SignupResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId,  String subscriber, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String email, @JsonKey(name: 'mobile_no')  String mobileNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupResponseModel() when $default != null:
return $default(_that.userId,_that.subscriber,_that.firstName,_that.lastName,_that.email,_that.mobileNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId,  String subscriber, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String email, @JsonKey(name: 'mobile_no')  String mobileNo)  $default,) {final _that = this;
switch (_that) {
case _SignupResponseModel():
return $default(_that.userId,_that.subscriber,_that.firstName,_that.lastName,_that.email,_that.mobileNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId,  String subscriber, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String email, @JsonKey(name: 'mobile_no')  String mobileNo)?  $default,) {final _that = this;
switch (_that) {
case _SignupResponseModel() when $default != null:
return $default(_that.userId,_that.subscriber,_that.firstName,_that.lastName,_that.email,_that.mobileNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignupResponseModel extends SignupResponseModel {
  const _SignupResponseModel({@JsonKey(name: 'user_id') required this.userId, required this.subscriber, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, required this.email, @JsonKey(name: 'mobile_no') required this.mobileNo}): super._();
  factory _SignupResponseModel.fromJson(Map<String, dynamic> json) => _$SignupResponseModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override final  String subscriber;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override final  String email;
@override@JsonKey(name: 'mobile_no') final  String mobileNo;

/// Create a copy of SignupResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupResponseModelCopyWith<_SignupResponseModel> get copyWith => __$SignupResponseModelCopyWithImpl<_SignupResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignupResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupResponseModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.subscriber, subscriber) || other.subscriber == subscriber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,subscriber,firstName,lastName,email,mobileNo);

@override
String toString() {
  return 'SignupResponseModel(userId: $userId, subscriber: $subscriber, firstName: $firstName, lastName: $lastName, email: $email, mobileNo: $mobileNo)';
}


}

/// @nodoc
abstract mixin class _$SignupResponseModelCopyWith<$Res> implements $SignupResponseModelCopyWith<$Res> {
  factory _$SignupResponseModelCopyWith(_SignupResponseModel value, $Res Function(_SignupResponseModel) _then) = __$SignupResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId, String subscriber,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String email,@JsonKey(name: 'mobile_no') String mobileNo
});




}
/// @nodoc
class __$SignupResponseModelCopyWithImpl<$Res>
    implements _$SignupResponseModelCopyWith<$Res> {
  __$SignupResponseModelCopyWithImpl(this._self, this._then);

  final _SignupResponseModel _self;
  final $Res Function(_SignupResponseModel) _then;

/// Create a copy of SignupResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? subscriber = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? mobileNo = null,}) {
  return _then(_SignupResponseModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,subscriber: null == subscriber ? _self.subscriber : subscriber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
