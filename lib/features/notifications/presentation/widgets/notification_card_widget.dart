import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

enum NotificationType { success, confirmed, declined }

class NotificationItemCard extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  // final NotificationType type;

  const NotificationItemCard({
    super.key,
    required this.title,
    required this.message,
    required this.time,
    // required this.type,
  });

  // Color get bgColor {
  //   switch (type) {
  //     case NotificationType.success:
  //       return AppColors.greenOpacity;
  //     case NotificationType.confirmed:
  //       return AppColors.orangeOpacity;
  //     case NotificationType.declined:
  //       return AppColors.redOpacity;
  //   }
  // }

  // Color get iconColor {
  //   switch (type) {
  //     case NotificationType.success:
  //       return Colors.green;
  //     case NotificationType.confirmed:
  //       return Colors.orange;
  //     case NotificationType.declined:
  //       return Colors.red;
  //   }
  // }

  // IconData get icon {
  //   switch (type) {
  //     case NotificationType.success:
  //       return Icons.check;
  //     case NotificationType.confirmed:
  //       return Icons.notifications_none_rounded;
  //     case NotificationType.declined:
  //       return Icons.close;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: AppColors.orangeOpacity,
            child: Icon(Icons.notifications_none_rounded, color: Colors.orange),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      time,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
