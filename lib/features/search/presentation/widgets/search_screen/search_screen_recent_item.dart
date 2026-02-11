import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class SearchScreenRecentItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const SearchScreenRecentItem({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          spacing: 8,
          children: [
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.right,
                style: AppTextStyle.rubikRegular16.copyWith(
                  color: AppColors.grayHint,
                ),
              ),
            ),
            Icon(Icons.close, color: AppColors.grayHint),
          ],
        ),
      ),
    );
  }
}
