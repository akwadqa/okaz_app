import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';

class SettingsSectionTitle extends StatelessWidget {
  final String title;

  const SettingsSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    return Container(
      height: 50,
      width: double.infinity,
      color: AppColors.lightGray,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical:  12),
      child: Text(title.tr(), style: textTheme.displayLarge!.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 18),));
  }
}
