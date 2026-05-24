import '../datasource/filter_remote_data_source.dart';
import '../../../product/domain/model/get_posts_request/get_posts_request.dart';
import '../../../product/domain/model/product_details_model/product_details_model.dart';
import '../../../../src/infrastructure/api/response/api_response.dart';
import '../../../../src/infrastructure/network/exception/dio_exceptions.dart';
import '../../../../src/infrastructure/network/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_repository.g.dart';

@Riverpod(keepAlive: true)
FilterRepository filterRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return FilterRepository(FilterRemoteDataSource(networkService));
}

class FilterRepository {
  final FilterRemoteDataSource _remoteDataSource;

  FilterRepository(this._remoteDataSource);

  Future<ApiResponse<List<ProductDetailsModel>>> getProductsByFilter(
      GetPostsRequest request, int page, String country) async {
    final response =
        await _remoteDataSource.getProductsByFilter(request, page, country);

    if (response.status == 200) {
      return response;
    }

    throw AppException(response.message);
  }
}
