
import 'package:okaz/features/notifications/data/datasources/notifications_datasource.dart';
import 'package:okaz/features/notifications/domain/model/app_notifications_model.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_notifications_repository.g.dart';

@Riverpod(keepAlive: true)
AppNotificationsRepository appNotificationsRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return AppNotificationsRepository(NotificationsDatasource(networkService));
}

class AppNotificationsRepository {
  final NotificationsDatasource _remoteDataSource;

  AppNotificationsRepository(this._remoteDataSource);

  Future<ApiResponse<List<AppNotificationsModel>>> getAllOrdersNotifications(
      {required int page,String? quickOrderOfferId,}) async {
    try {
      final result = await _remoteDataSource.getAllNotification(page,quickOrderOfferId);
      if (result.hasFailed) {
        throw Exception(
          result.message ?? 'Failed to fetch OrdersOfferNotifications',
        );
      }
      // if (result.status == 200) {
      return result;
      // }
    } catch (e) {
      throw Exception('Failed to Get OrdersOfferNotifications: $e');
    }
  }

  // }
}
