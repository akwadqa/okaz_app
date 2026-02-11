import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_search_field.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class FiltersScreenSearchFiled extends StatelessWidget {
  const FiltersScreenSearchFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          'search_by_specific_word'.tr(),
          style: AppTextStyle.rubikMedium16.copyWith(color: AppColors.textDart),
        ),
        HomeScreenSearchFiled(
          title: 'search_by_model_color_or_condition'.tr(),
          withPadding: false,
        ),
      ],
    );
  }
}
