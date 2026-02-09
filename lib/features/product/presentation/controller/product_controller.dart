import 'package:okaz/features/product/data/repository/product_repository.dart';
import 'package:okaz/features/product/presentation/controller/product_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_controller.g.dart';
@riverpod
class ProductController extends _$ProductController {
  @override
  FutureOr<ProductState> build()async {
    return ProductState();
  }

  Future<void> getProductDetails(String productId) async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(productRepositoryProvider);
      final data = await repo.getProductDetails(productId);
      state = AsyncData(data);
      return data;
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

  Future<void> addProductToFavorite(String productId) async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(productRepositoryProvider);
      final data = await repo.addProductToFavorite(productId);
      state = AsyncData(data);
      return data;
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }
}