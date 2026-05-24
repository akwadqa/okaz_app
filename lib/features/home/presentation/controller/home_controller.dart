import 'package:flutter_riverpod/legacy.dart';
import '../../data/repositories/home_repository.dart';
import '../../domain/model/home_model/home_model.dart';
import 'home_state.dart';
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
        state.value!.copyWith(
            homeModel: AsyncData(response.data!),
            filterdCategories: response.data!.categories
                    ?.whereType<CategoryModel>()
                    .toList() ??
                []),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(state.value!.copyWith(homeModel: AsyncError(e, st)));
      return null;
    }
  }
void filterCategories(String query) {
    final currentState = state.value;
    if (currentState == null) return;

    // دائماً نأخذ البيانات الأصلية من الـ homeModel لضمان عدم فقدان البيانات
    final allCategories = currentState.homeModel.value?.categories?.whereType<CategoryModel>().toList() ?? [];

    if (query.isEmpty) {
      state = AsyncData(currentState.copyWith(filterdCategories: allCategories));
      return;
    }

    final lowerQuery = query.toLowerCase();

    final results = allCategories.where((category) {
      // فحص الـ subcategories
      return category.subcategories?.any((sub) {
        if (sub == null) return false;
        final nameEn = (sub.categoryName ?? '').toLowerCase();
        final nameAr = (sub.categoryNameAr ?? '').toLowerCase();
        return nameEn.contains(lowerQuery) || nameAr.contains(lowerQuery);
      }) ?? false;
    }).toList();

    // تحديث القائمة المفلترة فقط دون المساس بالـ homeModel الأصلي
    state = AsyncData(currentState.copyWith(filterdCategories: results));
  }
}

final bottomNavIndexProvider = StateProvider<int>((ref) => 0);
// @riverpod
// Future<int> bottomNavIndex(Ref ref) async =>0;
