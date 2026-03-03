import 'package:okaz/features/product/data/repository/product_repository.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/product/presentation/controller/product_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_controller.g.dart';

@riverpod
class ProductController extends _$ProductController {
  @override
  FutureOr<ProductState> build() async {
    return ProductState.init();
  }

  Future<ProductDetailsModel?> getProductDetails(String productId) async {
    try {
      state = AsyncData(
        state.value!.copyWith(productDetailsModel: AsyncLoading()),
      );
      final repo = ref.read(productRepositoryProvider);
      final response = await repo.getProductDetails(productId);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            productDetailsModel: AsyncError(
              response.message ?? 'Something went wrong',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(productDetailsModel: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(productDetailsModel: AsyncError(e, st)),
      );
      return null;
    }
  }

  Future<String?> deletePost(String productId) async {
    try {
      state = AsyncData(state.value!.copyWith(deletePost: AsyncLoading()));
      final repo = ref.read(productRepositoryProvider);
      final response = await repo.deletePost(productId);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            deletePost: AsyncError(
              response.message ?? 'Something went wrong',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(deletePost: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(state.value!.copyWith(deletePost: AsyncError(e, st)));
      return null;
    }
  }

  Future<bool?> addPostToFavorite(String productId) async {
    try {
      state = AsyncData(state.value!.copyWith(favoritePost: AsyncLoading()));
      final repo = ref.read(productRepositoryProvider);
      final response = await repo.addPostToFavorite(productId);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            favoritePost: AsyncError(
              response.message ?? 'Something went wrong',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(favoritePost: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(state.value!.copyWith(favoritePost: AsyncError(e, st)));
      return null;
    }
  }

}
