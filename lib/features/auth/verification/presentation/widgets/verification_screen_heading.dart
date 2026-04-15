import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class VerificationScreenHeading extends StatelessWidget {
  final String phone;
  const VerificationScreenHeading({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 80,
      children: [
        60.verticalSpace,
        Text(
          'enter_otp_title'.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w900,
              ),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 2,
          children: [
            Text(
              'otp_sent_message'.tr(),
              textAlign: TextAlign.center,
              style: AppTextStyle.outfitRegular16,
            ),
            Directionality(
              textDirection: ui.TextDirection.ltr,
              child: Text(
                phone.replaceRange(0, phone.length - 3, '********'),
                textAlign: TextAlign.center,
                style: AppTextStyle.outfitRegular16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
