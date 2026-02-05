import 'package:flutter/material.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class HomeScreenSearchFiled extends StatelessWidget {
  const HomeScreenSearchFiled({super.key});
  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffE8E8E8)),
      borderRadius: BorderRadius.circular(24),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(4),
        prefixIcon: Icon(Icons.search, color: AppColors.grayHint),
        hintText: 'ابحث عن أي شيء...',
        hintStyle: AppTextStyle.interRegular16.copyWith(
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
    ).symmetricPadding(horizontal: 16);
  }

}
