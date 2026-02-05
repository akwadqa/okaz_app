import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/profile_item.dart';
import 'profile_state.dart';

part 'my_profile_controller.g.dart';

@riverpod
class ProfileController extends _$ProfileController {
  @override
  FutureOr<ProfileState> build() async {
    // simulate API delay
    // await Future.delayed(const Duration(milliseconds: 400));

    return  ProfileState(
      myAds: _mockMyAds(),
      favorites: _mockFavorites(), 
      selectedTab: ProfileTab.myAds,
    );
  }

  // ───────────── Tabs ─────────────
    // ✅ SAFE state update
  void changeTab(ProfileTab tab) {
    final current = state.value;
    if (current == null) return;

    state = AsyncValue.data(
      current.copyWith(selectedTab: tab),
    );
  }



  // ───────────── Mock Data ─────────────
  List<ProfileItem> _mockMyAds() => [
        ProfileItem(
          id: '1',
          title: 'ساعة ذهبية',
          image: 'https://via.placeholder.com/300',
          condition: 'مستعمل - بحالة ممتازة',
          price: 1400,
          likes: 0,
          comments: 0,
        ),
        ProfileItem(
          id: '2',
          title: 'آيفون 16 برو',
          image: 'https://via.placeholder.com/300',
          condition: 'جديد',
          price: 1900,
          likes: 15,
          comments: 5,
        ),
      ];

  List<ProfileItem> _mockFavorites() => [];
}
