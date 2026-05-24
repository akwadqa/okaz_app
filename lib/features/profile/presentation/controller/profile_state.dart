// controller/profile_state.dart
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:okaz/features/profile/domain/model/post_model.dart';
import 'package:okaz/features/profile/domain/model/user_response_model/user_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_state.freezed.dart';

enum ProfileTab { myAds, favorites }

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileTab.myAds) ProfileTab selectedTab,
    @Default([]) List<PostModel> myAds,
    @Default('') String firstName,
    @Default('') String lastName,
    File? profileImage,
    AsyncValue<UserResponseModel>? profileData,
    AsyncValue<UserResponseModel>? updateprofileData,
    @Default([]) List<PostModel> favorites,
  }) = _ProfileState;
}
