import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_category_title.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_sub_category_item.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';

class HomeScreenCategorySection extends StatelessWidget {
  const HomeScreenCategorySection({
    super.key,
    required this.title,
    required this.icon,
    required this.category,
  });
  final String title;
  final SvgPicture icon;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeScreenCategoryTitle(title: title, icon: icon),
        Wrap(
          spacing: 25,
          runSpacing: 15,
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: category.subcategories!
              .map<Widget>(
                (cat) => HomeScreenSubCategoryItem(subCategoryModel: cat!),
              )
              .toList(),
        ),
        SizedBox()
      ],
    ).symmetricPadding(horizontal: 22);
  }
}
