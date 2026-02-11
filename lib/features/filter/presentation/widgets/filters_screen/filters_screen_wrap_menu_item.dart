import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class FiltersScreenWrapMenuItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const FiltersScreenWrapMenuItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 104,
        height: 30,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: .05),
              offset: Offset(0, 1),
              blurRadius: 2,
            ),
          ],
        ),
        child: Text(
          title,
          style: AppTextStyle.rubikMedium14.copyWith(
            color: isSelected ? AppColors.white : AppColors.textDart,
          ),
        ),
      ),
    );
  }
}
