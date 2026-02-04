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
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => context.pushNamed(AppRoutes.searchSubCategoryScreen),
      child: Container(
        width: width / 4.5,
        height: width / 4.5,
        decoration: BoxDecoration(
          color: AppColors.lightRedBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          spacing: 4,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.phoneImage.image(height: width / 7),
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
