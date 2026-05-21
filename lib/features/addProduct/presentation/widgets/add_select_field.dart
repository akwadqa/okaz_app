import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../src/resourses/font_manager/app_text_style.dart';

class AddSelectField extends StatelessWidget {
  const AddSelectField({
    super.key,
    this.controller,
    required this.hint,
    required this.label,
    this.isReadOnly = false,
    this.icon,
    required this.isRequired,
    this.onTap,
    this.readOnly = true,
    this.withIcon = true,
    this.validator,
    this.inputType = TextInputType.text,
    this.value,
  });
  final void Function()? onTap;
  final String? value;
  final String hint, label;
  final bool readOnly;
  final Widget? icon;
  final TextInputType? inputType;
  final bool isRequired, isReadOnly, withIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  String? requiredVal(String? val, BuildContext context) {
    if ((val?.isEmpty ?? true) || val == null) {
      return context.tr('required');
    }
    return null;
  }

  String? emailVal(String? val, BuildContext context) {
    if ((val?.isEmpty ?? true) || val == null) {
      return null;
    } else {}
    return null;
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(color: color),
      );

  // 👈 control password visibility
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Label
        Row(
          children: [
            Text(label.tr(), style: AppTextStyle.rubikMedium16),
            if (isRequired)
              const Text(
                ' *',
                style: TextStyle(color: AppColors.primary, fontSize: 18),
              ),
          ],
        ),
        12.verticalSpace,

        /// Field
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(24),
          child: IgnorePointer(
            child: TextFormField(
              readOnly: readOnly,
              cursorColor: AppColors.primary,
              style: AppTextStyle.rubikRegular16,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: value?.isNotEmpty == true ? value : hint.tr(),
                hintStyle: AppTextStyle.rubikRegular16.copyWith(
                  // color: value == null ? AppColors.grayHint : AppColors.black,
                  color: AppColors.black,
                ),
                // prefixIcon: Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 16),
                //   child: icon ??
                //       const Icon(
                //         Icons.keyboard_arrow_down_rounded,
                //       ),
                // ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: icon ??
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                      ),
                ),
                enabledBorder: _border(AppColors.grayBorder),
                focusedBorder: _border(AppColors.primary),
              ),
            ),
          ),
        ),
        20.verticalSpace,
      ],
    );
  }
}
