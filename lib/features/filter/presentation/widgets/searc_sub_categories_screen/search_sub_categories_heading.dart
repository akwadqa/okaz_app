import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../home/domain/model/home_model/home_model.dart';
import '../../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../../src/core/utils/extenssions/widget_extensions.dart';
import '../../../../../src/core/utils/functions/helper_methods.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

class SearchSubCategoriesHeading extends StatelessWidget {
  const SearchSubCategoriesHeading({super.key, required this.subCategoryModel});
  final SubCategoryModel subCategoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        30.verticalSpace,
        Row(
          spacing: 7,
          children: [
            GestureDetector(
              onTap: () => context.pop(),
              child: Text(
                'nav_home'.tr(),
                style: AppTextStyle.rubikSemiBold18.copyWith(
                  color: AppColors.grayHint,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded, color: AppColors.grayHint),
            Text(
              // 'هواتف',
              translate(
                subCategoryModel.categoryNameAr ?? '',
                subCategoryModel.categoryName ?? '',
                context,
              ),
              style: AppTextStyle.rubikBold18.copyWith(
                color: AppColors.primary,
              ),
            ),
          ],
        ).symmetricPadding(horizontal: 22, vertical: 20),
        // HomeScreenSearchFiled(title: 'search_in_section'.tr()),
      ],
    );
  }
}
