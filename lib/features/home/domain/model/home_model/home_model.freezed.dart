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

 List<BannerModel?>? get banners; List<CategoryModel?>? get categories;
/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeModelCopyWith<HomeModel> get copyWith => _$HomeModelCopyWithImpl<HomeModel>(this as HomeModel, _$identity);

  /// Serializes this HomeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeModel&&const DeepCollectionEquality().equals(other.banners, banners)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(banners),const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'HomeModel(banners: $banners, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $HomeModelCopyWith<$Res>  {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) _then) = _$HomeModelCopyWithImpl;
@useResult
$Res call({
 List<BannerModel?>? banners, List<CategoryModel?>? categories
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
@pragma('vm:prefer-inline') @override $Res call({Object? banners = freezed,Object? categories = freezed,}) {
  return _then(_self.copyWith(
banners: freezed == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerModel?>?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel?>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BannerModel?>? banners,  List<CategoryModel?>? categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.banners,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BannerModel?>? banners,  List<CategoryModel?>? categories)  $default,) {final _that = this;
switch (_that) {
case _HomeModel():
return $default(_that.banners,_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BannerModel?>? banners,  List<CategoryModel?>? categories)?  $default,) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.banners,_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeModel implements HomeModel {
  const _HomeModel({final  List<BannerModel?>? banners, final  List<CategoryModel?>? categories}): _banners = banners,_categories = categories;
  factory _HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);

 final  List<BannerModel?>? _banners;
@override List<BannerModel?>? get banners {
  final value = _banners;
  if (value == null) return null;
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CategoryModel?>? _categories;
@override List<CategoryModel?>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeModel&&const DeepCollectionEquality().equals(other._banners, _banners)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_banners),const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'HomeModel(banners: $banners, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$HomeModelCopyWith(_HomeModel value, $Res Function(_HomeModel) _then) = __$HomeModelCopyWithImpl;
@override @useResult
$Res call({
 List<BannerModel?>? banners, List<CategoryModel?>? categories
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
@override @pragma('vm:prefer-inline') $Res call({Object? banners = freezed,Object? categories = freezed,}) {
  return _then(_HomeModel(
banners: freezed == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerModel?>?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel?>?,
  ));
}


}


/// @nodoc
mixin _$BannerModel {

@JsonKey(name: 'category_name') String? get categoryName;@JsonKey(name: 'category_name_ar') String? get categoryNameAr; String? get image;
/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerModelCopyWith<BannerModel> get copyWith => _$BannerModelCopyWithImpl<BannerModel>(this as BannerModel, _$identity);

  /// Serializes this BannerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerModel&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryNameAr, categoryNameAr) || other.categoryNameAr == categoryNameAr)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryName,categoryNameAr,image);

@override
String toString() {
  return 'BannerModel(categoryName: $categoryName, categoryNameAr: $categoryNameAr, image: $image)';
}


}

/// @nodoc
abstract mixin class $BannerModelCopyWith<$Res>  {
  factory $BannerModelCopyWith(BannerModel value, $Res Function(BannerModel) _then) = _$BannerModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'category_name') String? categoryName,@JsonKey(name: 'category_name_ar') String? categoryNameAr, String? image
});




}
/// @nodoc
class _$BannerModelCopyWithImpl<$Res>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._self, this._then);

  final BannerModel _self;
  final $Res Function(BannerModel) _then;

/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryName = freezed,Object? categoryNameAr = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categoryNameAr: freezed == categoryNameAr ? _self.categoryNameAr : categoryNameAr // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BannerModel].
extension BannerModelPatterns on BannerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BannerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BannerModel value)  $default,){
final _that = this;
switch (_that) {
case _BannerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BannerModel value)?  $default,){
final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_name_ar')  String? categoryNameAr,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
return $default(_that.categoryName,_that.categoryNameAr,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_name_ar')  String? categoryNameAr,  String? image)  $default,) {final _that = this;
switch (_that) {
case _BannerModel():
return $default(_that.categoryName,_that.categoryNameAr,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_name_ar')  String? categoryNameAr,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _BannerModel() when $default != null:
return $default(_that.categoryName,_that.categoryNameAr,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BannerModel implements BannerModel {
  const _BannerModel({@JsonKey(name: 'category_name') this.categoryName, @JsonKey(name: 'category_name_ar') this.categoryNameAr, this.image});
  factory _BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);

@override@JsonKey(name: 'category_name') final  String? categoryName;
@override@JsonKey(name: 'category_name_ar') final  String? categoryNameAr;
@override final  String? image;

/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerModelCopyWith<_BannerModel> get copyWith => __$BannerModelCopyWithImpl<_BannerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BannerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BannerModel&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryNameAr, categoryNameAr) || other.categoryNameAr == categoryNameAr)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryName,categoryNameAr,image);

@override
String toString() {
  return 'BannerModel(categoryName: $categoryName, categoryNameAr: $categoryNameAr, image: $image)';
}


}

/// @nodoc
abstract mixin class _$BannerModelCopyWith<$Res> implements $BannerModelCopyWith<$Res> {
  factory _$BannerModelCopyWith(_BannerModel value, $Res Function(_BannerModel) _then) = __$BannerModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'category_name') String? categoryName,@JsonKey(name: 'category_name_ar') String? categoryNameAr, String? image
});




}
/// @nodoc
class __$BannerModelCopyWithImpl<$Res>
    implements _$BannerModelCopyWith<$Res> {
  __$BannerModelCopyWithImpl(this._self, this._then);

  final _BannerModel _self;
  final $Res Function(_BannerModel) _then;

/// Create a copy of BannerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryName = freezed,Object? categoryNameAr = freezed,Object? image = freezed,}) {
  return _then(_BannerModel(
categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categoryNameAr: freezed == categoryNameAr ? _self.categoryNameAr : categoryNameAr // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CategoryModel {

 String? get name;@JsonKey(name: 'category_name') String? get categoryName;@JsonKey(name: 'category_name_ar') String? get categoryNameAr; List<SubCategoryModel?>? get subcategories;
/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<CategoryModel> get copyWith => _$CategoryModelCopyWithImpl<CategoryModel>(this as CategoryModel, _$identity);

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryNameAr, categoryNameAr) || other.categoryNameAr == categoryNameAr)&&const DeepCollectionEquality().equals(other.subcategories, subcategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,categoryName,categoryNameAr,const DeepCollectionEquality().hash(subcategories));

@override
String toString() {
  return 'CategoryModel(name: $name, categoryName: $categoryName, categoryNameAr: $categoryNameAr, subcategories: $subcategories)';
}


}

