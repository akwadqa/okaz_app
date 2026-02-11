import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:okaz/features/home/data/repositories/home_repository.dart';
import 'package:okaz/features/home/domain/model/home/home_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  FutureOr<HomeModel> build() async {
    return await getHomeData();
  }

  Future<HomeModel> getHomeData() async {
    state = const AsyncLoading();

    final result = await AsyncValue.guard(() async {
      final repo = ref.read(homeRepositoryProvider);
      return await repo.getHomeData(page: 1);
    });
    // (error) => AsyncError(error, StackTrace.current);

    state = result;

    return result.value!;
  }
}

final bottomNavIndexProvider = StateProvider<int>((ref) => 0);
// @riverpod
// Future<int> bottomNavIndex(Ref ref) async =>0;
