import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/auth/signIn/presentation/widgets/divider_with_text.dart';
import 'package:okaz/features/auth/signIn/presentation/widgets/social_login_button.dart';
import 'package:okaz/features/auth/widgets/text_form_fields/phone_number_field.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/custom_button_widget.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

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
            'alreadyHaveAnAccount'.tr(),
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
