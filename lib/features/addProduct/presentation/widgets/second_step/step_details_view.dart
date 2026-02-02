import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okaz/features/addProduct/presentation/widgets/second_step/select_location_page/location_widget.dart';

import '../../controller/add_product_controller.dart';
import '../add_select_field.dart';
import '../add_select_bottom_sheet.dart';

class StepDetailsView extends ConsumerWidget {
  const StepDetailsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addProductControllerProvider).value!;
    final controller =
        ref.read(addProductControllerProvider.notifier);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        /// نوع الإعلان *
        AddSelectField(
          label: 'نوع الإعلان',
          isRequired: true,
          hint: 'اختر نوع الإعلان',
          value: _adTypeLabel(state.adType),
          onTap: () {
            showAddSelectSheet<String>(
              context: context,
              title: 'اختر نوع الإعلان',
              items: const ['sell', 'wanted'],
              selected: state.adType,
              labelBuilder: _adTypeLabel,
              onConfirm: controller.setAdType,
            );
          },
        ),

        /// الفئات الفرعية *
        AddSelectField(
          label: 'الفئات الفرعية',
          isRequired: true,
          hint: 'اختر الفئة الفرعية',
          value: state.subCategory,
          onTap: () {
            showAddSelectSheet<String>(
              context: context,
              title: 'اختر الفئة الفرعية',
              items: const [
                'ايفون',
                'سامسونج',
                'ريلمي',
                'شاومي',
                'هواوي',
                'ايباد',
                'تابلت أندرويد',
                'هواتف أندرويد أخرى',
                'سماعات رأس',
                'السماعات الذكية والأساور الذكية',
                'أخرى',
              ],
              selected: state.subCategory,
              labelBuilder: (v) => v,
              onConfirm: controller.setSubCategory,
            );
          },
        ),

        /// المدينة *
        AddSelectField(
          label: 'المدينة',
          isRequired: true,
          hint: 'اختر المدينة',
          value: state.city,
          onTap: () {
            showAddSelectSheet<String>(
              context: context,
              title: 'اختر المدينة',
              items: const [
                'الدوحة',
                'الريان',
                'الوكرة',
                'الخور',
              ],
              selected: state.city,
              labelBuilder: (v) => v,
              onConfirm: controller.setCity,
            );
          },
        ),

        /// الحالة *
        // AddSelectField(
        //   label: 'الحالة',
        //   // required: true,
        //   hint: 'اختر الحالة',
        //   value: state.adType,
        //   onTap: () {
        //     showAddSelectSheet<String>(
        //       context: context,
        //       title: 'اختر الحالة',
        //       items: const [
        //         'جديد',
        //         'مستعمل',
        //       ],
        //       selected: state.adType,
        //       labelBuilder: (v) => v,
        //       onConfirm: controller.setAdType,
        //     );
        //   }, isRequired: true,
        // ),

        const SizedBox(height: 12),

        /// الموقع (NO *)
        const Text(
          'الموقع',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),

// LocationWidget(latlng: LatLng(25.2816415,  51.5242998)),
        Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade200,
          ),
          child: const Center(
            child: Text('Map View'),
          ),
        ),
      ],
    );
  }

  static String _adTypeLabel(String? value) {
    switch (value) {
      case 'sell':
        return 'للبيع';
      case 'wanted':
        return 'مطلوب';
      default:
        return '';
    }
  }
}
