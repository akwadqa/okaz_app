import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/profile/data/repositories/profile_repository.dart';
import 'package:okaz/features/profile/domain/model/update_user_request/update_user_request.dart';
import 'package:okaz/features/profile/domain/model/user_response_model/user_response_model.dart';
import 'package:okaz/src/application/data/user_information/user_information.dart';
import 'package:okaz/src/infrastructure/storage/local_storage_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/model/post_model.dart';
import '../../domain/profile_item.dart';
import 'profile_state.dart';

part 'my_profile_controller.g.dart';

@Riverpod(keepAlive: true)
class ProfileController extends _$ProfileController {
  List<PostModel> _myPosts = [];
  int _myPostsCurrentPage = 1;
  int _myPostsTotalPages = 1;
  List<PostModel> _favoritePosts = [];
  int _favoritePostsCurrentPage = 1;
  int _favoritePostsTotalPages = 1;
  @override
  FutureOr<ProfileState> build() async {
    final posts = await fetchMyPosts(page: 1);

    final initial = ProfileState(selectedTab: ProfileTab.myAds, myAds: posts);

    state = AsyncData(initial);

    return initial;
  }

  // ───────────── Tabs ─────────────
  Future<void> changeTab(ProfileTab tab) async {
    // final current = state.value;
    // if (current == null) return;

    // state = AsyncValue.data(current.copyWith(selectedTab: tab));
    final current = state.value;
    if (current == null) return;

    state = AsyncData(current.copyWith(selectedTab: tab));

    if (tab == ProfileTab.myAds) {
      await fetchMyPosts(page: 1);
    }

    if (tab == ProfileTab.favorites) {
      await fetchFavorites(page: 1);
    }
  }

  Future<UserResponseModel?> getProfileData() async {
    try {
      state = AsyncData(state.value!.copyWith(profileData: AsyncLoading()));
      final repo = ref.read(profileRepositoryProvider);
      final response = await repo.getProfileData();

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            profileData: AsyncError(
              response.message ?? 'Something went wrong',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(profileData: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(state.value!.copyWith(profileData: AsyncError(e, st)));
      return null;
    }
  }

  Future<UserResponseModel?> updateProfileData(UpdateUserRequest user) async {
    try {
      state = AsyncData(
        state.value!.copyWith(updateprofileData: AsyncLoading()),
      );
      final repo = ref.read(profileRepositoryProvider);
      final response = await repo.updateProfileData(user);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            updateprofileData: AsyncError(
              response.message ?? 'Something went wrong',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(
            updateprofileData: AsyncData(response.data!),
            profileData: AsyncData(response.data!)),
      );
      final currentUser = ref.watch(localStorageServiceProvider).userInfo;

      final info = currentUser.copyWith(
          fullName: '${response.data!.firstName} ${response.data!.lastName}',
          image: response.data!.image);

      await ref.read(localStorageServiceProvider).saveUserInfo(info);

      // final info = UserInformation(
      //     token: '',
      //     fullName: '${response.data!.firstName} ${response.data!.lastName}',
      //     email: response.data!.email,
      //     mobileNumber: response.data!.mobileNumber ?? '',
      //     //TODO : Image:
      //     image: '');

      return response.data;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(updateprofileData: AsyncError(e, st)),
      );
      return null;
    }
  }

  final _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    state = AsyncData(state.value!.copyWith(
      profileImage: File(image.path),
    ));
  }

  void removeImage() {
    state = AsyncData(state.value!.copyWith(
      profileImage: null,
    ));
  }

  // ───────────── My Posts Data ─────────────

  Future<List<PostModel>> fetchMyPosts({
    required int page,
    bool showLoading = true,
  }) async {
    try {
      final current = state.value;

      /// show loading only first time
      if (showLoading && (current?.myAds.isEmpty ?? true)) {
        state = const AsyncLoading();
      }

      final repo = ref.read(profileRepositoryProvider);
      final response = await repo.getProfilePost(page: page);

      final pagination = response.pagination;

      _myPostsCurrentPage = pagination?.currentPage ?? 1;
      _myPostsTotalPages = pagination?.totalPages ?? 1;

      if (page == 1) {
        _myPosts = List.from(response.data ?? []);
      } else {
        _myPosts.addAll(response.data ?? []);
      }

      final previous = state.value ?? const ProfileState();

      state = AsyncData(
        previous.copyWith(
          myAds: List.from(_myPosts),
        ),
      );

      return _myPosts;
    } catch (e, st) {
      state = AsyncError(e, st);
      return [];
    }
  }

  Future<bool> loadNextMyPostsPage() async {
    if (_myPostsCurrentPage >= _myPostsTotalPages) return false;
    final nextPage = _myPostsCurrentPage + 1;
    final result = await fetchMyPosts(page: nextPage, showLoading: false);
    return result.isNotEmpty;
  }

  Future<void> refreshMyPosts() async {
    _myPosts.clear();
    _myPostsCurrentPage = 1;
    _myPostsTotalPages = 1;
    await fetchMyPosts(page: 1);
  }

  // ───────────── Favorite Posts Data ─────────────

  Future<List<PostModel>> fetchFavorites(
      {required int page, bool showLoading = true}) async {
    try {
      final current = state.value;

      /// show loading only first time
      if (showLoading && (current?.favorites.isEmpty ?? true)) {
        state = const AsyncLoading();
      }

      final repo = ref.read(profileRepositoryProvider);
      final response = await repo.getFavoritePosts(page);

      final pagination = response.pagination;

      _favoritePostsCurrentPage = pagination?.currentPage ?? 1;
      _favoritePostsTotalPages = pagination?.totalPages ?? 1;

      if (page == 1) {
        _favoritePosts = List.from(response.data ?? []);
      } else {
        _favoritePosts.addAll(response.data ?? []);
      }
      final previous = state.value ?? const ProfileState();

      state = AsyncData(
        previous.copyWith(
          favorites: List.from(_favoritePosts),
        ),
      );
      return _favoritePosts;
    } catch (e, st) {
      state = AsyncError(e, st);
      return [];
    }
  }

  Future<bool> loadNextFavoritesPage() async {
    if (_favoritePostsCurrentPage >= _favoritePostsTotalPages) return false;
    final nextPage = _favoritePostsCurrentPage + 1;
    final result = await fetchFavorites(page: nextPage, showLoading: false);
    return result.isNotEmpty;
  }

  Future<void> refreshFavoritePosts() async {
    _favoritePosts.clear();
    _favoritePostsCurrentPage = 1;
    _favoritePostsTotalPages = 1;
    await fetchFavorites(page: 1);
  }

  // ───────────── Refresh ─────────────
  Future<void> refreshCurrentTab() async {
    if (state.value!.selectedTab == ProfileTab.myAds) {
      _myPosts.clear();
      _myPostsCurrentPage = 1;
      await fetchMyPosts(page: 1);
    } else {
      _favoritePosts.clear();
      _favoritePostsCurrentPage = 1;
      await fetchFavorites(page: 1);
    }
  }

  void changeFirstName(String firstName) {
    state = AsyncData(state.value!.copyWith(firstName: firstName));
  }

  void changeLastName(String lastName) {
    state = AsyncData(state.value!.copyWith(lastName: lastName));
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
