
import '../../domain/model/app_notifications_model.dart';
import '../../../../src/infrastructure/api/endpoint/api_endpoints.dart';
import '../../../../src/infrastructure/api/response/api_response.dart';
import '../../../../src/infrastructure/network/services/network_service.dart';

class NotificationsDatasource {
  final NetworkService _networkService;

  NotificationsDatasource(this._networkService);

  Future<ApiResponse<List<AppNotificationsModel>>> getAllNotification(
    int page,
    String? email
  ) async {
    try {
      final response = await _networkService.get(
        ApiEndPoints.appNotification,
        queryParameters: {
          'page': page,
        "for_user": "test@email.com"

        },
      );
      return ApiResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) =>
                AppNotificationsModel.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }
}
