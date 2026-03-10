import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:okaz/features/home/data/repositories/home_repository.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/features/home/presentation/controller/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@Riverpod(keepAlive: true)
class HomeController extends _$HomeController {
  @override
  FutureOr<HomeState> build() async {
    return HomeState.init();
  }

  Future<HomeModel?> getHomeData() async {
    try {
      state = AsyncData(state.value!.copyWith(homeModel: AsyncLoading()));
      final repo = ref.read(homeRepositoryProvider);
      final response = await repo.getHomeData();

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            homeModel: AsyncError(
              response.message ?? 'Something went wrong',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(homeModel: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(state.value!.copyWith(homeModel: AsyncError(e, st)));
      return null;
    }
  }
}

final bottomNavIndexProvider = StateProvider<int>((ref) => 0);
// @riverpod
// Future<int> bottomNavIndex(Ref ref) async =>0;
