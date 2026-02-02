import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class SubCategoryItem extends StatelessWidget {
  const SubCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRoutes.productsScreen),
      child: Container(
        width: 104,
        height: 40,
        alignment: Alignment.center,

        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: .05),
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Text(
          'ايفون',
          style: AppTextStyle.rubikMedium14.copyWith(color: AppColors.textDart),
        ),
      ),
    );
  }
}
