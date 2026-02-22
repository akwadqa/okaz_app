import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

import 'custom_button_widget.dart';

class GuestRequiredWidget extends StatelessWidget {
  const GuestRequiredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Assets.images.accessDenied.svg(),
        // const SizedBox(height: 20),
        CustomButtonWidget(
          text: 'login_required'.tr(),
          onTap: () => context.pushReplacement(AppRoutes.signInScreen),
          isFiled: false,
          height: 55,
          width: double.infinity,
          color: AppColors.primary,
          backgroundColor: Colors.white,
          radius: 12,
        ).symmetricPadding(horizontal: 16),
        const SizedBox(height: 12),
        Text(
          "login_required_message".tr(),
          textAlign: TextAlign.center,
          style: AppTextStyle.outfitRegular16,
        ),

        // const SizedBox(height: 30),
      ],
    );
  }
}
