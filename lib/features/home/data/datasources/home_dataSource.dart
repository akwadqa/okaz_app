import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/network_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';

class HomeRemoteDataSource {
  final NetworkService _networkService;

  HomeRemoteDataSource(this._networkService);

Future<ApiResponse<HomeModel>> getHomeData() async {
  try {
    final response = await _networkService.get(
      ApiEndPoints.homeServices,
    );

    if (response.data == null || response.statusCode != 200) {
      throw Exception('Failed to load data');
    }

    return ApiResponse.fromJson(
      response.data as Map<String, dynamic>,
      (json) => HomeModel.fromJson(json as Map<String, dynamic>),
    );
  } catch (e) {
    Dev.logLine('Error in getHomeData: $e');
    rethrow;
  }
}
}