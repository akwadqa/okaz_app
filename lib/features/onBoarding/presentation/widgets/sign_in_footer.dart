import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class SignInFooter extends StatelessWidget {
  const SignInFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      spacing: 26,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              'dont_have_account'.tr(),
              style: textTheme.bodyLarge!.copyWith(
                color: AppColors.gray02,
                fontWeight: FontWeight.w800,
              ),
            ),
            GestureDetector(
              onTap: () {
                context.goNamed(AppRoutes.signUpScreen);
              },
              child: Text(
                'sign_up'.tr(),
                style: textTheme.bodyLarge!.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
        // const DividerWithText(),
        // SocialLoginButton.email(),
        // SocialLoginButton.google(),
      ],
    );
  }
}
