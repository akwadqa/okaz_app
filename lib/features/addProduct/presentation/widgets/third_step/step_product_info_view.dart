import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

import '../../../domain/model/category_model.dart';
import '../../controller/add_product_controller.dart';
import '../add_select_field.dart';
import '../add_select_bottom_sheet.dart';

class StepProductInfoView extends ConsumerWidget {
  const StepProductInfoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(addProductControllerProvider.notifier);
    final state = ref.watch(addProductControllerProvider).value!;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: mockProductSpecs.map((spec) {
        final value = state.specs[spec.key];

        switch (spec.type) {
          case ProductSpecType.select:
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: AddSelectField(
                label: spec.title,
                hint: 'اختر ${spec.title}',
                isRequired: spec.required,
                value: value,
                onTap: () {
                  showAddSelectSheet<String>(
                    context: context,
                    title: 'اختر ${spec.title}',
                    items: spec.options!,
                    selected: value,
                    labelBuilder: (v) => v,
                    onConfirm: (v) => controller.updateSpec(spec.key, v),
                  );
                },
              ),
            );

          case ProductSpecType.toggle:
            return Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppColors.grayBorder),
              ),
              child: SwitchListTile(
                contentPadding: EdgeInsets.zero,

                thumbColor: WidgetStatePropertyAll(AppColors.white),

                inactiveTrackColor: AppColors.stoneGray,
                activeTrackColor: AppColors.primary,

                value: (value as bool?) ?? false,
                title: Text(spec.title),
                subtitle: Text(spec.key),

                onChanged: (v) => controller.updateSpec(spec.key, v),
              ),
            );
        }
      }).toList(),
    );
  }
}
