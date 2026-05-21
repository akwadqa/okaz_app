import 'package:flutter/material.dart';
import '../widgets/searc_sub_categories_screen/search_sub_categories_heading.dart';
import '../widgets/searc_sub_categories_screen/sub_categories_section.dart';
import '../../../home/domain/model/home_model/home_model.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';

class SearchSubCategoriesScreen extends StatelessWidget {
  const SearchSubCategoriesScreen({super.key, required this.subCategoryModel});
  final SubCategoryModel subCategoryModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: _SearchSubCategoriesScreenContent(subCategoryModel),
    );
  }
}

class _SearchSubCategoriesScreenContent extends StatelessWidget {
  const _SearchSubCategoriesScreenContent(this.subCategoryModel);
  final SubCategoryModel subCategoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchSubCategoriesHeading(subCategoryModel: subCategoryModel),
        Divider(height: 24, color: AppColors.dividerColor),
        if (subCategoryModel.mainAttributes?.isNotEmpty ?? false)
          SubCategoriesSection(subCategoryModel),
        // if (subCategoryModel.mainAttributes?.isNotEmpty ?? false)
        // Divider(height: 24, color: AppColors.dividerColor),
        // SearchSubCategoriesCompaniesSection(),
      ],
    );
  }
}
