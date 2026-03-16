import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/filter/presentation/controller/filter_controller.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class FiltersScreenFooter extends ConsumerWidget {
  const FiltersScreenFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        context.pop();
        ref.read(filterControllerProvider.notifier)
          ..applyTempAttributes()
          ..getPosts();
      },
      child: Container(
        width: double.infinity,
        height: 88,
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 29, vertical: 11),
              decoration: BoxDecoration(
                color: AppColors.primary,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: .2),
                    offset: Offset(0, 4),
                    blurRadius: 6,
                    spreadRadius: -4,
                  ),
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: .2),
                    offset: Offset(0, 10),
                    blurRadius: 15,
                    spreadRadius: -3,
                  ),
                ],
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                'applying_filters'.tr(),
                style: AppTextStyle.rubikBold20.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.pop();
                ref
                    .read(filterControllerProvider.notifier)
                    .clearTempAttributes();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 29, vertical: 11),
                decoration: BoxDecoration(
                  color: AppColors.secondPrimary,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.secondPrimary.withValues(alpha: .2),
                      offset: Offset(0, 4),
                      blurRadius: 6,
                      spreadRadius: -4,
                    ),
                    BoxShadow(
                      color: AppColors.secondPrimary.withValues(alpha: .2),
                      offset: Offset(0, 10),
                      blurRadius: 15,
                      spreadRadius: -3,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Text(
                  'cancel'.tr(),
                  style: AppTextStyle.rubikBold20.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
