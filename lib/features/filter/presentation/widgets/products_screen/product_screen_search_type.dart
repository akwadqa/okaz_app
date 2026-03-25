import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/filter/presentation/controller/filter_controller.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductsScreenSearchType extends ConsumerWidget {
  const ProductsScreenSearchType({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentType = ref.watch(searchTypeProvider);
    return Row(
      spacing: 13,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              ref.read(searchTypeProvider.notifier).state = 0;
              ref.read(filterControllerProvider.notifier).getPosts(page: 1);
            },
            child: Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: .05),
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
                color: currentType == 0 ? AppColors.primary : AppColors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'for_sale'.tr(),
                style: AppTextStyle.rubikMedium14.copyWith(
                  color:
                      currentType == 0 ? AppColors.white : AppColors.textDart,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              ref.read(searchTypeProvider.notifier).state = 1;
              ref.read(filterControllerProvider.notifier).getPosts(page: 1);
            },
            child: Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                color: currentType == 1 ? AppColors.primary : AppColors.grey,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: .05),
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'required'.tr(),
                style: AppTextStyle.rubikMedium14.copyWith(
                  color:
                      currentType == 1 ? AppColors.white : AppColors.textDart,
                ),
              ),
            ),
          ),
        ),
      ],
    ).symmetricPadding(horizontal: 22);
  }
}
