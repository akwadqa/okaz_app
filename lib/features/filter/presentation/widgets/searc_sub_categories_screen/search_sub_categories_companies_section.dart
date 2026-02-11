
import 'package:flutter/material.dart';
import 'package:okaz/features/filter/presentation/widgets/searc_sub_categories_screen/search_sub_categories_company_item.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

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
          'الشركات',
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
