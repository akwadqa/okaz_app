import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class HomeScreenSubCategoryItem extends StatelessWidget {
  const HomeScreenSubCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(AppRoutes.searchSubCategoryScreen),
      child: Container(
        width: 94,
        height: 94,
        decoration: BoxDecoration(
          color: AppColors.lightRedBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          spacing: 4,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.phoneImage.image(height: 60),
            Text(
              'هاتف',
              style: AppTextStyle.rubikMedium14.copyWith(
                color: AppColors.textDart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
