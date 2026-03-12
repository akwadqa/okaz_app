import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import 'package:okaz/features/filter/presentation/controller/filter_controller.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class FiltersScreenSwitchItem extends ConsumerWidget {
  const FiltersScreenSwitchItem(this.subcategoryAttributeModel, {super.key});
  final SubcategoryAttributeModel subcategoryAttributeModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOn = ref.watch(filterControllerProvider.select((val) =>
            val.value!.selectedAttributes))[subcategoryAttributeModel.title] ??
        false;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.borderGrey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Text(
                subcategoryAttributeModel.title,
                style: AppTextStyle.rubikMedium16.copyWith(
                  color: AppColors.textDart,
                ),
              ),
              // Text(
              //   'عرض الأجهزة المضمونة فقط',
              //   style: AppTextStyle.rubikRegular14.copyWith(
              //     color: AppColors.grayHint,
              //   ),
              // ),
            ],
          ),
          Switch(
            value: isOn,
            onChanged: (val) {
              ref
                  .read(filterControllerProvider.notifier)
                  .selectFilter(subcategoryAttributeModel, val);
            },
            activeTrackColor: AppColors.primary,
            activeThumbColor: AppColors.white,
            inactiveTrackColor: AppColors.switchBackground,
          ),
        ],
      ),
    );
  }
}
