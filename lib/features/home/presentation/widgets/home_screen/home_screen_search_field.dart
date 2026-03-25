import 'package:flutter/material.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class HomeScreenSearchFiled extends StatelessWidget {
  const HomeScreenSearchFiled({
    super.key,
    required this.title,
    this.withPadding = true,
    this.onTap,
    this.onChanged,
    this.value,
  });
  final String title;
  final String? value;
  final void Function(String)? onChanged;
  final bool withPadding;
  final VoidCallback? onTap;
  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffE8E8E8)),
      borderRadius: BorderRadius.circular(24),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        onTap != null ? onTap!() : null;
      },
      readOnly: onTap != null,
      onChanged: onChanged,
      initialValue: value,
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(4),
        prefixIcon: Icon(Icons.search, color: AppColors.grayHint),
        hintText: title,
        hintStyle: AppTextStyle.rubikRegular16.copyWith(
          color: AppColors.grayHint,
        ),
        
        filled: true,
        fillColor: AppColors.white,
        border: _border(),
        errorBorder: _border(),
        enabledBorder: _border(),
        focusedBorder: _border(),
        disabledBorder: _border(),
        focusedErrorBorder: _border(),
      ),
    ).symmetricPadding(horizontal: withPadding ? 22 : 0);
  }
}
