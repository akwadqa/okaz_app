class ApiEndPoints {
  final domain="okaze.api.";

  //? --- Home ---
  static const String homeServices = 'okaze.api.api.get_home_page_data';
  //? --- Event ---
  static const String createEvent = 'okaze.api.api.create_event';


  //? --- AUTH ---
  static const String signIn = 'okaze.api.auth.send_otp';
  static const String signUp = 'okaze.api.auth.register';
  static const String verifyOtp = 'okaze.api.auth.verify_otp';

  //? --- Notification ---
  static const String appNotification = 'okaze.api.api.get_notification_logs';

  //? --- Settings ---
  static const String deleteAccountApi = 'okaze.api.auth.delete_user';
  static const String logoutApi = 'okaze.api.auth.logout';

  //? --- EventsCollection ---
  static const String getUserEvents = 'okaze.api.api.get_user_events';
  static const String getEventDetails = 'okaze.api.api.get_event';

  //? --- QR SCAN ---
  static String scanQr = 'okaze.api.api.check_in';
  static String getScaned = 'okaze.api.api.get_scan_events';
  static const String getActiveGates = 'okaze.api.api.get_active_gates';

  static const String sendFcmToken = 'fcm_frappe.api.device_token';

  //? --- Okaz ---

  //? --- Product ---
  static const String productDetails = 'product_details';
  static const String addProductToFavorite = 'product_favorite';

  //? --- Filter ---
  static const String productsByFilter = 'products_by_filter';

  //? --- Search ---
  static const String search = 'search';
}
