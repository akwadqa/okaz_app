import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_comments.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class ProductDetailsScreenSpecsTab extends StatelessWidget {
  const ProductDetailsScreenSpecsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <ProductDetailsScreenSpecItemData>[
      ProductDetailsScreenSpecItemData(
        titleKey: 'product_details.specs.sim_type',
        valueKey: 'product_details.spec_values.sim_3',
      ),
      ProductDetailsScreenSpecItemData(
        titleKey: 'product_details.specs.storage_capacity',
        valueKey: 'product_details.spec_values.storage_lt_512',
      ),
      ProductDetailsScreenSpecItemData(
        titleKey: 'product_details.specs.camera_resolution',
        valueKey: 'product_details.spec_values.other',
      ),
      ProductDetailsScreenSpecItemData(
        titleKey: 'product_details.specs.os',
        valueKey: 'product_details.spec_values.ios',
      ),
      ProductDetailsScreenSpecItemData(
        titleKey: 'product_details.specs.ram',
        valueKey: 'product_details.spec_values.other',
      ),
      ProductDetailsScreenSpecItemData(
        titleKey: 'product_details.specs.network_type',
        valueKey: 'product_details.spec_values.g5',
      ),
      ProductDetailsScreenSpecItemData(
        titleKey: 'product_details.specs.battery_capacity',
        valueKey: 'product_details.spec_values.battery_other',
      ),
    ];

    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      child: Column(
        children: [
          for (int i = 0; i < items.length; i++) ...[
            ProductDetailsScreenSpecRow(data: items[i]),
            if (i != items.length - 1)
              const Divider(height: 24, color: AppColors.dividerColor),
          ],
        ],
      ),
    );
  }
}

class ProductDetailsScreenSpecItemData {
  final String titleKey;
  final String valueKey;

  ProductDetailsScreenSpecItemData({
    required this.titleKey,
    required this.valueKey,
  });
}

class ProductDetailsScreenSpecRow extends StatelessWidget {
  final ProductDetailsScreenSpecItemData data;
  const ProductDetailsScreenSpecRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: AlignmentDirectional.centerStart,

            child: Text(
              data.titleKey.tr(),
              // AppTextStyle.rubikMedium14.copyWith(color: AppColors.primary),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFFB8502E),
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              data.valueKey.tr(),
              // AppTextStyle.rubikRegular14.copyWith(color: AppColors.textDark),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF191210),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductDetailsScreenDescriptionSection extends StatelessWidget {
  const ProductDetailsScreenDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'product_details.description_text'.tr(),
                // AppTextStyle.rubikRegular16.copyWith(color: AppColors.text),
                style: const TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              'product_details.description_label'.tr(),
              // AppTextStyle.rubikSemiBold16.copyWith(color: AppColors.primary),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
