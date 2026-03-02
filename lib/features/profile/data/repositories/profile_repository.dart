import 'package:okaz/features/home/data/datasources/home_dataSource.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/features/profile/data/datasources/profile_dataSource.dart';
import 'package:okaz/features/settings/data/datasources/settings_dataSource.dart';
import 'package:okaz/src/infrastructure/network/services/dio_client.dart';
import 'package:okaz/src/logger/failure/exceptions/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_repository.g.dart';

@Riverpod(keepAlive: true)
ProfileRepository profileRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return ProfileRepository(ProfileDatasource(networkService));
}
class ProfileRepository {
  final ProfileDatasource _remoteDataSource;

  ProfileRepository(this._remoteDataSource);
  Future<HomeModel> getSettingsData({required int page}) async {
    try {
      final result = await _remoteDataSource.getSettingsData(page: page);
  
      if (result.hasFailed) {
        throw AppException(message:  result.message ?? 'Failed to fetch data');
      }
  
      return result.data!;
    } catch (e) {
      throw AppException(message: 'Failed to fetch HomeModel: $e');
    }
  }
    Future<bool> deleteAccount(String email) async {
    final response = await _remoteDataSource.deleteAccount(email);
    if (response.status == 200) {
      return response.data ?? false;
    }
    throw AppException(message:  response.message);
  }
    Future<bool> logout() async {
    final response = await _remoteDataSource.logout();
    if (response.status == 200) {
      return response.data ?? false;
    }
    throw AppException(message:  response.message);
  }

}