import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/home/presentation/controller/home_controller.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class BottomNavigationBarView extends ConsumerWidget {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavIndexProvider);
    return CurvedNavigationBar(

      index: currentIndex,
      backgroundColor: Colors.transparent,
      onTap: (index) {
        if (index == 1) {
          context.go(AppRoutes.addNewProduct);
          return;
        }
        ref.read(bottomNavIndexProvider.notifier).state = index;
      }
      // print(currentIndex);
      ,
      height: 70,
      items: [
        CurvedNavigationBarItem(
          child: Assets.icons.bnbHomeIc.svg(
            colorFilter: ColorFilter.mode(
              currentIndex == 0 ? AppColors.primary : AppColors.grey600,
              BlendMode.srcIn,
            ),
          ),
          label: 'nav_home'.tr(),
          labelStyle: AppTextStyle.rubikMedium12.copyWith(
            color: currentIndex == 0 ? AppColors.primary : AppColors.grey600,
          ),
        ),
        CurvedNavigationBarItem(
          child: Assets.icons.bnbAddIc.svg(
            colorFilter: ColorFilter.mode(
              currentIndex == 1 ? AppColors.primary : AppColors.grey600,
              BlendMode.srcIn,
            ),
          ),
          label: 'nav_add'.tr(),
          labelStyle: AppTextStyle.rubikMedium12.copyWith(
            color: currentIndex == 1 ? AppColors.primary : AppColors.grey600,
          ),
        ),
        CurvedNavigationBarItem(
          child: Assets.icons.settingsIc.svg(
            colorFilter: ColorFilter.mode(
              currentIndex == 2 ? AppColors.primary : AppColors.grey600,
              BlendMode.srcIn,
            ),
          ),
          label: 'nav_settings'.tr(),
          labelStyle: AppTextStyle.rubikMedium12.copyWith(
            color: currentIndex == 2 ? AppColors.primary : AppColors.grey600,
          ),
        ),
        CurvedNavigationBarItem(
          child: Assets.icons.bnbAccountIc.svg(
            colorFilter: ColorFilter.mode(
              currentIndex == 3 ? AppColors.primary : AppColors.grey600,
              BlendMode.srcIn,
            ),
          ),
          label: 'nav_account'.tr(),
          labelStyle: AppTextStyle.rubikMedium12.copyWith(
            color: currentIndex == 3 ? AppColors.primary : AppColors.grey600,
          ),
        ),
      ],
    );
  }
}
