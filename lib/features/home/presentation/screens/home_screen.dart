import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/home/presentation/widgets/bottom_navigation_bar_view.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_adds_section.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_category_section.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_drawer.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_search_field.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: HomeScreenDrawer(),
      backgroundColor: AppColors.background,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Okaz Market'.tr()),
        backgroundColor: AppColors.background,
      ),
      body: _HomeScreenContent(),
      // bottomNavigationBar: BottomNavigationBarView(),
    );
  }
}

class _HomeScreenContent extends StatelessWidget {
  const _HomeScreenContent();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeScreenSearchFiled(
          title: 'serch_for_any_thing'.tr(),
          onTap: () => context.push(AppRoutes.searchScreen),
        ),
        20.verticalSpace,
        HomeScreenAddsSection(),
        36.verticalSpace,
        HomeScreenCategorySection(
          title: 'الإلكترونيات',
          icon: Assets.icons.electronicIc.svg(),
        ),
        20.verticalSpace,
        HomeScreenCategorySection(
          title: 'عقارات',
          icon: Assets.icons.realestateIc.svg(),
        ),
        20.verticalSpace,
        HomeScreenCategorySection(
          title: 'احتياجات الأسرة',
          icon: Assets.icons.familyStuffsIc.svg(),
        ),
        20.verticalSpace,
        HomeScreenCategorySection(
          title: 'المركبات',
          icon: Assets.icons.carIc.svg(),
        ),
      ],
    );
  }
}
