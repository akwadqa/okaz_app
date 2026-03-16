// widgets/profile_header.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [

        Stack(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundImage: CachedNetworkImageProvider(
                'https://randomuser.me/api/portraits/women/44.jpg',
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.primary,
                child: Icon(Icons.edit, size: 16, color: Colors.white),
              ),
            ),
          ],
        ),
        Text(
          'profile_name_placeholder'.tr(),
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
