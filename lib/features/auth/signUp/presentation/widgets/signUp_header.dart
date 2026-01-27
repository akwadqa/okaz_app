import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Text(
      'sign_up'.tr(),
      textAlign: TextAlign.center,
      style: textTheme.displayLarge!.copyWith(
        color: AppColors.primary,
        fontWeight: FontWeight.w800,
        fontSize: 34
      ),
    );
  }
}
