import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okaz/features/addProduct/presentation/controller/map_controller/map_controller.dart';
import 'package:okaz/features/addProduct/presentation/widgets/add_text_field.dart';
import 'package:okaz/features/addProduct/presentation/widgets/second_step/select_location_page/location_widget.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';

import '../../controller/add_product_controller.dart';
import '../add_select_field.dart';
import '../add_select_bottom_sheet.dart';

class StepDetailsView extends ConsumerWidget {
  const StepDetailsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addProductControllerProvider).value!;
    final controller = ref.read(addProductControllerProvider.notifier);
    final mapController = ref.watch(mapControllerProvider);
    final attributes = state.attributes;
    final mainFilters = attributes.firstWhere((e) => e.isMainFilter == 1);
    List<String> cities = [
      'riyadh'.tr(),
      'jeddah'.tr(),
      'mecca'.tr(),
      'medina'.tr(),
      'dammam'.tr(),
      'khobar'.tr(),
      'abha'.tr(),
      'tabuk'.tr(),
      'hail'.tr(),
      'jizan'.tr(),
      'najran'.tr(),
      'buraidah'.tr(),
      'taif'.tr(),
      'doha'.tr(),
      'al_rayyan'.tr(),
      'al_wakrah'.tr(),
      'al_khor'.tr(),
      'lusail'.tr(),
      'madinat_ash_shamal'.tr(),
      'umm_salal'.tr(),
      'al_daayen'.tr(),
    ];

    final otherFilters = attributes.where((e) => e.isMainFilter == 0).toList();
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        /// نوع الإعلان *
        AddSelectField(
          label: 'ad_type',
          isRequired: true,
          hint: 'select_ad_type',
          value: _adTypeLabel(state.adType),
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();

            showAddSelectSheet<String>(
              context: context,
              title: 'select_ad_type',
              items: const ['Sale', 'wanted'],
              selected: state.adType,
              labelBuilder: _adTypeLabel,
              onConfirm: controller.setAdType,
            );
          },
        ),
        AddSelectField(
          label: 'condition',
          isRequired: true,
          hint: 'condition_of_product',
          value: _conditionLabel(state.condition),
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();

            showAddSelectSheet<String>(
              context: context,
              title: 'select_condition',
              items: const ['New', 'Used'],
              selected: state.condition,
              labelBuilder: _conditionLabel,
              onConfirm: controller.setConditionOfProduct,
            );
          },
        ),

        /// الفئات الفرعية *
        AddSelectField(
          label: 'sub_categories',
          isRequired: true,
          hint: 'select_sub_category',
          value: state.mainSubCategoryType,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
            showAddSelectSheet<String>(
              context: context,
              title: mainFilters.title,
              items: mainFilters.values,
              selected: state.mainSubCategoryType,
              labelBuilder: (v) => v,
              onConfirm: (v) {
                controller.updateSpec(mainFilters.title, v);
                controller.setSubCategoryType(v);
              },
            );
          },
        ),
        
        AddSelectField(
          label: 'city',
          isRequired: true,
          hint: 'select_city',
          value: state.city,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
            showAddSelectSheet<String>(
              context: context,
              title: 'select_city',
              items: cities,
              selected: state.city,
              labelBuilder: (v) => v,
              onConfirm: (v) {
                controller.updateSpec(mainFilters.title, v);
                controller.setCity(v);
              },
            );
          },
        ),

        // AddTextField(
        //   label: 'city',
        //   isRequired: true,
        //   hint: 'select_city',
        //   value: state.city,
        //   onChanged: controller.setCity,
        //   // onTap: () {
        //   //   // showAddSelectSheet<String>(
        //   //   //   context: context,
        //   //   //   title: 'select_city'.tr(),
        //   //   //   items: const ['doha', 'al rayyan', 'al wakrah', 'al khor'],
        //   //   //   selected: state.city,
        //   //   //   labelBuilder: (v) => v,
        //   //   //   onConfirm: controller.setCity,
        //   //   // );
        //   // },
        // ),

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
        12.verticalSpace,

        /// الموقع (NO *)
        Text('location'.tr(), style: TextStyle(fontWeight: FontWeight.w600)),
        8.verticalSpace,
        LocationWidget(
          latlng: state.latLng ??
              mapController.value?.latLng ??
              mapController.value?.initialLatLng ??
              const LatLng(25.2816415, 51.5242998),
        )
        // LocationWidget(
        //   latlng: LatLng(
        //     mapController.value?.latLng?.latitude ?? 25.2816415,
        //     mapController.value?.latLng?.longitude ?? 51.5242998,
        //   ),
        // ),
        // Container(
        //   height: 180,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(12),
        //     color: Colors.grey.shade200,
        //   ),
        //   child: const Center(
        //     child: Text('Map View'),
        //   ),
        // ),
      ],
    );
  }

  static String _adTypeLabel(String? value) {
    switch (value) {
      case 'Sale':
        return 'for_sale'.tr();
      case 'wanted':
        return 'wanted'.tr();
      default:
        return '';
    }
  }

  static String _conditionLabel(String? value) {
    switch (value) {
      case 'Used':
        return 'used'.tr();
      case 'New':
        return 'new'.tr();
      default:
        return '';
    }
  }
}