/// @nodoc
abstract mixin class $CategoryModelCopyWith<$Res>  {
  factory $CategoryModelCopyWith(CategoryModel value, $Res Function(CategoryModel) _then) = _$CategoryModelCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'category_name') String? categoryName,@JsonKey(name: 'category_name_ar') String? categoryNameAr, List<SubCategoryModel?>? subcategories
});




}
/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._self, this._then);

  final CategoryModel _self;
  final $Res Function(CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? categoryName = freezed,Object? categoryNameAr = freezed,Object? subcategories = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categoryNameAr: freezed == categoryNameAr ? _self.categoryNameAr : categoryNameAr // ignore: cast_nullable_to_non_nullable
as String?,subcategories: freezed == subcategories ? _self.subcategories : subcategories // ignore: cast_nullable_to_non_nullable
as List<SubCategoryModel?>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryModel].
extension CategoryModelPatterns on CategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_name_ar')  String? categoryNameAr,  List<SubCategoryModel?>? subcategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.name,_that.categoryName,_that.categoryNameAr,_that.subcategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_name_ar')  String? categoryNameAr,  List<SubCategoryModel?>? subcategories)  $default,) {final _that = this;
switch (_that) {
case _CategoryModel():
return $default(_that.name,_that.categoryName,_that.categoryNameAr,_that.subcategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_name_ar')  String? categoryNameAr,  List<SubCategoryModel?>? subcategories)?  $default,) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.name,_that.categoryName,_that.categoryNameAr,_that.subcategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryModel implements CategoryModel {
  const _CategoryModel({this.name, @JsonKey(name: 'category_name') this.categoryName, @JsonKey(name: 'category_name_ar') this.categoryNameAr, final  List<SubCategoryModel?>? subcategories}): _subcategories = subcategories;
  factory _CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'category_name') final  String? categoryName;
@override@JsonKey(name: 'category_name_ar') final  String? categoryNameAr;
 final  List<SubCategoryModel?>? _subcategories;
@override List<SubCategoryModel?>? get subcategories {
  final value = _subcategories;
  if (value == null) return null;
  if (_subcategories is EqualUnmodifiableListView) return _subcategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryModelCopyWith<_CategoryModel> get copyWith => __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryNameAr, categoryNameAr) || other.categoryNameAr == categoryNameAr)&&const DeepCollectionEquality().equals(other._subcategories, _subcategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,categoryName,categoryNameAr,const DeepCollectionEquality().hash(_subcategories));

@override
String toString() {
  return 'CategoryModel(name: $name, categoryName: $categoryName, categoryNameAr: $categoryNameAr, subcategories: $subcategories)';
}


}

