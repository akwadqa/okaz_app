import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/filter/presentation/controller/sub_category_controller.dart';
import 'package:okaz/features/filter/presentation/widgets/searc_sub_categories_screen/sub_category_item.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class SubCategoriesSection extends ConsumerWidget {
  const SubCategoriesSection(this.subCategoryModel, {super.key});
  final SubCategoryModel subCategoryModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items =
        ref.watch(mainSubcategory).mainAttributes?.first.values?.split(',') ??
            [];
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          // 'الأقسام الفرعية',
          subCategoryModel.mainAttributes?.first.title ?? 'title',
          style: AppTextStyle.rubikSemiBold18.copyWith(
            color: AppColors.textDart,
          ),
        ),
        Wrap(
          // spacing: 10,
          // runSpacing: 10,
          spacing: 25,
          runSpacing: 15,
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          children:
              items.map((title) => SubCategoryItem(title: title)).toList(),
        ),
      ],
    ).symmetricPadding(horizontal: 22);
  }
}
