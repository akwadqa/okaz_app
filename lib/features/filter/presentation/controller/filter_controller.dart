import 'dart:async';

import 'package:flutter_riverpod/legacy.dart';
import 'package:okaz/features/filter/data/repo/filter_repository.dart';
import 'package:okaz/features/filter/presentation/controller/filter_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_controller.g.dart';

@riverpod
class FilterController extends _$FilterController {
  @override
  FutureOr<FilterState> build() {
    return FilterState();
  }

  Future<void> getProductsByFilter() async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(filterRepositoryProvider);
      final data = await repo.getProductsByFilter();
      state = AsyncData(data);
      return data;
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

}

final searchTypeProvider = StateProvider<int>((ref) {
  return 0;
});
