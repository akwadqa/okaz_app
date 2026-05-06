import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension ArabicDateFormatter on DateTime {
  String toArabicDate(String locale) {
    return DateFormat("d MMMM yy", locale).format(this);
  }
}

extension TimeFormatExtension on String {
  /// Converts `HH:mm:ss.SSSSSS` string to localized time format like "10:00 AM" or "10:00 صباحًا"
  String formatTimeLocalized(BuildContext context) {
    try {
      final time = DateFormat("HH:mm:ss.SSSSSS").parse(this);
      final isArabic = Localizations.localeOf(context).languageCode == 'ar';
      return DateFormat(isArabic ? 'h:mm a' : 'h:mm a', isArabic ? 'ar' : 'en')
          .format(time);
    } catch (e) {
      return this; // fallback in case parsing fails
    }
  }
}

extension TimeAgo on DateTime {
  String timeAgo() {
    final diff = DateTime.now().difference(this);

    if (diff.inMinutes < 60) {
      if (diff.inMinutes == 0 || diff.inMinutes == 1) {
        return 'just_now'.tr();
      }
      return 'minutes_ago'.tr(args: [diff.inMinutes.toString()]);
    } else if (diff.inHours < 24) {
      return 'hours_ago'.tr(args: [diff.inHours.toString()]);
    } else {
      return 'days_ago'.tr(args: [diff.inDays.toString()]);
    }
  }
}

String formatGroupDate(String dateKey) {
  final now = DateTime.now();
  final today = DateFormat('dd-MM-yyyy').format(now);
  final yesterday =
      DateFormat('dd-MM-yyyy').format(now.subtract(const Duration(days: 1)));

  if (dateKey == today) {
    return 'Today';
  } else if (dateKey == yesterday) {
    return 'Yesterday';
  } else {
    return DateFormat('dd MMM yyyy')
        .format(DateFormat('dd-MM-yyyy').parse(dateKey));
  }
}
