import 'package:flutter/material.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class SearchScreenRecentHeader extends StatelessWidget {
  final String title;
  final String actionTitle;
  final VoidCallback onTap;

  const SearchScreenRecentHeader({
    super.key,
    required this.title,
    required this.actionTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.rubikSemiBold14.copyWith(
            color: AppColors.black900,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionTitle,
            style: AppTextStyle.rubikMedium12.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    ).symmetricPadding(horizontal: 22);
  }
}
