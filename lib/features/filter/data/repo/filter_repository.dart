import 'package:okaz/features/filter/data/remote/filter_remote_data_source.dart';
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

}