import 'package:okaz/features/filter/data/datasource/filter_remote_data_source.dart';
import 'package:okaz/src/infrastructure/network/exception/dio_exceptions.dart';
import 'package:okaz/src/infrastructure/network/services/dio_client.dart';
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

  Future<dynamic> getProductsByFilter() async {
    final response = await _remoteDataSource.getProductsByFilter();

    if (response.status == 200) {
      return response.data!;
    }

    throw AppException(response.message);
  }
}
