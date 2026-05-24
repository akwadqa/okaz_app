import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../home/domain/model/home_model/home_model.dart';
import '../../../../home/presentation/controller/home_controller.dart';
import '../../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../../src/core/utils/functions/helper_methods.dart';
import '../../../../../src/infrastructure/api/endpoint/services_urls.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

import '../../../../home/presentation/widgets/home_screen/home_screen_search_field.dart';
import '../../controller/add_product_controller.dart';
import '../app_scaled_radio.dart';

class StepCategoryView extends ConsumerStatefulWidget {
  const StepCategoryView({super.key});

  @override
  ConsumerState<StepCategoryView> createState() => _StepCategoryViewState();
}

class _StepCategoryViewState extends ConsumerState<StepCategoryView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeControllerProvider.notifier).filterCategories("");
    });
  }

  @override
  Widget build(BuildContext context) {
    final addNotifier = ref.read(addProductControllerProvider.notifier);
    final addState = ref.watch(addProductControllerProvider);

    final homeState = ref.watch(homeControllerProvider);

    final categories = homeState.value!.filterdCategories;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            children: [
              /// 🔍 Search
              HomeScreenSearchFiled(
                title: 'search'.tr(),
                withPadding: false,
                onChanged: (val) => ref
                    .read(homeControllerProvider.notifier)
                    .filterCategories(val),
              ),

              12.verticalSpace,

              /// Title
              Text(
                "select_main_category".tr(),
                style: AppTextStyle.rubikBold18,
                // textAlign: TextAlign.center,
              ),
              12.verticalSpace,
              Text(
                "select_category_desc".tr(),
                style: AppTextStyle.interRegular14,
                // textAlign: TextAlign.center,
              ),

              24.verticalSpace,
              ...categories.map(
                (category) => _CategorySection(
                  category: category,
                  selectedCategory: addState.value?.category,
                  selectedSubCategory: addState.value?.subCategory,
                  onCategorySelect: addNotifier.setCategory,
                  onSubCategorySelect: addNotifier.setSubCategory,
                ),
              ),

              /// Sections
              // _CategorySection(
              //   title: 'الإلكترونيات',
              //   icon: Icons.devices,
              //   items: const [
              //     'هاتف',
              //     'كاميرا وفيديو',
              //     'لابتوبات',
              //     'أجهزة منزلية',
              //     'ألعاب إلكترونية',
              //   ],
              //   selected: state.value?.category,
              //   onSelect: notifier.setCategory,
              // ),

              // _CategorySection(
              //   title: 'عقارات',
              //   icon: Icons.apartment,
              //   items: const ['بيوت', 'أراضي', 'مباني', 'فلل', 'محلات تجارية'],
              //   selected: state.value?.category,
              //   onSelect: notifier.setCategory,
              // ),

              // _CategorySection(
              //   title: 'المركبات',
              //   icon: Icons.directions_car,
              //   items: const [
              //     'سيارات',
              //     'شاحنات',
              //     'دراجات',
              //     'قطع غيار',
              //     'أدوات بحرية',
              //   ],
              //   selected: state.value?.category,
              //   onSelect: notifier.setCategory,
              // ),
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
  final CategoryModel category;
  final String? selectedCategory;
  final SubCategoryModel? selectedSubCategory;

  final Function(String) onCategorySelect;
  final Function(SubCategoryModel) onSubCategorySelect;

  const _CategorySection({
    required this.category,
    required this.selectedCategory,
    required this.selectedSubCategory,
    required this.onCategorySelect,
    required this.onSubCategorySelect,
  });

  @override
  Widget build(BuildContext context) {
    final subcategories = category.subcategories ?? [];

    final categoryName = category.categoryName ?? category.name ?? "";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(height: 1, color: AppColors.lightGray),

        10.verticalSpace,

        /// Category title
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.secondPrimary,
                borderRadius: BorderRadius.circular(25),
              ),
              child: CachedNetworkImage(
                  width: 20,
                  imageUrl: ServicesUrls.imageUrl + (category.icon ?? '')),
              //   child: const Icon(Icons.category,
              //       size: 20, color: AppColors.primary),
            ),
            const SizedBox(width: 8),
            Text(
              // categoryName,
              translate(category.categoryNameAr ?? '',
                  category.categoryName ?? '', context),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),

        12.verticalSpace,

        /// Subcategories
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4.5,
          ),
          itemCount: subcategories.length,
          itemBuilder: (context, index) {
            final sub = subcategories[index];

            final name = sub?.categoryName ?? sub?.name ?? "";

            return GestureDetector(
              onTap: () {
                onCategorySelect(category.name ?? "");
                onSubCategorySelect(sub);
              },
              child: Row(
                children: [
                  AppScaledRadio<SubCategoryModel>(
                    value: sub!,
                    groupValue: selectedSubCategory,
                    onChanged: (v) {
                      onCategorySelect(category.name ?? "");
                      onSubCategorySelect(v);
                    },
                  ),
                  Expanded(
                      child: Text(translate(sub.categoryNameAr ?? '',
                          sub.categoryName ?? '', context))),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

// class _CategorySection extends StatelessWidget {
//   final String title;
//   final IconData icon;
//   final List<String> items;
//   final String? selected;
//   final Function(String) onSelect;

//   const _CategorySection({
//     required this.title,
//     required this.icon,
//     required this.items,
//     required this.selected,
//     required this.onSelect,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       spacing: 12,
//       children: [
//         Divider(height: 1, color: AppColors.grayBorder).onlyPadding(bottom: 10),

//         Row(
//           children: [
//             Container(
//               padding: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 color: AppColors.primaryOpacity,
//                 borderRadius: BorderRadius.all(Radius.circular(25)),
//               ),
//               child: Icon(icon, size: 20, color: AppColors.primary),
//             ),
//             const SizedBox(width: 8),
//             Text(
//               title,
//               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//           ],
//         ),

//         // 12.verticalSpace,
//         GridView.builder(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 4.5,
//           ),
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             final item = items[index];
//             return GestureDetector(
//               onTap: () => onSelect(item),
//               child: Row(
//                 children: [
//                   AppScaledRadio<String>(
//                     value: item,
//                     groupValue: selected,
//                     onChanged: onSelect,
//                   ),

//                   Expanded(child: Text(item)),
//                 ],
//               ),
//             );
//           },
//         ),

//         // const SizedBox(height: 20),
//       ],
//     );
//   }
// }
