import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/filter/presentation/widgets/filters_screen/filters_screen_radio_item.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class FiltersScreenRadioMenu extends ConsumerWidget {
  const FiltersScreenRadioMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(filtersControllerProvider);
    // final selected = state.selectedNetwork ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          'network_type'.tr(),
          style: AppTextStyle.rubikMedium16.copyWith(color: AppColors.textDart),
        ),
        Wrap(
          spacing: 29,
          // children: FiltersController.networkTypes.map((item) {
          //   return FiltersScreenRadioItem(
          //     title: item,
          //     groupValue: selected,
          //     onChanged: (val) {
          //       if (val == null) return;
          //       ref.read(filtersControllerProvider.notifier).selectNetwork(val);
          //     },
          //   );
          // }).toList(),
        ),
      ],
    );
  }
}
