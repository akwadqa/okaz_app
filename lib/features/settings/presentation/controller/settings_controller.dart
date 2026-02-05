
import 'package:okaz/features/settings/data/repositories/settings_repository.dart';
import 'package:okaz/features/settings/presentation/controller/settings_state.dart';
import 'package:okaz/src/infrastructure/storage/local_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'settings_controller.g.dart';

@riverpod
class SettingsController extends _$SettingsController {
  @override
  FutureOr<SettingsState> build() async {
    return const SettingsState(notificationState: true);
  }
  // Future<HomeModel> getSettingsData() async {
  //   state = const AsyncLoading();

  //   final result = await AsyncValue.guard(() async {
  //     final repo = ref.read(settingsRepositoryProvider);
  //     return await repo.getSettingsData(page: 1);
  //   });
  //   // (error) => AsyncError(error, StackTrace.current);

  //   // state = result;

  //   return result.value!;
  // }

  void onNotificationChange(bool value) {
    final current = state.value;
    if (current == null) return;

    state = AsyncData(
      current.copyWith(notificationState: value),
    );
  }

  // 🔴 Delete Account
  Future<void> deleteAccount() async {
    final current = state.value;
    if (current == null) return;
    final storage = ref.read(localStorageServiceProvider);

    state = AsyncData(
      current.copyWith(deleteAccountState: const AsyncLoading()),
    );
    final mobileNumber=storage.userInfo.mobileNumber;

    final result = await AsyncValue.guard(() async {
      final repo = ref.read(settingsRepositoryProvider);
      await repo.deleteAccount(mobileNumber);
    });
    await storage.logout();

    state = AsyncData(
      current.copyWith(deleteAccountState: AsyncData(result)),
    );
  }

  // 🔵 Logout
  Future<void> logout() async {
    final current = state.value;
    if (current == null) return;
    final storage = ref.read(localStorageServiceProvider);
    state = AsyncData(
      current.copyWith(logoutState: const AsyncLoading()),
    );

    final result = await AsyncValue.guard(() async {
      final repo = ref.read(settingsRepositoryProvider);

      //  final result =
      await repo.logout();
    });
    await Future.delayed(Duration(seconds: 2));

    await storage.logout();

    state = AsyncData(
      current.copyWith(logoutState: AsyncData(result)),
    );
  }
}
