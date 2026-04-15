import 'dart:io';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:okaz/src/infrastructure/network/services/dio_client.dart';
import 'package:okaz/src/infrastructure/storage/local_storage_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

Future<T> retryOperation<T>(
  Future<T> Function() operation, {
  int maxAttempts = 3,
}) async {
  int attempts = 0;
  while (attempts < maxAttempts) {
    try {
      return await operation();
    } catch (e) {
      attempts++;
      print('Operation failed (attempt $attempts): $e');
      if (attempts >= maxAttempts) rethrow;
      // Exponential backoff
      await Future.delayed(
        Duration(milliseconds: pow(2, attempts).toInt() * 500),
      );
    }
  }
  throw Exception('Failed after $maxAttempts attempts');
}

bool isRTL(String text) {
  final rtlRegex = RegExp(r'^[\u0600-\u06FF]');
  return rtlRegex.hasMatch(text.trim());
}

Future<void> safelyPop(BuildContext context) async {
  FocusScope.of(context).unfocus();
  await Future.delayed(const Duration(milliseconds: 100));
  if (context.mounted) context.maybePop();
}

String translate(String ar, String en, BuildContext context) {
  final local = context.locale.languageCode;
  return local == 'ar' ? ar : en;
}

Future<void> openWhatsApp(String phoneNumber) async {
  final cleanNumber = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

  final Uri whatsappUrl = Uri.parse("https://wa.me/$cleanNumber");

  try {
    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(
        whatsappUrl,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  } catch (e) {
    print("Error opening WhatsApp: $e");
  }
}

Future<void> openPhoneDialer(String phoneNumber) async {
  final String cleanNumber = phoneNumber.replaceAll(RegExp(r'\s+\b|\b\s'), '');

  final Uri phoneUri = Uri(scheme: 'tel', path: cleanNumber);

  try {
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(
        phoneUri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      print("المشغل لا يدعم فتح لوحة الاتصال");
    }
  } catch (e) {
    print("حدث خطأ أثناء محاولة فتح تطبيق الهاتف: $e");
  }
}

Future<void> sharePost({
  required String title,
  required String price,
  required String postId,
  required WidgetRef ref,
  required String? imageUrl,
}) async {
  final link = 'https://okaz.akwad.qa/product_details?id=$postId';
  final String message = '🛍️ *للبيع:* $title\n'
      '💰 *السعر:* $price\n\n'
      'تفقد هذا العرض على تطبيق عكاظ:\n'
      '$link';
  Dev.logLine(link);

  try {
    if (imageUrl != null && imageUrl.isNotEmpty) {
      final directory = await getTemporaryDirectory();
      final String imagePath = '${directory.path}/shared_product_image.png';

      final dio = ref.read(dioProvider);
      await dio.download(imageUrl, imagePath);

      await Share.shareXFiles(
        [XFile(imagePath)],
        text: message,
      );
    } else {
      //? Share message if the image was empty :
      await Share.share(message);
    }
  } catch (e) {
    //? For weak internet or any issue :
    await Share.share(message);
    print("Error during sharing: $e");
  }
}

Future<void> checkAuth({
  required WidgetRef ref,
  required BuildContext context,
  required void Function() action,
}) async {
  // final authState = ref.read(localStorageServiceProvider).;
  final isLoggedIn = await ref.read(isAuthenticatedProvider.future);

  if (!isLoggedIn) {
    showErrorDialog(context, 'login_required_message'.tr());
  } else {
    action();
  }
}
