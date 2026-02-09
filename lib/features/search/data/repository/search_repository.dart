

import 'package:okaz/features/search/data/datasource/search_remote_data_source.dart';
import 'package:okaz/src/infrastructure/network/exception/dio_exceptions.dart';
import 'package:okaz/src/infrastructure/network/services/dio_client.dart' show networkServiceProvider;
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'search_repository.g.dart';

@Riverpod(keepAlive: true)
SearchRepository searchRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return SearchRepository(SearchRemoteDataSource(networkService));
}

class SearchRepository {
  final SearchRemoteDataSource _remoteDataSource;

  SearchRepository(this._remoteDataSource);

  Future<dynamic> searchForProduct(String search) async {
    final response = await _remoteDataSource.searchForProduct(search);
  
    if (response.status == 200) {
      return response.data!;
    }
  
    throw AppException(response.message);
  }

}