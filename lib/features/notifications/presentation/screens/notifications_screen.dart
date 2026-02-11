import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:okaz/features/notifications/domain/model/app_notifications_model.dart';
import 'package:okaz/features/notifications/presentation/controller/app_notifications_controller.dart';
import 'package:okaz/features/notifications/presentation/widgets/notification_card_widget.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/core/shared_widgets/app_empty_data_widget.dart';
import 'package:okaz/src/core/shared_widgets/app_error_widget.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/core/shared_widgets/app_pagination_widget.dart';
import 'package:okaz/src/core/shared_widgets/custom_appbar.dart';
import 'package:okaz/src/core/utils/extenssions/time_extension.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersNotificationsAsync =
        ref.watch(appNotificationsControllerProvider);
    final controller = ref.read(
      appNotificationsControllerProvider.notifier,
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: CustomAppbar(
          title: context.tr('notifications'),

          // withBackButton: false,
        ),
      ),
      body: ordersNotificationsAsync.when(
        data: (notifications) {
          if (notifications.isEmpty) {
            return 
            
            AppEmptyDataWidget(text: "no_notifications",image: Assets.images.emptyNotificationIm.image() ,);
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   spacing: 20,
            //   children: [
            //     Assets.images.emptyNotificationIm.image().centered(),
            //     Text('no_notifications'.tr()),
            //   ],
            // );
          }

          final grouped = <String, List<_NotificationWrapper>>{};

          for (final item in notifications) {
            final createdAt = item.creation;
            final dateKey = DateFormat('dd-MM-yyyy').format(createdAt);
            final formattedTime = item.creation.timeAgo();

            grouped.putIfAbsent(dateKey, () => []).add(
                  _NotificationWrapper(
                    notification: item,
                    formattedTime: formattedTime,
                  ),
                );
          }

          final groupedEntries = grouped.entries.toList()
            ..sort((a, b) => b.key.compareTo(a.key));

          return AppPaginationWidget(
            onLoading: (page) async => await controller.loadNextPage(),
            onRefresh: () async => await controller.refreshOrders(),
            enablePullDown: true,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric( vertical: 8),
              itemCount: groupedEntries.fold(
                0,
                (count, e) => count! + e.value.length + 1,
              ),
              itemBuilder: (context, index) {
                int runningIndex = 0;

                for (final entry in groupedEntries) {
                  if (index == runningIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            formatGroupDate(entry.key),
                            style:  TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ).symmetricPadding(horizontal: 16),
                          // Flexible(
                          //   child: Divider(
                          //     height: 1,
                          //     thickness: 1,
                          //     indent: 16,
                          //     color: AppColors.dividerColor,
                          //   ),
                          // )
                        ],
                      ),
                    );
                  }

                  runningIndex++;

                  for (final item in entry.value) {
                    if (index == runningIndex) {
                      final data = item.notification;
                      // final type = data.subject.contains("Sent")
                      //     ? NotificationType.success
                      //     : data.subject.contains("Confirmed")
                      //         ? NotificationType.confirmed
                      //         : NotificationType.declined;

                      return NotificationItemCard(
                        title: data.subject.toUpperCase(),
                        message: data.emailContent,
                        time: data.creation.timeAgo(),
                        // type: type,
                      ).onlyPadding(bottom: 10);
                    }
                    runningIndex++;
                  }
                }

                return const SizedBox.shrink();
              },
            ),
          );
        },
        error: (error, stackTrace) => const AppErrorWidget(),
        loading: () => const Center(child: AppLoader()),
      ),
    );
  }
}

class _NotificationWrapper {
  final AppNotificationsModel notification;
  final String formattedTime;

  _NotificationWrapper({
    required this.notification,
    required this.formattedTime,
  });
}
