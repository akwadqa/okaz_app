import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class VerificationScreenFooter extends StatelessWidget {
  const VerificationScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
  'privacy_agreement'.tr(),
      textAlign: TextAlign.center,
      style: AppTextStyle.outfitRegular16,
    );
  }
}
