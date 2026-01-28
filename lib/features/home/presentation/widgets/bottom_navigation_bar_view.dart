import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class BottomNavigationBarView extends StatelessWidget {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        index: 0,
        backgroundColor: Colors.transparent,
        height: 70,
        items: [
          CurvedNavigationBarItem(
            child: Assets.icons.bnbHomeIc.svg(
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
            label: 'الرئيسية',
            labelStyle: AppTextStyle.rubikMedium12.copyWith(
              color: AppColors.grey600,
            ),
          ),

          CurvedNavigationBarItem(
            child: Assets.icons.bnbAddIc.svg(),
            label: 'إضافة',
            labelStyle: AppTextStyle.rubikMedium12.copyWith(
              color: AppColors.grey600,
            ),
          ),
          CurvedNavigationBarItem(
            child: Assets.icons.settingsIc.svg(),
            label: 'إعدادات',
            labelStyle: AppTextStyle.rubikMedium12.copyWith(
              color: AppColors.grey600,
            ),
          ),
          CurvedNavigationBarItem(
            child: Assets.icons.bnbAccountIc.svg(),
            label: 'حسابي',
            labelStyle: AppTextStyle.rubikMedium12.copyWith(
              color: AppColors.grey600,
            ),
          ),
        ],
      );
  }
}