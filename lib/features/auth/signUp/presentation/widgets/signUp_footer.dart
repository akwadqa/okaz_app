import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../src/application/router/app_routes.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Text(
            'already_have_account'.tr(),
            style: textTheme.bodyLarge!.copyWith(
              color: AppColors.gray02,
              fontWeight: FontWeight.w800,
            ),
          ),
          GestureDetector(
            onTap: () => context.go(AppRoutes.signInScreen),
            child: Text(
              'login'.tr(),
              style: textTheme.bodyLarge!.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
