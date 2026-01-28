import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/home/presentation/widgets/bottom_navigation_bar_view.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_adds_section.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_search_field.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: Drawer(
        backgroundColor: AppColors.background,
        child: Column(
          spacing: 23,
          children: [
            23.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'الأقسام',
                  style: AppTextStyle.rubikBold18.copyWith(
                    color: AppColors.textDart,
                  ),
                ),
                IconButton(
                  onPressed: () => context.pop(),
                  icon: Icon(Icons.close),
                ),
              ],
            ).symmetricPadding(horizontal: 22),
            HomeScreenSearchFiled(),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                separatorBuilder: (context, index) => 5.verticalSpace,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    'عقارات تجارية للبيع',
                    style: AppTextStyle.rubikRegular16,
                  ),
                  tileColor: AppColors.white,
                  trailing: Icon(Icons.arrow_forward_ios),
                ),

                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.background,
      appBar: AppBar(centerTitle: true, title: Text('سوق عكاظ')),
      body: _HomeScreenContent(),
      bottomNavigationBar: BottomNavigationBarView(),
    );
  }
}

class _HomeScreenContent extends StatelessWidget {
  const _HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeScreenSearchFiled(),
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

class HomeScreenCategorySection extends StatelessWidget {
  const HomeScreenCategorySection({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        HomeScreenCategoryTitle(title: title, icon: icon),
        Wrap(
          spacing: 25,
          runSpacing: 15,
          children: [
            HomeScreenSubCategoryItem(),
            HomeScreenSubCategoryItem(),
            HomeScreenSubCategoryItem(),
            HomeScreenSubCategoryItem(),
          ],
        ),
      ],
    ).symmetricPadding(horizontal: 22);
  }
}

class HomeScreenCategoryTitle extends StatelessWidget {
  const HomeScreenCategoryTitle({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Container(
          width: 31,
          height: 31,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightRedBackground,
          ),
          child: icon,
        ),
        Text(
          title,
          style: AppTextStyle.rubikSemiBold18.copyWith(
            color: AppColors.textDart,
          ),
        ),
      ],
    );
  }
}

class HomeScreenSubCategoryItem extends StatelessWidget {
  const HomeScreenSubCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94,
      height: 94,
      decoration: BoxDecoration(
        color: AppColors.lightRedBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 4,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.phoneImage.image(height: 60),
          Text(
            'هاتف',
            style: AppTextStyle.rubikMedium14.copyWith(
              color: AppColors.textDart,
            ),
          ),
        ],
      ),
    );
  }
}
