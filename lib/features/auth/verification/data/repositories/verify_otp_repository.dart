import '../../domain/model/verify_otp_response_model.dart';
import '../../../../../src/infrastructure/api/response/api_response.dart';
import '../../../../../src/infrastructure/network/services/dio_client.dart';
import '../../../../../src/logger/failure/exceptions/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../datasources/verify_otp_data_source.dart';
part 'verify_otp_repository.g.dart';

@Riverpod(keepAlive: true)
VerifyOtpRepository verifyOtpRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return VerifyOtpRepository(VerifyOtpRemoteDataSource(networkService));
}
class VerifyOtpRepository {
  final VerifyOtpRemoteDataSource _remoteDataSource;

  VerifyOtpRepository(this._remoteDataSource);
  Future<ApiResponse<VerifyOtpResponseModel>>  verifyOtp(String phone,String otp) async {
    final response = await _remoteDataSource.verifyOtp(otp,phone);
  
    if (response.status == 200) {
      return response;
    }
  
    throw AppException(message: response.message);
  }

}