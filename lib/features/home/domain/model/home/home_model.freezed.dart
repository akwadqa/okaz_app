// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeModel {

 List<BannerModel> get banners; List<EventModel> get events;@JsonKey(name: 'featured_events') List<EventModel> get featuredEvents;@JsonKey(name: 'occasion_types') List<OcationTypeModel> get occasionTypes;
/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeModelCopyWith<HomeModel> get copyWith => _$HomeModelCopyWithImpl<HomeModel>(this as HomeModel, _$identity);

  /// Serializes this HomeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeModel&&const DeepCollectionEquality().equals(other.banners, banners)&&const DeepCollectionEquality().equals(other.events, events)&&const DeepCollectionEquality().equals(other.featuredEvents, featuredEvents)&&const DeepCollectionEquality().equals(other.occasionTypes, occasionTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(banners),const DeepCollectionEquality().hash(events),const DeepCollectionEquality().hash(featuredEvents),const DeepCollectionEquality().hash(occasionTypes));

@override
String toString() {
  return 'HomeModel(banners: $banners, events: $events, featuredEvents: $featuredEvents, occasionTypes: $occasionTypes)';
}


}

/// @nodoc
abstract mixin class $HomeModelCopyWith<$Res>  {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) _then) = _$HomeModelCopyWithImpl;
@useResult
$Res call({
 List<BannerModel> banners, List<EventModel> events,@JsonKey(name: 'featured_events') List<EventModel> featuredEvents,@JsonKey(name: 'occasion_types') List<OcationTypeModel> occasionTypes
});




}
/// @nodoc
class _$HomeModelCopyWithImpl<$Res>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._self, this._then);

  final HomeModel _self;
  final $Res Function(HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? banners = null,Object? events = null,Object? featuredEvents = null,Object? occasionTypes = null,}) {
  return _then(_self.copyWith(
banners: null == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerModel>,events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<EventModel>,featuredEvents: null == featuredEvents ? _self.featuredEvents : featuredEvents // ignore: cast_nullable_to_non_nullable
as List<EventModel>,occasionTypes: null == occasionTypes ? _self.occasionTypes : occasionTypes // ignore: cast_nullable_to_non_nullable
as List<OcationTypeModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeModel].
extension HomeModelPatterns on HomeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BannerModel> banners,  List<EventModel> events, @JsonKey(name: 'featured_events')  List<EventModel> featuredEvents, @JsonKey(name: 'occasion_types')  List<OcationTypeModel> occasionTypes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.banners,_that.events,_that.featuredEvents,_that.occasionTypes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BannerModel> banners,  List<EventModel> events, @JsonKey(name: 'featured_events')  List<EventModel> featuredEvents, @JsonKey(name: 'occasion_types')  List<OcationTypeModel> occasionTypes)  $default,) {final _that = this;
switch (_that) {
case _HomeModel():
return $default(_that.banners,_that.events,_that.featuredEvents,_that.occasionTypes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BannerModel> banners,  List<EventModel> events, @JsonKey(name: 'featured_events')  List<EventModel> featuredEvents, @JsonKey(name: 'occasion_types')  List<OcationTypeModel> occasionTypes)?  $default,) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.banners,_that.events,_that.featuredEvents,_that.occasionTypes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeModel implements HomeModel {
   _HomeModel({required final  List<BannerModel> banners, required final  List<EventModel> events, @JsonKey(name: 'featured_events') required final  List<EventModel> featuredEvents, @JsonKey(name: 'occasion_types') required final  List<OcationTypeModel> occasionTypes}): _banners = banners,_events = events,_featuredEvents = featuredEvents,_occasionTypes = occasionTypes;
  factory _HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);

 final  List<BannerModel> _banners;
@override List<BannerModel> get banners {
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_banners);
}

 final  List<EventModel> _events;
@override List<EventModel> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

 final  List<EventModel> _featuredEvents;
@override@JsonKey(name: 'featured_events') List<EventModel> get featuredEvents {
  if (_featuredEvents is EqualUnmodifiableListView) return _featuredEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_featuredEvents);
}

 final  List<OcationTypeModel> _occasionTypes;
@override@JsonKey(name: 'occasion_types') List<OcationTypeModel> get occasionTypes {
  if (_occasionTypes is EqualUnmodifiableListView) return _occasionTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_occasionTypes);
}


/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeModelCopyWith<_HomeModel> get copyWith => __$HomeModelCopyWithImpl<_HomeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeModel&&const DeepCollectionEquality().equals(other._banners, _banners)&&const DeepCollectionEquality().equals(other._events, _events)&&const DeepCollectionEquality().equals(other._featuredEvents, _featuredEvents)&&const DeepCollectionEquality().equals(other._occasionTypes, _occasionTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_banners),const DeepCollectionEquality().hash(_events),const DeepCollectionEquality().hash(_featuredEvents),const DeepCollectionEquality().hash(_occasionTypes));

@override
String toString() {
  return 'HomeModel(banners: $banners, events: $events, featuredEvents: $featuredEvents, occasionTypes: $occasionTypes)';
}


}

/// @nodoc
abstract mixin class _$HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$HomeModelCopyWith(_HomeModel value, $Res Function(_HomeModel) _then) = __$HomeModelCopyWithImpl;
@override @useResult
$Res call({
 List<BannerModel> banners, List<EventModel> events,@JsonKey(name: 'featured_events') List<EventModel> featuredEvents,@JsonKey(name: 'occasion_types') List<OcationTypeModel> occasionTypes
});




}
/// @nodoc
class __$HomeModelCopyWithImpl<$Res>
    implements _$HomeModelCopyWith<$Res> {
  __$HomeModelCopyWithImpl(this._self, this._then);

  final _HomeModel _self;
  final $Res Function(_HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? banners = null,Object? events = null,Object? featuredEvents = null,Object? occasionTypes = null,}) {
  return _then(_HomeModel(
banners: null == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerModel>,events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<EventModel>,featuredEvents: null == featuredEvents ? _self._featuredEvents : featuredEvents // ignore: cast_nullable_to_non_nullable
as List<EventModel>,occasionTypes: null == occasionTypes ? _self._occasionTypes : occasionTypes // ignore: cast_nullable_to_non_nullable
as List<OcationTypeModel>,
  ));
}


}

// dart format on
