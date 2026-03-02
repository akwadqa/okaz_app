class ApiEndPoints {
  static const domain = "okaz.api";

  //? --- Home ---
  static const String homeServices = 'okaz.api.category.home_page';
  //? --- Event ---
  static const String createEvent = 'okaz.api.api.create_event';

  //? --- Comment ---
  static const String createComment = 'okaz.api.comment.create_comment';

  //? --- AUTH ---
  static const String signIn = '$domain.auth.send_otp';
  static const String signUp = '$domain.auth.sign_up';
  static const String verifyOtp = '$domain.auth.verify_otp';

  //? --- Notification ---
  static const String appNotification = 'okaz.api.api.get_notification_logs';

  //? --- Settings ---
  static const String deleteAccountApi = '$domain.profile.delete_user_profile';
  static const String logoutApi = '$domain.auth.logout';

  //? --- EventsCollection ---
  static const String getUserEvents = 'okaz.api.api.get_user_events';
  static const String getEventDetails = 'okaz.api.api.get_event';

  //? --- QR SCAN ---
  static String scanQr = 'okaz.api.api.check_in';
  static String getScaned = 'okaz.api.api.get_scan_events';
  static const String getActiveGates = 'okaz.api.api.get_active_gates';

  static const String sendFcmToken = 'fcm_frappe.api.device_token';

  //? --- Okaz ---

  //? --- Product ---
  static const String productDetails = 'okaz.api.post.post_details';
  static const String addProductToFavorite = 'product_favorite';
  static const String deletePost = 'okaz.api.post.delete_post';

  //? --- Filter ---
  static const String productsByFilter = 'products_by_filter';

  //? --- Search ---
  static const String search = 'search';
}
