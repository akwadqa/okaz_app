
import 'package:okaz/features/notifications/data/repositories/app_notifications_repository.dart';
import 'package:okaz/features/notifications/domain/model/app_notifications_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_notifications_controller.g.dart';


@riverpod
class AppNotificationsController extends _$AppNotificationsController {
  List<AppNotificationsModel> _notifications = [];
  int _currentPage = 1;
  int _totalPages = 1;

  @override
  FutureOr<List<AppNotificationsModel>> build() async {
        await Future.delayed(const Duration(milliseconds: 400));

    return _mockNotifications();
    // return await fetchOrdersOffersNotifications(page: 1);
  }

  Future<List<AppNotificationsModel>> fetchOrdersOffersNotifications(
      {required int page, bool showLoading = true}) async {
    try {
      if (showLoading) state = const AsyncLoading();

      final repo = ref.read(appNotificationsRepositoryProvider);
      final response = await repo.getAllOrdersNotifications(page: page);

      // افترض أن الدالة ترجع كائن يحتوي على:
      // data: List<AppNotificationsModel>
      // pagination: {...}
      _currentPage = response.pagination!.currentPage;
      _totalPages = response.pagination!.totalPages;

      if (page == 1) {
        _notifications =  List.from(response.data!);
      } else {
        _notifications.addAll(response.data!);
      }

      state = AsyncData(_notifications);
      return _notifications;
    } catch (e, st) {
      state = AsyncError(e, st);
      return [];
    }
  }

  Future<bool> loadNextPage() async {
    if (_currentPage >= _totalPages) return false;
    final nextPage = _currentPage + 1;
    final result = await fetchOrdersOffersNotifications(page: nextPage,showLoading: false);
    return result.isNotEmpty;
  }

  Future<bool> refreshOrders() async {
    _notifications.clear();
    _currentPage = 1;
    _totalPages = 1;
    await fetchOrdersOffersNotifications(page: 1);
    return true;
  }


   List<AppNotificationsModel> _mockNotifications({int page = 1}) {
    final now = DateTime.now();

    return [
      AppNotificationsModel(
        // id: 'n${page}_1',
        subject: 'Order Sent',
        emailContent: 'Your order has been sent successfully.',
        creation: now.subtract(const Duration(minutes: 10)),
      ),
      AppNotificationsModel(
        // id: 'n${page}_2',
        subject: 'Order Confirmed',
        emailContent: 'Your order has been confirmed.',
        creation: now.subtract(const Duration(hours: 3)),
      ),
      AppNotificationsModel(
        // id: 'n${page}_3',
        subject: 'Order Declined',
        emailContent: 'Unfortunately, your order was declined.',
        creation: now.subtract(const Duration(days: 1, hours: 2)),
      ),
      AppNotificationsModel(
        // id: 'n${page}_4',
        subject: 'Order Sent',
        emailContent: 'The seller has sent your order.',
        creation: now.subtract(const Duration(days: 2)),
      ),
    ];
  }
}
