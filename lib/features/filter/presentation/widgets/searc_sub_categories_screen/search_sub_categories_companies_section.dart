
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'search_sub_categories_company_item.dart';
import '../../../../../src/core/utils/extenssions/widget_extensions.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

class SearchSubCategoriesCompaniesSection extends StatelessWidget {
  const SearchSubCategoriesCompaniesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text(
          'companies'.tr(),
          style: AppTextStyle.rubikSemiBold18.copyWith(
            color: AppColors.textDart,
          ),
        ),
        Wrap(
          children: [
            SearchSubCategoiesCompanyItem(),
          ],
        ),
      ],
    ).symmetricPadding(horizontal: 22);
  }
}
