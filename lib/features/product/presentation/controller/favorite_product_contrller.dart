import 'dart:async';

import '../../data/repository/product_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_product_contrller.g.dart';

@riverpod
class FavoriteProductContrller extends _$FavoriteProductContrller {
  @override
  FutureOr<bool> build(String productId, bool isFavorite) {
    return isFavorite;
  }

  Future<bool?> addPostToFavorite(String productId) async {
    final currentState = state.value ?? false;
    try {
      state = AsyncData(!currentState);

      final repo = ref.read(productRepositoryProvider);
      final response = await repo.addPostToFavorite(productId);

      if (response.hasFailed) {
        state = AsyncError(response.error, StackTrace.current);

        state = AsyncData(currentState);
        return currentState;
      }
      return !currentState;
    } catch (e, st) {
      state = AsyncError(e, st);
      state = AsyncData(currentState);

      return currentState;
    }
  }
}
