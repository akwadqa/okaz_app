import 'dart:async';

import 'package:okaz/features/search/data/repository/search_repository.dart';
import 'package:okaz/features/search/presentation/controller/search_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller.g.dart';
@riverpod
class SearchController extends _$SearchController {
  @override
  FutureOr<SearchState> build() {
    return SearchState();
  }

  Future<dynamic> searchForProduct(String search) async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(searchRepositoryProvider);
      final data = await repo.searchForProduct(search);
      state = AsyncData(data);
      return data;
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }
}