/// @nodoc
abstract mixin class _$CategoryModelCopyWith<$Res> implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(_CategoryModel value, $Res Function(_CategoryModel) _then) = __$CategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'category_name') String? categoryName,@JsonKey(name: 'category_name_ar') String? categoryNameAr, List<SubCategoryModel?>? subcategories
});




}
/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(this._self, this._then);

  final _CategoryModel _self;
  final $Res Function(_CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? categoryName = freezed,Object? categoryNameAr = freezed,Object? subcategories = freezed,}) {
  return _then(_CategoryModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categoryNameAr: freezed == categoryNameAr ? _self.categoryNameAr : categoryNameAr // ignore: cast_nullable_to_non_nullable
as String?,subcategories: freezed == subcategories ? _self._subcategories : subcategories // ignore: cast_nullable_to_non_nullable
as List<SubCategoryModel?>?,
  ));
}


}


/// @nodoc
mixin _$SubCategoryModel {

 String? get name;@JsonKey(name: 'category_name') String? get categoryName;@JsonKey(name: 'category_name_ar') String? get categoryNameAr; String? get image;
/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryModelCopyWith<SubCategoryModel> get copyWith => _$SubCategoryModelCopyWithImpl<SubCategoryModel>(this as SubCategoryModel, _$identity);

  /// Serializes this SubCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryNameAr, categoryNameAr) || other.categoryNameAr == categoryNameAr)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,categoryName,categoryNameAr,image);

@override
String toString() {
  return 'SubCategoryModel(name: $name, categoryName: $categoryName, categoryNameAr: $categoryNameAr, image: $image)';
}


}

/// @nodoc
abstract mixin class $SubCategoryModelCopyWith<$Res>  {
  factory $SubCategoryModelCopyWith(SubCategoryModel value, $Res Function(SubCategoryModel) _then) = _$SubCategoryModelCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'category_name') String? categoryName,@JsonKey(name: 'category_name_ar') String? categoryNameAr, String? image
});




}
/// @nodoc
class _$SubCategoryModelCopyWithImpl<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  _$SubCategoryModelCopyWithImpl(this._self, this._then);

  final SubCategoryModel _self;
  final $Res Function(SubCategoryModel) _then;

/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? categoryName = freezed,Object? categoryNameAr = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categoryNameAr: freezed == categoryNameAr ? _self.categoryNameAr : categoryNameAr // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubCategoryModel].
extension SubCategoryModelPatterns on SubCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_name_ar')  String? categoryNameAr,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
return $default(_that.name,_that.categoryName,_that.categoryNameAr,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_name_ar')  String? categoryNameAr,  String? image)  $default,) {final _that = this;
switch (_that) {
case _SubCategoryModel():
return $default(_that.name,_that.categoryName,_that.categoryNameAr,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_name_ar')  String? categoryNameAr,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
return $default(_that.name,_that.categoryName,_that.categoryNameAr,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubCategoryModel implements SubCategoryModel {
  const _SubCategoryModel({this.name, @JsonKey(name: 'category_name') this.categoryName, @JsonKey(name: 'category_name_ar') this.categoryNameAr, this.image});
  factory _SubCategoryModel.fromJson(Map<String, dynamic> json) => _$SubCategoryModelFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'category_name') final  String? categoryName;
@override@JsonKey(name: 'category_name_ar') final  String? categoryNameAr;
@override final  String? image;

/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryModelCopyWith<_SubCategoryModel> get copyWith => __$SubCategoryModelCopyWithImpl<_SubCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryNameAr, categoryNameAr) || other.categoryNameAr == categoryNameAr)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,categoryName,categoryNameAr,image);

@override
String toString() {
  return 'SubCategoryModel(name: $name, categoryName: $categoryName, categoryNameAr: $categoryNameAr, image: $image)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryModelCopyWith<$Res> implements $SubCategoryModelCopyWith<$Res> {
  factory _$SubCategoryModelCopyWith(_SubCategoryModel value, $Res Function(_SubCategoryModel) _then) = __$SubCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'category_name') String? categoryName,@JsonKey(name: 'category_name_ar') String? categoryNameAr, String? image
});




}
/// @nodoc
class __$SubCategoryModelCopyWithImpl<$Res>
    implements _$SubCategoryModelCopyWith<$Res> {
  __$SubCategoryModelCopyWithImpl(this._self, this._then);

  final _SubCategoryModel _self;
  final $Res Function(_SubCategoryModel) _then;

/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? categoryName = freezed,Object? categoryNameAr = freezed,Object? image = freezed,}) {
  return _then(_SubCategoryModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categoryNameAr: freezed == categoryNameAr ? _self.categoryNameAr : categoryNameAr // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
