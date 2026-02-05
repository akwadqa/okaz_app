// controller/profile_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:okaz/features/profile/domain/profile_item.dart';

part 'profile_state.freezed.dart';

enum ProfileTab { myAds, favorites }

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileTab.myAds) ProfileTab selectedTab,
    @Default([]) List<ProfileItem> myAds,
    @Default([]) List<ProfileItem> favorites,
  }) = _ProfileState;
}
