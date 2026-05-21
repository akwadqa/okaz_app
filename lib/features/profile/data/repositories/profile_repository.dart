import '../../../home/domain/model/home_model/home_model.dart';
import '../datasources/profile_dataSource.dart';
import '../../domain/model/post_model.dart';
import '../../domain/model/update_user_request/update_user_request.dart';
import '../../domain/model/user_response_model/user_response_model.dart';
import '../../../../src/infrastructure/api/response/api_response.dart';
import '../../../../src/infrastructure/network/services/dio_client.dart';
import '../../../../src/logger/failure/exceptions/app_exception.dart';
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
        throw AppException(message: result.message ?? 'Failed to fetch data');
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
    throw AppException(message: response.message);
  }

  Future<bool> logout() async {
    final response = await _remoteDataSource.logout();
    if (response.status == 200) {
      return response.data ?? false;
    }
    throw AppException(message: response.message);
  }

  Future<ApiResponse<UserResponseModel>> getProfileData() async {
    final response = await _remoteDataSource.getProfileData();

    if (response.status == 200) {
      return response;
    }

    throw AppException(message: response.message);
  }

  Future<ApiResponse<UserResponseModel>> updateProfileData(
    UpdateUserRequest user,
  ) async {
    final response = await _remoteDataSource.updateProfileData(user);

    if (response.status == 200) {
      return response;
    }

    throw AppException(message: response.message);
  }

  Future<ApiResponse<List<PostModel>>> getProfilePost({
    int? page,
  }) async {
    final response = await _remoteDataSource.getProfilePosts(page: page);

    if (response.hasSucceeded) {
      return response;
    }

    throw AppException(message: response.message);
  }

  Future<ApiResponse<List<PostModel>>> getFavoritePosts(
    int page,
  ) async {
    final response = await _remoteDataSource.getFavoritePosts(page);

    if (response.hasSucceeded) {
      return response;
    }

    throw AppException(message: response.message);
  }
}
