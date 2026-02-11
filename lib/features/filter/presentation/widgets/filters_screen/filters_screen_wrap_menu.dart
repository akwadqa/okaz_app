import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/filter/presentation/controller/filters_form_controller.dart';
import 'package:okaz/features/filter/presentation/widgets/filters_screen/filters_screen_wrap_menu_item.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class FiltersScreenWrapMenu extends ConsumerWidget {
  final String title;

  const FiltersScreenWrapMenu({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(filtersControllerProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          title,
          style: AppTextStyle.rubikMedium16.copyWith(color: AppColors.textDart),
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: FiltersController.simTypes.map((item) {
            final isSelected = state.selectedSimType == item;
            return FiltersScreenWrapMenuItem(
              title: item,
              isSelected: isSelected,
              onTap: () {
                ref.read(filtersControllerProvider.notifier).selectSimType(item);
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
