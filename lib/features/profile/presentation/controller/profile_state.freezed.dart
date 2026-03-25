// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileState {
  ProfileTab get selectedTab;
  List<PostModel> get myAds;
  String get firstName;
  String get lastName;
  File? get profileImage;
  AsyncValue<UserResponseModel>? get profileData;
  AsyncValue<UserResponseModel>? get updateprofileData;
  List<PostModel> get favorites;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      _$ProfileStateCopyWithImpl<ProfileState>(
          this as ProfileState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileState &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            const DeepCollectionEquality().equals(other.myAds, myAds) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.profileData, profileData) ||
                other.profileData == profileData) &&
            (identical(other.updateprofileData, updateprofileData) ||
                other.updateprofileData == updateprofileData) &&
            const DeepCollectionEquality().equals(other.favorites, favorites));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedTab,
      const DeepCollectionEquality().hash(myAds),
      firstName,
      lastName,
      profileImage,
      profileData,
      updateprofileData,
      const DeepCollectionEquality().hash(favorites));

  @override
  String toString() {
    return 'ProfileState(selectedTab: $selectedTab, myAds: $myAds, firstName: $firstName, lastName: $lastName, profileImage: $profileImage, profileData: $profileData, updateprofileData: $updateprofileData, favorites: $favorites)';
  }
}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) _then) =
      _$ProfileStateCopyWithImpl;
  @useResult
  $Res call(
      {ProfileTab selectedTab,
      List<PostModel> myAds,
      String firstName,
      String lastName,
      File? profileImage,
      AsyncValue<UserResponseModel>? profileData,
      AsyncValue<UserResponseModel>? updateprofileData,
      List<PostModel> favorites});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? myAds = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? profileImage = freezed,
    Object? profileData = freezed,
    Object? updateprofileData = freezed,
    Object? favorites = null,
  }) {
    return _then(_self.copyWith(
      selectedTab: null == selectedTab
          ? _self.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as ProfileTab,
      myAds: null == myAds
          ? _self.myAds
          : myAds // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _self.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
      profileData: freezed == profileData
          ? _self.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserResponseModel>?,
      updateprofileData: freezed == updateprofileData
          ? _self.updateprofileData
          : updateprofileData // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserResponseModel>?,
      favorites: null == favorites
          ? _self.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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
    TResult Function(_ProfileState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
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
    TResult Function(_ProfileState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState():
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
    TResult? Function(_ProfileState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
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
            ProfileTab selectedTab,
            List<PostModel> myAds,
            String firstName,
            String lastName,
            File? profileImage,
            AsyncValue<UserResponseModel>? profileData,
            AsyncValue<UserResponseModel>? updateprofileData,
            List<PostModel> favorites)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
        return $default(
            _that.selectedTab,
            _that.myAds,
            _that.firstName,
            _that.lastName,
            _that.profileImage,
            _that.profileData,
            _that.updateprofileData,
            _that.favorites);
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
            ProfileTab selectedTab,
            List<PostModel> myAds,
            String firstName,
            String lastName,
            File? profileImage,
            AsyncValue<UserResponseModel>? profileData,
            AsyncValue<UserResponseModel>? updateprofileData,
            List<PostModel> favorites)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState():
        return $default(
            _that.selectedTab,
            _that.myAds,
            _that.firstName,
            _that.lastName,
            _that.profileImage,
            _that.profileData,
            _that.updateprofileData,
            _that.favorites);
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
            ProfileTab selectedTab,
            List<PostModel> myAds,
            String firstName,
            String lastName,
            File? profileImage,
            AsyncValue<UserResponseModel>? profileData,
            AsyncValue<UserResponseModel>? updateprofileData,
            List<PostModel> favorites)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
        return $default(
            _that.selectedTab,
            _that.myAds,
            _that.firstName,
            _that.lastName,
            _that.profileImage,
            _that.profileData,
            _that.updateprofileData,
            _that.favorites);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProfileState implements ProfileState {
  const _ProfileState(
      {this.selectedTab = ProfileTab.myAds,
      final List<PostModel> myAds = const [],
      this.firstName = '',
      this.lastName = '',
      this.profileImage,
      this.profileData,
      this.updateprofileData,
      final List<PostModel> favorites = const []})
      : _myAds = myAds,
        _favorites = favorites;

  @override
  @JsonKey()
  final ProfileTab selectedTab;
  final List<PostModel> _myAds;
  @override
  @JsonKey()
  List<PostModel> get myAds {
    if (_myAds is EqualUnmodifiableListView) return _myAds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myAds);
  }

  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  final File? profileImage;
  @override
  final AsyncValue<UserResponseModel>? profileData;
  @override
  final AsyncValue<UserResponseModel>? updateprofileData;
  final List<PostModel> _favorites;
  @override
  @JsonKey()
  List<PostModel> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            const DeepCollectionEquality().equals(other._myAds, _myAds) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.profileData, profileData) ||
                other.profileData == profileData) &&
            (identical(other.updateprofileData, updateprofileData) ||
                other.updateprofileData == updateprofileData) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedTab,
      const DeepCollectionEquality().hash(_myAds),
      firstName,
      lastName,
      profileImage,
      profileData,
      updateprofileData,
      const DeepCollectionEquality().hash(_favorites));

  @override
  String toString() {
    return 'ProfileState(selectedTab: $selectedTab, myAds: $myAds, firstName: $firstName, lastName: $lastName, profileImage: $profileImage, profileData: $profileData, updateprofileData: $updateprofileData, favorites: $favorites)';
  }
}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) _then) =
      __$ProfileStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ProfileTab selectedTab,
      List<PostModel> myAds,
      String firstName,
      String lastName,
      File? profileImage,
      AsyncValue<UserResponseModel>? profileData,
      AsyncValue<UserResponseModel>? updateprofileData,
      List<PostModel> favorites});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedTab = null,
    Object? myAds = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? profileImage = freezed,
    Object? profileData = freezed,
    Object? updateprofileData = freezed,
    Object? favorites = null,
  }) {
    return _then(_ProfileState(
      selectedTab: null == selectedTab
          ? _self.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as ProfileTab,
      myAds: null == myAds
          ? _self._myAds
          : myAds // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _self.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
      profileData: freezed == profileData
          ? _self.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserResponseModel>?,
      updateprofileData: freezed == updateprofileData
          ? _self.updateprofileData
          : updateprofileData // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserResponseModel>?,
      favorites: null == favorites
          ? _self._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
    ));
  }
}

// dart format on
