class ApiEndPoints {
  static const domain = "okaz.api";

  //? --- Home ---
  static const String homeServices = 'okaz.api.category.home_page';


  //? --- Comment ---
  static const String createComment = 'okaz.api.comment.create_comment';
  static const String updateComment = 'okaz.api.comment.update_comment';
  static const String deleteComment = 'okaz.api.comment.delete_comment';

  //? --- AUTH ---
  static const String signIn = '$domain.auth.send_otp';
  static const String signUp = '$domain.auth.sign_up';
  static const String verifyOtp = '$domain.auth.verify_otp';

  //? --- Notification ---
  static const String appNotification = 'okaz.api.api.get_notification_logs';

  //? --- Settings ---
  static const String deleteAccountApi = '$domain.profile.delete_user_profile';
  static const String logoutApi = '$domain.auth.logout';

  static const String sendFcmToken = 'fcm_frappe.api.device_token';

  //? --- Product ---

  static const String productDetails = 'okaz.api.post.post_details';
  static const String addProductToFavorite = 'product_favorite';

  //? --- Post ---
  static const String deletePost = 'okaz.api.post.delete_post';
  static const String createPost = 'okaz.api.post.create_post';
  static const String updatePost= 'okaz.api.post.update_post_details';
  static const String updatePostViews= 'okaz.api.post.update_post_views';
  //? --- Category ---
  static const String subCategoryAttributes = 'okaz.api.category.subcategory_attributes';
  static const String likePost = 'okaz.api.engagement.toggle_post_like';
  static const String addPostToFavorite =
      'okaz.api.engagement.toggle_post_favorite';

  //? --- Profile ---
  static const String getProfileData = 'okaz.api.profile.user_profile';
  static const String updateProfileData =
      'okaz.api.profile.update_user_profile';
  static const String deleteUser = 'okaz.api.profile.delete_user_profile';
  static const String userPosts = 'okaz.api.profile.user_posts';
  static const String favoritePosts = 'okaz.api.profile.favorite_posts';

  //? --- Filter ---
  static const String productsByFilter = 'products_by_filter';

  //? --- Search ---
  static const String search = 'search';
}
