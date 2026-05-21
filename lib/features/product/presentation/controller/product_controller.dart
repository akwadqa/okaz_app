import '../../data/repository/product_repository.dart';
import '../../domain/model/product_details_model/product_details_model.dart';
import 'product_state.dart';
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
        state.value!.copyWith(
          productDetailsModel: AsyncData(response.data!),
          favoritePost: response.data?.isFavorited ?? false,
          likePost: response.data?.isLiked ?? false,
        ),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(productDetailsModel: AsyncError(e, st)),
      );
      return null;
    }
  }
  Future<ProductDetailsModel?> sendReport(String productId , String title) async {
    try {
      state = AsyncData(
        state.value!.copyWith(sendReport: AsyncLoading()),
      );
      final repo = ref.read(productRepositoryProvider);
      final response = await repo.sendReport(productId, title);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            sendReport: AsyncError(
              response.message ?? 'Something went wrong',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(
          sendReport: AsyncData(response.data),
         
        ),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(sendReport: AsyncError(e, st)),
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

  // Future<bool?> addPostToFavorite(String productId) async {
  //   try {
  //     state = AsyncData(state.value!.copyWith(favoritePost: true));
  //     final repo = ref.read(productRepositoryProvider);
  //     final response = await repo.addPostToFavorite(productId);

  //     if (response.hasFailed) {
  //       state = AsyncData(state.value!.copyWith(favoritePost: false));

  //       return null;
  //     }

  //     return response.data;
  //   } catch (e, st) {
  //     state = AsyncError(e, st);

  //     state = AsyncData(state.value!.copyWith(favoritePost: false));
  //     return null;
  //   }
  // }

  Future<bool?> likePost(String productId) async {
    final currentProduct = state.value!.productDetailsModel!.value!;
    try {
      state = AsyncData(
        state.value!.copyWith(
          likePost: true,
          productDetailsModel: AsyncData(
            currentProduct.copyWith(likes: currentProduct.likes! + 1),
          ),
        ),
      );
      final repo = ref.read(productRepositoryProvider);
      final response = await repo.likePost(productId);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            likePost: false,
            productDetailsModel: AsyncData(
              currentProduct.copyWith(likes: currentProduct.likes!),
            ),
          ),
        );

        return null;
      }

      return response.data;
    } catch (e, st) {
      state = AsyncError(e, st);
      state = AsyncData(
        state.value!.copyWith(
          likePost: false,
          productDetailsModel: AsyncData(
            currentProduct.copyWith(likes: currentProduct.likes!),
          ),
        ),
      );
      return null;
    }
  }

  Future<bool?> unLikePost(String productId) async {
    final currentProduct = state.value!.productDetailsModel!.value!;
    try {
      state = AsyncData(
        state.value!.copyWith(
          likePost: false,
          productDetailsModel: AsyncData(
            currentProduct.copyWith(likes: currentProduct.likes! - 1),
          ),
        ),
      );
      final repo = ref.read(productRepositoryProvider);
      final response = await repo.likePost(productId);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            likePost: true,
            productDetailsModel: AsyncData(
              currentProduct.copyWith(likes: currentProduct.likes!),
            ),
          ),
        );

        return null;
      }

      return response.data;
    } catch (e, st) {
      state = AsyncError(e, st);
      state = AsyncData(
        state.value!.copyWith(
          likePost: true,
          productDetailsModel: AsyncData(
            currentProduct.copyWith(likes: currentProduct.likes!),
          ),
        ),
      );
      return null;
    }
  }

  Future<void> updatePostViews(String productId) async {
    try {
      final repo = ref.read(productRepositoryProvider);
      final response = await repo.updatePostViews(productId);

      if (response.hasFailed) {
        return;
      }

      return;
    } catch (e) {
      return;
    }
  }
}
