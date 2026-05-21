import 'package:flutter/material.dart';
import '../../../domain/model/home_model/home_model.dart';
import 'home_screen_category_title.dart';
import 'home_screen_sub_category_item.dart';
import '../../../../../src/core/utils/extenssions/widget_extensions.dart';

class HomeScreenCategorySection extends StatelessWidget {
  const HomeScreenCategorySection({
    super.key,
    required this.title,
    required this.icon,
    required this.category,
  });
  final String title;
  final String icon;
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
