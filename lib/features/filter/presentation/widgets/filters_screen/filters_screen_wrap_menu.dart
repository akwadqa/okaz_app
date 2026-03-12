import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import 'package:okaz/features/filter/presentation/controller/filter_controller.dart';
import 'package:okaz/features/filter/presentation/controller/sub_category_controller.dart';
import 'package:okaz/features/filter/presentation/widgets/filters_screen/filters_screen_wrap_menu_item.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class FiltersScreenWrapMenu extends ConsumerWidget {
  final SubcategoryAttributeModel subcategoryAttributeModel;

  const FiltersScreenWrapMenu({
    super.key,
    required this.subcategoryAttributeModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filters = ref.watch(filterControllerProvider
        .select((val) => val.value!.selectedAttributes));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          subcategoryAttributeModel.title,
          style: AppTextStyle.rubikMedium16.copyWith(color: AppColors.textDart),
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: subcategoryAttributeModel.values.map((item) {
            final isSelected = filters[subcategoryAttributeModel.title] == item;
            return FiltersScreenWrapMenuItem(
              title: item,
              isSelected: isSelected,
              onTap: () {
                if (subcategoryAttributeModel.isMainFilter == 1) {
                  ref.read(selectedSubCategoryProvider.notifier).state = item;
                }
                ref
                    .read(filterControllerProvider.notifier)
                    .selectFilter(subcategoryAttributeModel, item);
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
