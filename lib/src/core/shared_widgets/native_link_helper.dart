import 'package:flutter/services.dart';

class NativeLinkHelper {
  //? The same name for Android channel :
  static const platform = MethodChannel('qa.app.okaz/deep_link_status');

  static Future<bool> checkAndroidLinkStatus() async {
    try {
      final bool result = await platform.invokeMethod('isLinkVerified');
      return result;
    } on PlatformException catch (e) {
      print("خطأ في الاتصال بالـ Native: ${e.message}");
      return false;
    }
  }
}