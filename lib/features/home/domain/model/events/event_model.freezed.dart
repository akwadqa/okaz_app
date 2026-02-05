// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventModel {

@JsonKey(name: 'occasion_id') String get occasionId; String get title; String get type; String get date; String get time;@JsonKey(name: 'map_link') String get mapLink;@JsonKey(name: 'image_url') String get imageUrl;@JsonKey(name: 'okaze_template') String? get okazeTemplate;@JsonKey(name: 'confirmed_template') String? get confirmedTemplate;@JsonKey(name: 'declined_template') String? get declinedTemplate;@JsonKey(name: 'workflow_state') String get workflowState;@JsonKey(name: 'is_featured', includeFromJson: false, defaultValue: 0) int? get isFeatured; String get status; String get role;
/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventModelCopyWith<EventModel> get copyWith => _$EventModelCopyWithImpl<EventModel>(this as EventModel, _$identity);

  /// Serializes this EventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventModel&&(identical(other.occasionId, occasionId) || other.occasionId == occasionId)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.mapLink, mapLink) || other.mapLink == mapLink)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.okazeTemplate, okazeTemplate) || other.okazeTemplate == okazeTemplate)&&(identical(other.confirmedTemplate, confirmedTemplate) || other.confirmedTemplate == confirmedTemplate)&&(identical(other.declinedTemplate, declinedTemplate) || other.declinedTemplate == declinedTemplate)&&(identical(other.workflowState, workflowState) || other.workflowState == workflowState)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.status, status) || other.status == status)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,occasionId,title,type,date,time,mapLink,imageUrl,okazeTemplate,confirmedTemplate,declinedTemplate,workflowState,isFeatured,status,role);

@override
String toString() {
  return 'EventModel(occasionId: $occasionId, title: $title, type: $type, date: $date, time: $time, mapLink: $mapLink, imageUrl: $imageUrl, okazeTemplate: $okazeTemplate, confirmedTemplate: $confirmedTemplate, declinedTemplate: $declinedTemplate, workflowState: $workflowState, isFeatured: $isFeatured, status: $status, role: $role)';
}


}

/// @nodoc
abstract mixin class $EventModelCopyWith<$Res>  {
  factory $EventModelCopyWith(EventModel value, $Res Function(EventModel) _then) = _$EventModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'occasion_id') String occasionId, String title, String type, String date, String time,@JsonKey(name: 'map_link') String mapLink,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'okaze_template') String? okazeTemplate,@JsonKey(name: 'confirmed_template') String? confirmedTemplate,@JsonKey(name: 'declined_template') String? declinedTemplate,@JsonKey(name: 'workflow_state') String workflowState,@JsonKey(name: 'is_featured', includeFromJson: false, defaultValue: 0) int? isFeatured, String status, String role
});




}
/// @nodoc
class _$EventModelCopyWithImpl<$Res>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._self, this._then);

  final EventModel _self;
  final $Res Function(EventModel) _then;

