import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../src/application/router/app_routes.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';

class SignInFooter extends StatelessWidget {
  const SignInFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return  GestureDetector(
      onTap: () {
        context.pushReplacement(AppRoutes.mainScreen);
      },
      child: Text(
                'continue_as_guest'.tr(),
                style: textTheme.bodyLarge!.copyWith(
                  color: AppColors.gray02,
                  fontWeight: FontWeight.w800,
                ),
              ),
    );}
}
