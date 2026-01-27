import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    this.controller,
    required this.hint,
    required this.label,
    this.isReadOnly = false,
    this.icon,
    required this.isRequired,
    this.onTap,
    this.isPassword = false,
    this.withIcon = true,
    this.validator,
    this.inputType = TextInputType.text,
    this.value,
  });
  final void Function()? onTap;
  final String? value;
  final String hint, label;
  final bool isPassword;
  final SvgGenImage? icon;
  final TextInputType? inputType;
  final bool isRequired, isReadOnly, withIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  String? requiredVal(String? val, BuildContext context) {
    if ((val?.isEmpty ?? true) || val == null) {
      return context.tr('required');
    }
    return null;
  }

  String? emailVal(String? val, BuildContext context) {
    if ((val?.isEmpty ?? true) || val == null) {
      return null;
    } else {
      if (!val.contains('@')) {
        return context.tr('emailValidatorMessage');
      }
    }
    return null;
  }

  bool _obscurePassword = true;
  // 👈 control password visibility
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(widget.label, style: AppTextStyle.rubikMedium16),
        // 12.verticalSpace,
        Container(
          // width: double.infinity,
          clipBehavior: Clip.antiAlias,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            obscureText: widget.isPassword ? _obscurePassword : false,
            obscuringCharacter: '*', // key: ValueKey(value),
            // initialValue: value,
            onTap: widget.onTap,
            keyboardType: widget.inputType,
            readOnly: widget.isReadOnly,
            controller: widget.controller,
            validator: widget.validator ??
                (val) => widget.isRequired
                    ? requiredVal(val, context)
                    : emailVal(val, context),
            cursorColor: AppColors.primary,
            style: AppTextStyle.rubikRegular16,
            // style: AppTextStyle.rubikRegular16.copyWith(
            //   color: AppColors.primary,
            // ),
            decoration: InputDecoration(
              filled: true,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        size: 20,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    )
                  : null,
              hintText: widget.hint,
              hintStyle: AppTextStyle.rubikRegular16
                  .copyWith(color: AppColors.grayHint),
              // hintStyle: AppTextStyle.rubikRegular16.copyWith(
              //   color: AppColors.grayHint,
              // ),

              // contentPadding: withIcon
              //     ? EdgeInsets.zero
              //     : EdgeInsets.symmetric(horizontal: 16.w),
              prefixIcon: widget.withIcon
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17),
                      child: widget.icon!.svg(),
                    )
                  : null,

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColors.primary),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColors.grayBorder),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColors.darkRed),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColors.grayBorder),
              ),
              // prefixIconConstraints: BoxConstraints(maxWidth: 18),
            ),
          ),
        ),
      ],
    );
  }
}
