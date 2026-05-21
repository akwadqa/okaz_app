
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

class SearchSubCategoiesCompanyItem extends StatelessWidget {
  const SearchSubCategoiesCompanyItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 177,
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 103,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: .05),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'phones_ipad'.tr(),
            style: AppTextStyle.rubikMedium14.copyWith(
              color: AppColors.textDart,
            ),
          ),
          SizedBox(
            width: 153,
            child: Text(
              'phones_ipad_desc'.tr(),
              textAlign: TextAlign.center,
              style: AppTextStyle.rubikRegular12.copyWith(
                color: AppColors.grayHint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
