import '../datasource/product_remote_data_source.dart';
import '../../domain/model/product_details_model/product_details_model.dart';
import '../../../../src/infrastructure/api/response/api_response.dart';
import '../../../../src/infrastructure/network/exception/dio_exceptions.dart';
import '../../../../src/infrastructure/network/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository.g.dart';

@Riverpod(keepAlive: true)
ProductRepository productRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return ProductRepository(ProductRemoteDataSource(networkService));
}

class ProductRepository {
  final ProductRemoteDataSource _remoteDataSource;

  ProductRepository(this._remoteDataSource);

  Future<ApiResponse<ProductDetailsModel>> getProductDetails(
    String productID,
  ) async {
    final response = await _remoteDataSource.getProductDetails(productID);

    if (response.status == 200) {
      return response;
    }

    throw AppException(response.message);
  }

  Future<ApiResponse<String>> deletePost(String productID) async {
    final response = await _remoteDataSource.deletePost(productID);

    if (response.status == 200) {
      return response;
    }

    throw AppException(response.message);
  }

  Future<ApiResponse<bool>> addPostToFavorite(String productID) async {
    final response = await _remoteDataSource.addPostToFavorite(productID);

    if (response.status! <= 201) {
      return response;
    }

    throw AppException(response.message);
  }

  Future<ApiResponse> updatePostViews(String productID) async {
    final response = await _remoteDataSource.updatePostViews(productID);

    if (response.status! <= 201) {
      return response;
    }

    throw AppException(response.message);
  }

  Future<ApiResponse> sendReport(String postId, String title) async {
    final response = await _remoteDataSource.sendReport(postId, title);

    if (response.status! <= 201) {
      return response;
    }

    throw AppException(response.message);
  }

  Future<ApiResponse<bool>> likePost(String productID) async {
    final response = await _remoteDataSource.likePost(productID);

    if ((response.status ?? 0) <= 201) {
      return response;
    }

    throw AppException(response.message);
  }
}
