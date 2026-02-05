import 'package:okaz/features/home/domain/model/home/home_model.dart';
import 'package:okaz/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/network_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
class ProfileDatasource {
  final NetworkService _networkService;

  ProfileDatasource(this._networkService);

Future<ApiResponse<HomeModel>> getSettingsData({required int page}) async {
  try {
    final response = await _networkService.get(
      ApiEndPoints.homeServices,
      data: {"page_no":page},
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
      final response = await _networkService
          .put(ApiEndPoints.deleteAccountApi,
          data: {
            "user_id":email
          }
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
      final response = await _networkService
          .put(ApiEndPoints.logoutApi,);

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
}