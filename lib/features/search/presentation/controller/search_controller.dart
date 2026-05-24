import 'dart:async';

import '../../../filter/data/repo/filter_repository.dart';
import '../../../product/domain/model/get_posts_request/get_posts_request.dart';
import '../../../product/domain/model/product_details_model/product_details_model.dart';
import '../../../../src/infrastructure/storage/local_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller.g.dart';

@riverpod
class SearchController extends _$SearchController {
  List<ProductDetailsModel> _items = [];
  int _currentPage = 1;
  int _totalPages = 1;

  @override
  FutureOr<List<ProductDetailsModel>> build() async {
    // return await fetch(page: 1);
    return [];
  }

  String search = '';

  Future<List<ProductDetailsModel>> fetch(
      {required int page, bool showLoading = true}) async {
    try {
      if (showLoading) state = const AsyncLoading();

      final request = GetPostsRequest(title: search);

      final repo = ref.read(filterRepositoryProvider);
      final response = await repo.getProductsByFilter(request, page,
          ref.read(localStorageServiceProvider).userInfo.country ?? '');

      _currentPage = response.pagination!.currentPage;
      _totalPages = response.pagination!.totalPages;

      if (page == 1) {
        _items = List.from(response.data!);
      } else {
        _items.addAll(response.data!);
      }

      state = AsyncData([..._items]);
      return _items;
    } catch (e, st) {
      state = AsyncError(e, st);
      return [];
    }
  }

  Future<bool> loadNextPage() async {
    if (_currentPage >= _totalPages) return false;
    final nextPage = _currentPage + 1;
    final result = await fetch(page: nextPage, showLoading: false);
    return result.isNotEmpty;
  }

  Future<void> refresh() async {
    _items.clear();
    _currentPage = 1;
    _totalPages = 1;
    await fetch(page: 1);
  }
}
