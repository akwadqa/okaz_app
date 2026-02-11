import 'package:flutter/material.dart';
import 'package:okaz/features/filter/presentation/widgets/searc_sub_categories_screen/search_sub_categories_companies_section.dart';
import 'package:okaz/features/filter/presentation/widgets/searc_sub_categories_screen/search_sub_categories_heading.dart';
import 'package:okaz/features/filter/presentation/widgets/searc_sub_categories_screen/sub_categories_section.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class SearchSubCategoriesScreen extends StatelessWidget {
  const SearchSubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: _SearchSubCategoriesScreenContent(),
    );
  }
}

class _SearchSubCategoriesScreenContent extends StatelessWidget {
  const _SearchSubCategoriesScreenContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchSubCategoriesHeading(),
        Divider(height: 24, color: AppColors.dividerColor),
        SubCategoriesSection(),
        Divider(height: 24, color: AppColors.dividerColor),
        SearchSubCategoriesCompaniesSection(),
      ],
    );
  }
}
