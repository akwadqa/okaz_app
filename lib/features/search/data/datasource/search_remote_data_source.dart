import 'package:okaz/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/network_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';

class SearchRemoteDataSource {
  final NetworkService _networkService;

  SearchRemoteDataSource(this._networkService);

  Future<ApiResponse> searchForProduct(String search) async {
    try {
      final response = await _networkService.get(
        ApiEndPoints.search,
        // data: data,
        queryParameters: {},
      );
  
      if (response.data == null || response.statusCode != 200) {
        throw Exception('Request failed');
      }
  
      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) {},
      );
    } catch (e) {
      Dev.logLine('Error in submitData: e');
      rethrow;
    }
  }
}
