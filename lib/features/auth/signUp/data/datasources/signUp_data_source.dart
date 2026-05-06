import 'package:dio/dio.dart';
import 'package:okaz/features/auth/signUp/domain/model/signUp_params.dart';
import 'package:okaz/features/auth/signUp/domain/model/signup_response.dart';
import 'package:okaz/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/network_service.dart';
import 'package:okaz/src/logger/failure/exceptions/app_exception.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';

class SignupDataSource {
  final NetworkService _networkService;

  SignupDataSource(this._networkService);
  Future<ApiResponse<SignupResponseModel>> signUp(SignupParams params) async {
    try {
      final response = await _networkService.post(
        ApiEndPoints.signUp,
        data: params.toMap(),
      );
      if (response.data == null || response.statusCode != 200) {
        throw Exception('Request signUp failed');
      }

      return ApiResponse.fromJson(
        response.data,
        (json) => SignupResponseModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      Dev.logError('Error in signUp: ${(e as DioException).message}');
      rethrow;
    }
  }
}
