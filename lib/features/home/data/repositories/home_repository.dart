import 'package:okaz/features/home/data/datasources/home_dataSource.dart';
import 'package:okaz/features/home/domain/model/home/home_model.dart';
import 'package:okaz/src/infrastructure/network/services/dio_client.dart';
import 'package:okaz/src/logger/failure/exceptions/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repository.g.dart';

@Riverpod(keepAlive: true)
HomeRepository homeRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return HomeRepository(HomeRemoteDataSource(networkService));
}
class HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepository(this._remoteDataSource);
  Future<HomeModel> getHomeData({required int page}) async {
    try {
      final result = await _remoteDataSource.getHomeData(page: page);
  
      if (result.hasFailed) {
        throw AppException(message:  result.message ?? 'Failed to fetch data');
      }
  
      return result.data!;
    } catch (e) {
      throw AppException(message: 'Failed to fetch HomeModel: $e');
    }
  }

}