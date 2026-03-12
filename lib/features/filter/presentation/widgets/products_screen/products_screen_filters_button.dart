import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/filter/presentation/controller/filter_controller.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductsScreenFiltersButton extends ConsumerWidget {
  const ProductsScreenFiltersButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(filterControllerProvider
        .select((val) => val.value!.selectedAttributes.length));
    return GestureDetector(
      onTap: () => context.push(AppRoutes.filtersScreen),
      child: Container(
        // width: 83,
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.filterIc.svg(),
            Text(
              'filters'.tr(),
              style: AppTextStyle.rubikRegular14.copyWith(
                color: AppColors.primary,
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: Text(
                count.toString(),
                style: AppTextStyle.rubikRegular8.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
