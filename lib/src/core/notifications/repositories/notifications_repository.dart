import 'package:dio/dio.dart';
import '../../../infrastructure/api/endpoint/api_endpoints.dart';
import '../../../infrastructure/api/endpoint/services_urls.dart';
import '../../../infrastructure/api/response/api_response.dart';
import '../../../infrastructure/network/services/dio_client.dart';
import '../../../infrastructure/network/services/network_service.dart';
import '../../../logger/failure/exceptions/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'notifications_repository.g.dart';

@riverpod
NotificationsRepository notificationsRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  final newDio = Dio(dio.options.copyWith(baseUrl: ServicesUrls.prodBaseUrl));
  newDio.interceptors.addAll(dio.interceptors);

  final NetworkService networkService =
      ref.watch(networkServiceProvider(newDio));

  return NotificationsRepository(networkService);
}

class NotificationsRepository {
  final NetworkService _networkService;

  NotificationsRepository(this._networkService);

  Future<void> sendFCMToken(String token, String userId) async {
    final response =
        await _networkService.post(ApiEndPoints.sendFcmToken, data: {
      'device_token': token,

      'user_id': '$userId@okaz.com'
      // 'user_id': '97466666666@okaz.com'
    });

    final ApiResponse appResponse =
        ApiResponse.fromJson(response.data, (json) => null);

    if (appResponse.error == 1) {
      throw AppException(message: appResponse.message);
    }
  }
}
