// widgets/profile_header.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/infrastructure/storage/local_storage_service.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class ProfileHeader extends ConsumerWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storage = ref.watch(localStorageServiceProvider);
    return Column(
      spacing: 16,
      children: [
        GestureDetector(
          onTap: () => context.push(AppRoutes.editProfile),
          child: Stack(
            children: [
              CircleAvatar(
                radius: 45,
                backgroundColor: AppColors.graduationBg,
                child: Icon(
                  Icons.person,
                  size: 49,
                ),

                // backgroundImage:
                // CachedNetworkImageProvider(
                //   'https://randomuser.me/api/portraits/women/44.jpg',
                // ),
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
        ),
        Text(
          storage.userInfo.fullName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
