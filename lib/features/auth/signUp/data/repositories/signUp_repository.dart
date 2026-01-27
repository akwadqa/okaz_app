import 'package:okaz/features/auth/signUp/domain/model/signup_response.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/dio_client.dart';
import 'package:okaz/src/logger/failure/exceptions/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/model/signUp_params.dart';
import '../datasources/signUp_data_source.dart';
part 'signUp_repository.g.dart';

@Riverpod(keepAlive: true)
SignupRepository signupRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return SignupRepository(SignupDataSource(networkService));
}
class SignupRepository {
  final SignupDataSource _remoteDataSource;

  SignupRepository(this._remoteDataSource);
  Future<ApiResponse<SignupResponseModel>> signUp(SignupParams params) async {
    final response = await _remoteDataSource.signUp(params);
  
    if (response.status == 200||response.status == 201) {
      return response;
    }
  
    throw AppException(message: response.message);
  }

}