/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? occasionId = null,Object? title = null,Object? type = null,Object? date = null,Object? time = null,Object? mapLink = null,Object? imageUrl = null,Object? okazeTemplate = freezed,Object? confirmedTemplate = freezed,Object? declinedTemplate = freezed,Object? workflowState = null,Object? isFeatured = freezed,Object? status = null,Object? role = null,}) {
  return _then(_self.copyWith(
occasionId: null == occasionId ? _self.occasionId : occasionId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,mapLink: null == mapLink ? _self.mapLink : mapLink // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,okazeTemplate: freezed == okazeTemplate ? _self.okazeTemplate : okazeTemplate // ignore: cast_nullable_to_non_nullable
as String?,confirmedTemplate: freezed == confirmedTemplate ? _self.confirmedTemplate : confirmedTemplate // ignore: cast_nullable_to_non_nullable
as String?,declinedTemplate: freezed == declinedTemplate ? _self.declinedTemplate : declinedTemplate // ignore: cast_nullable_to_non_nullable
as String?,workflowState: null == workflowState ? _self.workflowState : workflowState // ignore: cast_nullable_to_non_nullable
as String,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EventModel].
extension EventModelPatterns on EventModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventModel value)  $default,){
final _that = this;
switch (_that) {
case _EventModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventModel value)?  $default,){
final _that = this;
switch (_that) {
case _EventModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'occasion_id')  String occasionId,  String title,  String type,  String date,  String time, @JsonKey(name: 'map_link')  String mapLink, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'okaze_template')  String? okazeTemplate, @JsonKey(name: 'confirmed_template')  String? confirmedTemplate, @JsonKey(name: 'declined_template')  String? declinedTemplate, @JsonKey(name: 'workflow_state')  String workflowState, @JsonKey(name: 'is_featured', includeFromJson: false, defaultValue: 0)  int? isFeatured,  String status,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventModel() when $default != null:
return $default(_that.occasionId,_that.title,_that.type,_that.date,_that.time,_that.mapLink,_that.imageUrl,_that.okazeTemplate,_that.confirmedTemplate,_that.declinedTemplate,_that.workflowState,_that.isFeatured,_that.status,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'occasion_id')  String occasionId,  String title,  String type,  String date,  String time, @JsonKey(name: 'map_link')  String mapLink, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'okaze_template')  String? okazeTemplate, @JsonKey(name: 'confirmed_template')  String? confirmedTemplate, @JsonKey(name: 'declined_template')  String? declinedTemplate, @JsonKey(name: 'workflow_state')  String workflowState, @JsonKey(name: 'is_featured', includeFromJson: false, defaultValue: 0)  int? isFeatured,  String status,  String role)  $default,) {final _that = this;
switch (_that) {
case _EventModel():
return $default(_that.occasionId,_that.title,_that.type,_that.date,_that.time,_that.mapLink,_that.imageUrl,_that.okazeTemplate,_that.confirmedTemplate,_that.declinedTemplate,_that.workflowState,_that.isFeatured,_that.status,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'occasion_id')  String occasionId,  String title,  String type,  String date,  String time, @JsonKey(name: 'map_link')  String mapLink, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'okaze_template')  String? okazeTemplate, @JsonKey(name: 'confirmed_template')  String? confirmedTemplate, @JsonKey(name: 'declined_template')  String? declinedTemplate, @JsonKey(name: 'workflow_state')  String workflowState, @JsonKey(name: 'is_featured', includeFromJson: false, defaultValue: 0)  int? isFeatured,  String status,  String role)?  $default,) {final _that = this;
switch (_that) {
case _EventModel() when $default != null:
return $default(_that.occasionId,_that.title,_that.type,_that.date,_that.time,_that.mapLink,_that.imageUrl,_that.okazeTemplate,_that.confirmedTemplate,_that.declinedTemplate,_that.workflowState,_that.isFeatured,_that.status,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventModel implements EventModel {
  const _EventModel({@JsonKey(name: 'occasion_id') required this.occasionId, required this.title, required this.type, required this.date, required this.time, @JsonKey(name: 'map_link') required this.mapLink, @JsonKey(name: 'image_url') required this.imageUrl, @JsonKey(name: 'okaze_template') this.okazeTemplate, @JsonKey(name: 'confirmed_template') this.confirmedTemplate, @JsonKey(name: 'declined_template') this.declinedTemplate, @JsonKey(name: 'workflow_state') required this.workflowState, @JsonKey(name: 'is_featured', includeFromJson: false, defaultValue: 0) this.isFeatured, required this.status, required this.role});
  factory _EventModel.fromJson(Map<String, dynamic> json) => _$EventModelFromJson(json);

@override@JsonKey(name: 'occasion_id') final  String occasionId;
@override final  String title;
@override final  String type;
@override final  String date;
@override final  String time;
@override@JsonKey(name: 'map_link') final  String mapLink;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override@JsonKey(name: 'okaze_template') final  String? okazeTemplate;
@override@JsonKey(name: 'confirmed_template') final  String? confirmedTemplate;
@override@JsonKey(name: 'declined_template') final  String? declinedTemplate;
@override@JsonKey(name: 'workflow_state') final  String workflowState;
@override@JsonKey(name: 'is_featured', includeFromJson: false, defaultValue: 0) final  int? isFeatured;
@override final  String status;
@override final  String role;

/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventModelCopyWith<_EventModel> get copyWith => __$EventModelCopyWithImpl<_EventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventModel&&(identical(other.occasionId, occasionId) || other.occasionId == occasionId)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.mapLink, mapLink) || other.mapLink == mapLink)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.okazeTemplate, okazeTemplate) || other.okazeTemplate == okazeTemplate)&&(identical(other.confirmedTemplate, confirmedTemplate) || other.confirmedTemplate == confirmedTemplate)&&(identical(other.declinedTemplate, declinedTemplate) || other.declinedTemplate == declinedTemplate)&&(identical(other.workflowState, workflowState) || other.workflowState == workflowState)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.status, status) || other.status == status)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,occasionId,title,type,date,time,mapLink,imageUrl,okazeTemplate,confirmedTemplate,declinedTemplate,workflowState,isFeatured,status,role);

