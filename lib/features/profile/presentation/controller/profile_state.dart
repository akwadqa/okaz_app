// controller/profile_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:okaz/features/profile/domain/model/user_response_model/user_response_model.dart';
import 'package:okaz/features/profile/domain/profile_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_state.freezed.dart';

enum ProfileTab { myAds, favorites }

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileTab.myAds) ProfileTab selectedTab,
    @Default([]) List<ProfileItem> myAds,
     AsyncValue<UserResponseModel>? profileData,
     AsyncValue<UserResponseModel>? updateprofileData,
    @Default([]) List<ProfileItem> favorites,
  }) = _ProfileState;
}
