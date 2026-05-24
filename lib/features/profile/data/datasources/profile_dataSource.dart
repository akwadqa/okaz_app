import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../home/domain/model/home_model/home_model.dart';
import '../../domain/model/update_user_request/update_user_request.dart';
import '../../domain/model/user_response_model/user_response_model.dart';
import '../../../../src/infrastructure/api/endpoint/api_endpoints.dart';
import '../../../../src/infrastructure/api/response/api_response.dart';
import '../../../../src/infrastructure/network/services/network_service.dart';
import '../../../../src/logger/log_services/dev_logger.dart';

import '../../domain/model/post_model.dart';

class ProfileDatasource {
  final NetworkService _networkService;

  ProfileDatasource(this._networkService);

  Future<ApiResponse<HomeModel>> getSettingsData({required int page}) async {
    try {
      final response = await _networkService.get(
        ApiEndPoints.homeServices,
        data: {"page": page},
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to load data');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => HomeModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      Dev.logLine('Error in getSettingsData: $e');
      rethrow;
    }
  }

  Future<ApiResponse<bool>> deleteAccount(String email) async {
    try {
      final response = await _networkService.delete(
        ApiEndPoints.deleteAccountApi,
        data: {"user_id": email},
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to l delete account');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => true,
      );
    } catch (e) {
      Dev.logLine('Error in deleteAccount: $e');
      rethrow;
    }
  }

  Future<ApiResponse<bool>> logout() async {
    try {
      final response = await _networkService.put(ApiEndPoints.logoutApi);

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to l logout account');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => true,
      );
    } catch (e) {
      Dev.logLine('Error in logoutAccount: $e');
      rethrow;
    }
  }

  Future<ApiResponse<UserResponseModel>> getProfileData() async {
    try {
      final response = await _networkService.get(
        ApiEndPoints.getProfileData,
        queryParameters: {},
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to load data');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => UserResponseModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      debugPrint('Error in getData: e');
      rethrow;
    }
  }

  Future<ApiResponse<UserResponseModel>> updateProfileData(
    UpdateUserRequest user,
  ) async {
    try {
      final data = FormData.fromMap({
        ...user.toJson(),
        ...{
          if (user.filePath != null)
            'filedata': await MultipartFile.fromFile(user.filePath!.path),
        },
      });
      final response = await _networkService.put(
        ApiEndPoints.updateProfileData,
        data: data,
        queryParameters: {},
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to load data');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => UserResponseModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      debugPrint('Error in getData: e');
      rethrow;
    }
  }

  Future<ApiResponse<List<PostModel>>> getProfilePosts({
    int? page,
  }) async {
    try {
      final data = {'page': page, 'limit': 10};
      final response = await _networkService.get(
        ApiEndPoints.userPosts,
        data: data,
        // queryParameters: {},
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to load getProfilePosts');
      }

      return ApiResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) => PostModel.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } catch (e) {
      debugPrint('Error in getProfilePosts: $e');
      rethrow;
    }
  }

  Future<ApiResponse<List<PostModel>>> getFavoritePosts(
    int page,
  ) async {
    try {
      final data = {'page': page, 'limit': 10};

      final response = await _networkService.get(
        ApiEndPoints.favoritePosts,
        data: data,
        queryParameters: {},
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to load getFavoritePosts');
      }

      return ApiResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) => PostModel.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } catch (e) {
      debugPrint('Error in getFavoritePosts: $e');
      rethrow;
    }
  }
}