@override
String toString() {
  return 'EventModel(occasionId: $occasionId, title: $title, type: $type, date: $date, time: $time, mapLink: $mapLink, imageUrl: $imageUrl, okazeTemplate: $okazeTemplate, confirmedTemplate: $confirmedTemplate, declinedTemplate: $declinedTemplate, workflowState: $workflowState, isFeatured: $isFeatured, status: $status, role: $role)';
}


}

/// @nodoc
abstract mixin class _$EventModelCopyWith<$Res> implements $EventModelCopyWith<$Res> {
  factory _$EventModelCopyWith(_EventModel value, $Res Function(_EventModel) _then) = __$EventModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'occasion_id') String occasionId, String title, String type, String date, String time,@JsonKey(name: 'map_link') String mapLink,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'okaze_template') String? okazeTemplate,@JsonKey(name: 'confirmed_template') String? confirmedTemplate,@JsonKey(name: 'declined_template') String? declinedTemplate,@JsonKey(name: 'workflow_state') String workflowState,@JsonKey(name: 'is_featured', includeFromJson: false, defaultValue: 0) int? isFeatured, String status, String role
});




}
/// @nodoc
class __$EventModelCopyWithImpl<$Res>
    implements _$EventModelCopyWith<$Res> {
  __$EventModelCopyWithImpl(this._self, this._then);

  final _EventModel _self;
  final $Res Function(_EventModel) _then;

/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? occasionId = null,Object? title = null,Object? type = null,Object? date = null,Object? time = null,Object? mapLink = null,Object? imageUrl = null,Object? okazeTemplate = freezed,Object? confirmedTemplate = freezed,Object? declinedTemplate = freezed,Object? workflowState = null,Object? isFeatured = freezed,Object? status = null,Object? role = null,}) {
  return _then(_EventModel(
occasionId: null == occasionId ? _self.occasionId : occasionId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,mapLink: null == mapLink ? _self.mapLink : mapLink // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,okazeTemplate: freezed == okazeTemplate ? _self.okazeTemplate : okazeTemplate // ignore: cast_nullable_to_non_nullable
as String?,confirmedTemplate: freezed == confirmedTemplate ? _self.confirmedTemplate : confirmedTemplate // ignore: cast_nullable_to_non_nullable
as String?,declinedTemplate: freezed == declinedTemplate ? _self.declinedTemplate : declinedTemplate // ignore: cast_nullable_to_non_nullable
as String?,workflowState: null == workflowState ? _self.workflowState : workflowState // ignore: cast_nullable_to_non_nullable
as String,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
