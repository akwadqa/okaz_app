// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:okaz/src/core/shared_widgets/custom_button_widget.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

import '../../../gen/assets.gen.dart';

class AppErrorWidget extends StatelessWidget {
  final String? errorMsg;
  final void Function()? onTap;
  final bool withBackButton;

  const AppErrorWidget({
    super.key,
    this.errorMsg,
    this.onTap,
    this.withBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.emptyMessages.image(),
          30.verticalSpace,
          Text(
            context.tr(errorMsg ?? "unknown_error_occurred"),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          if (onTap != null) 20.verticalSpace,
          if (onTap != null)
            CustomButtonWidget(
              text: "retry".tr(),
              onTap: onTap!,
              isFiled: true,
              backgroundColor: AppColors.primary,
              radius: 8,
              height: 45,
              width: double.infinity,
            ).symmetricPadding(horizontal: 22),
          if (withBackButton) 20.verticalSpace,
          if (withBackButton)
            CustomButtonWidget(
              text: "back".tr(),
              // style: AppTextS,
              onTap: () => context.pop(),
              isFiled: false,
              backgroundColor: AppColors.white,
              radius: 8,
              height: 45,
              width: double.infinity,
            ).symmetricPadding(horizontal: 22),
        ],
      ),
    );
  }
}
