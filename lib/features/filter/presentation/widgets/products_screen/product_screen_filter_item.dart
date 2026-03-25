import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import 'package:okaz/features/filter/presentation/controller/filter_controller.dart';
import 'package:okaz/features/filter/presentation/controller/sub_category_controller.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductScreenFilterItem extends ConsumerWidget {
  const ProductScreenFilterItem(
      {super.key, required this.subcategoryAttributeModel});
  final SubcategoryAttributeModel subcategoryAttributeModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final items =
    //     ref.watch(mainSubcategory).mainAttributes?.first.values?.split(',') ??
    //         [];
    // final category = ref.watch(selectedSubCategoryProvider);

    final filters = ref.watch(filterControllerProvider
        .select((val) => val.value!.selectedAttributes));

    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        // value: index == 1 ? category : '1',
        value: subcategoryAttributeModel.values.first,
        items: subcategoryAttributeModel.values
            .map(
              (item) => DropdownMenuItem(
                value: item,
                child: Container(
                  alignment: AlignmentGeometry.directional(-1, 0),
                  width: double.infinity,
                  height: double.infinity,
                  color: filters.values.contains(item)
                      ? AppColors.lightRedBackground
                      : AppColors.white,
                  // color: item == category
                  //     ? AppColors.lightRedBackground
                  //     : AppColors.white,
                  child: Text(item),
                ),
                onTap: () {
                  if (subcategoryAttributeModel.isMainFilter == 1) {
                    ref.read(selectedSubCategoryProvider.notifier).state = item;
                  }
                  ref.read(filterControllerProvider.notifier)
                    ..selectFilter(subcategoryAttributeModel, item)
                    ..getPosts(page: 1);
                },
              ),
            )
            .toList()
        //  index == 1
        //     ? items
        //         .map(
        //           (item) => DropdownMenuItem(
        //             value: item,
        //             child: Container(
        //               alignment: Alignment.centerRight,
        //               width: double.infinity,
        //               height: double.infinity,
        //               color: item == category
        //                   ? AppColors.lightRedBackground
        //                   : AppColors.white,
        //               child: Text(item),
        //             ),
        //             onTap: () => ref
        //                 .read(selectedSubCategoryProvider.notifier)
        //                 .state = item,
        //           ),
        //         )
        //         .toList()
        //     : [
        //         DropdownMenuItem(value: '1', child: Text('data1')),
        //         DropdownMenuItem(value: '2', child: Text('data2')),
        //       ],
        ,
        onChanged: (val) {},
        isExpanded: true,
        isDense: true,
        customButton: Container(
          alignment: Alignment.center,
          height: 34,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: filters[subcategoryAttributeModel.title] != null
                ? AppColors.lightRedBackground
                : AppColors.white,
            // color: index == 1 ? AppColors.white : null,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              // color: index == 1 ? AppColors.primary : AppColors.borderGrey,
              color: filters[subcategoryAttributeModel.title] != null
                  ? AppColors.primary
                  : AppColors.borderGrey,
            ),
          ),
          child: Row(
            spacing: 5,
            children: [
              Text(
                (subcategoryAttributeModel.isMainFilter == 1 &&
                        filters[subcategoryAttributeModel.title] == null)
                    ? 'all'.tr()
                    : filters[subcategoryAttributeModel.title] ??
                        subcategoryAttributeModel.title,
                style: AppTextStyle.rubikRegular14.copyWith(
                  // color: index == 1 ? AppColors.primary : AppColors.grayHint,
                  color: filters[subcategoryAttributeModel.title] != null
                      ? AppColors.primary
                      : AppColors.grayHint,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                // color: index == 1 ? AppColors.primary : AppColors.grayHint,
                color: filters[subcategoryAttributeModel.title] != null
                    ? AppColors.primary
                    : AppColors.grayHint,
              ),
            ],
          ),
        ),
        iconStyleData: IconStyleData(
          icon: Icon(Icons.arrow_drop_down_rounded, color: AppColors.primary),
          iconSize: 28,
        ),
        buttonStyleData: const ButtonStyleData(padding: EdgeInsets.zero),
        dropdownStyleData: DropdownStyleData(
          width: 200,
          offset: const Offset((66 - 100) / 2, 0),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(height: 48),
      ),
    );
  }
}
