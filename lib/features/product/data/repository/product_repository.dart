import 'package:okaz/features/product/data/datasource/product_remote_data_source.dart';
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

}