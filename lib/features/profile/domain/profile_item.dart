// model/profile_item.dart
class ProfileItem {
  final String id;
  final String title;
  final String image;
  final String condition;
  final double price;
  final int likes;
  final int comments;

  ProfileItem({
    required this.id,
    required this.title,
    required this.image,
    required this.condition,
    required this.price,
    required this.likes,
    required this.comments,
  });
}
