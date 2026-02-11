import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

import '../../../../home/presentation/widgets/home_screen/home_screen_search_field.dart';
import '../../controller/add_product_controller.dart';
import '../app_scaled_radio.dart';

class StepCategoryView extends ConsumerWidget {
  const StepCategoryView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(addProductControllerProvider.notifier);
    final state = ref.watch(addProductControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),

            children: [
              /// 🔍 Search
              HomeScreenSearchFiled(title: '',),

              12.verticalSpace,

              /// Title
              Text(
                "select_main_category".tr(),
                style: AppTextStyle.rubikBold18,
                // textAlign: TextAlign.center,
              ),
              6.verticalSpace,
              Text(
                "select_category_desc".tr(),
                style: AppTextStyle.interRegular14,
                // textAlign: TextAlign.center,
              ),

              24.verticalSpace,

              /// Sections
              _CategorySection(
                title: 'الإلكترونيات',
                icon: Icons.devices,
                items: const [
                  'هاتف',
                  'كاميرا وفيديو',
                  'لابتوبات',
                  'أجهزة منزلية',
                  'ألعاب إلكترونية',
                ],
                selected: state.value?.category,
                onSelect: notifier.setCategory,
              ),

              _CategorySection(
                title: 'عقارات',
                icon: Icons.apartment,
                items: const ['بيوت', 'أراضي', 'مباني', 'فلل', 'محلات تجارية'],
                selected: state.value?.category,
                onSelect: notifier.setCategory,
              ),

              _CategorySection(
                title: 'المركبات',
                icon: Icons.directions_car,
                items: const [
                  'سيارات',
                  'شاحنات',
                  'دراجات',
                  'قطع غيار',
                  'أدوات بحرية',
                ],
                selected: state.value?.category,
                onSelect: notifier.setCategory,
              ),
            ],
          ),
        ),

        /// Bottom Button
        // Padding(
        //   padding: const EdgeInsets.all(16),
        //   child: SizedBox(
        //     width: double.infinity,
        //     height: 48,
        //     child: ElevatedButton(
        //       onPressed: state.value?.category == null ? null : () {},
        //       style: ElevatedButton.styleFrom(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(24),
        //         ),
        //       ),
        //       child: const Text('الخطوة التالية'),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

class _CategorySection extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<String> items;
  final String? selected;
  final Function(String) onSelect;

  const _CategorySection({
    required this.title,
    required this.icon,
    required this.items,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Divider(height: 1, color: AppColors.grayBorder).onlyPadding(bottom: 10),

        Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.primaryOpacity,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Icon(icon, size: 20, color: AppColors.primary),
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),

        // 12.verticalSpace,
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4.5,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () => onSelect(item),
              child: Row(
                children: [
                  AppScaledRadio<String>(
                    value: item,
                    groupValue: selected,
                    onChanged: onSelect,
                  ),

                  Expanded(child: Text(item)),
                ],
              ),
            );
          },
        ),

        // const SizedBox(height: 20),
      ],
    );
  }
}
