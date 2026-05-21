import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

class VerificationScreenHeading extends StatelessWidget {
  final String phone;
  const VerificationScreenHeading({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Column(
      // spacing: 80,
      children: [
        20.verticalSpace,
        Align(
          alignment: context.locale == const Locale('ar')
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Container(
              width: 30,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 30,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 1,
                      offset: const Offset(0, 2),
                    ),
                  ]),
              child: GestureDetector(
                onTap: () => context.pop(),
                child: Icon(Icons.arrow_back_ios_rounded,
                    color: AppColors.primary),
              )),
        ),
        100.verticalSpace,
        Text(
          'enter_otp_title'.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w900,
              ),
        ),
        80.verticalSpace,
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
