import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      spacing: 20,
      children: [
        Text(
          'login'.tr(),
          textAlign: TextAlign.center,
          style: textTheme.headlineLarge!.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          'login_desc'.tr(),
          textAlign: TextAlign.center,
          style: AppTextStyle.rubikMedium14,
          // style: textTheme.displaySmall!.copyWith(
          //   color: AppColors.black,
          //   fontWeight: FontWeight.w800,
          // ),
        ),
      ],
    );
  }
}
