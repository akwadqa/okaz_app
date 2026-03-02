import 'package:okaz/features/product/data/datasource/product_remote_data_source.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/exception/dio_exceptions.dart';
import 'package:okaz/src/infrastructure/network/services/dio_client.dart';
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



  Future<ApiResponse<ProductDetailsModel>> getProductDetails(String productID) async {
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
  Future<dynamic> addProductToFavorite(String productID) async {
    final response = await _remoteDataSource.addProductToFavorite(productID);

    if (response.status == 200) {
      return response.data!;
    }

    throw AppException(response.message);
  }
}
