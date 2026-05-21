import '../../domain/model/verify_otp_response_model.dart';
import '../../../../../src/infrastructure/api/endpoint/api_endpoints.dart';
import '../../../../../src/infrastructure/api/response/api_response.dart';
import '../../../../../src/infrastructure/network/services/network_service.dart';
import '../../../../../src/logger/log_services/dev_logger.dart';
class VerifyOtpRemoteDataSource {
  final NetworkService _networkService;

  VerifyOtpRemoteDataSource(this._networkService);


Future<ApiResponse<VerifyOtpResponseModel>> verifyOtp(String otp,String phone) async {
  try {
    final response = await _networkService.post(
      ApiEndPoints.verifyOtp,
      data: {
        "mobile_no":phone,
        "otp":otp,
      },
    );

    if (response.data == null || response.statusCode != 200) {
      throw Exception('Request signIn failed');
    }

    return ApiResponse.fromJson(
      response.data ,
      (json) =>VerifyOtpResponseModel.fromJson(json as Map<String,dynamic>),
    );
  } catch (e) {
    Dev.logLine('Error in signIn: $e');
    rethrow;
  }
}
}
