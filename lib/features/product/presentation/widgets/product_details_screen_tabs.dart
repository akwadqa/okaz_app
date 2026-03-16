import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class ProductDetailsScreenTabs extends StatelessWidget {
  final TabController controller;
  const ProductDetailsScreenTabs({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(height: 1, color: AppColors.dividerColor),
        TabBar(
          controller: controller,
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.grayHint,
          indicatorColor: AppColors.primary,

          indicatorWeight: 4,
          dividerColor: Colors.transparent,
          tabs: [
            Tab(text: 'product_details_ad_info_tab'.tr()),
            Tab(text: 'product_details_tech_specs_tab'.tr()),
          ],
          // labelStyle: AppTextStyle.rubikSemiBold16,
          // unselectedLabelStyle: AppTextStyle.rubikSemiBold16,
        ),
        const Divider(height: 1, color: AppColors.dividerColor),
      ],
    );
  }
}
