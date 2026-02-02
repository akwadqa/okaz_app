import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_category_title.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_sub_category_item.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';

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
