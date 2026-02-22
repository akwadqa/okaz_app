import 'package:easy_localization/easy_localization.dart' as local;
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';
import 'package:pinput/pinput.dart';

class VerificationScreenPin extends StatelessWidget {
  const VerificationScreenPin({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;
  // final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    var pinTheme = PinTheme(
      textStyle: AppTextStyle.rubikRegular20.copyWith(color: AppColors.primary),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.primaryBorder),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        // onSubmitted: onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'please_enter_code'.tr();
          }
          if (value.length < 6) {
            return 'code_must_be_6_numbers'.tr();
          }
          return null;
        },
        readOnly: false,
        controller: controller,
        showCursor: false,
        // preFilledWidget: Text(
        //   '-',
        //   style: AppTextStyle.rubikRegular20.copyWith(color: AppColors.black),
        // ),
        focusedPinTheme: pinTheme.copyBorderWith(
          border: Border.all(color: AppColors.primary),
        ),
        errorPinTheme: pinTheme.copyBorderWith(
          border: Border.all(color: AppColors.darkRed),
        ),
        length: 6,
        defaultPinTheme: pinTheme,
      ),
    );
  }
}
