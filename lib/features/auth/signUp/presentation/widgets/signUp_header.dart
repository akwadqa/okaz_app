import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 20,
      children: [
        30.verticalSpace,
        Text(
          'create_account'.tr(),
          textAlign: TextAlign.center,
          style: textTheme.headlineLarge!.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w900,
          ),
        ),
        10.verticalSpace,
        // Text(
        //   'welcome_back'.tr(),
        //   textAlign: TextAlign.start,
        //   style: AppTextStyle.rubikBold20,
        //   // style: textTheme.displaySmall!.copyWith(
        //   //   color: AppColors.black,
        //   //   fontWeight: FontWeight.w800,
        //   // ),
        // ),
        Text(
          'create_account_subtitle'.tr(),
          textAlign: TextAlign.start,
          style: AppTextStyle.rubikMedium16,
          // style: textTheme.displaySmall!.copyWith(
          //   color: AppColors.black,
          //   fontWeight: FontWeight.w800,
          // ),
        ),
      ],
    );
  }
}
