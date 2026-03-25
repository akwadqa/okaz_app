import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/filter/presentation/controller/filter_controller.dart';
import 'package:okaz/features/filter/presentation/controller/sub_category_controller.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_search_field.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/core/utils/functions/helper_methods.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductsScreenHeading extends ConsumerWidget {
  const ProductsScreenHeading({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTitle = ref.watch(selectedSubCategoryProvider);

    final subCategory = ref.watch(mainSubcategory);
    final title = selectedTitle.isEmpty ? 'iphone'.tr() : selectedTitle;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        30.verticalSpace,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 7,
            children: [
              GestureDetector(
                onTap: () {
                  context.pop();
                  context.pop();
                },
                child: Text(
                  'nav_home'.tr(),
                  style: AppTextStyle.rubikSemiBold18.copyWith(
                    color: AppColors.grayHint,
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios_rounded, color: AppColors.grayHint),
              GestureDetector(
                onTap: () => context.pop(),
                child: Text(
                  translate(
                    subCategory.categoryNameAr ?? '',
                    subCategory.categoryName ?? '',
                    context,
                  ),
                  style: AppTextStyle.rubikSemiBold18.copyWith(
                    color: AppColors.grayHint,
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios_rounded, color: AppColors.grayHint),
              Text(
                title,
                style: AppTextStyle.rubikBold18.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ).symmetricPadding(horizontal: 22, vertical: 20),
        ),
        HomeScreenSearchFiled(
          title: 'search_in_section'.tr(),
          onChanged: (value) {
            ref.read(filterControllerProvider.notifier).search = value;
            ref.read(filterControllerProvider.notifier).getPosts();
          },
        ),
      ],
    );
  }
}
