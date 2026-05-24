import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import '../../controller/filter_controller.dart';
import '../../../../home/presentation/widgets/home_screen/home_screen_search_field.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

class FiltersScreenSearchFiled extends ConsumerWidget {
  const FiltersScreenSearchFiled(
      {super.key, required this.subcategoryAttributeModel});

  final SubcategoryAttributeModel subcategoryAttributeModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filters = ref.watch(
        filterControllerProvider.select((val) => val.value!.tempAttributes));
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          // 'search_by_specific_word'.tr(),
          subcategoryAttributeModel.title,
          style: AppTextStyle.rubikMedium16.copyWith(color: AppColors.textDart),
        ),
        HomeScreenSearchFiled(
          // title: 'search_by_model_color_or_condition'.tr(),
          title: subcategoryAttributeModel.title,
          withPadding: false,
          value: filters[subcategoryAttributeModel.title],

          onChanged: (val) {
            ref
                .read(filterControllerProvider.notifier)
                .selectFilterIntoTemp(subcategoryAttributeModel, val);
          },
        ),
      ],
    );
  }
}
