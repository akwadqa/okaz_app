import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../domain/model/product_details_model/product_details_model.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';

class ProductDetailsScreenAdInfoTab extends StatelessWidget {
  const ProductDetailsScreenAdInfoTab({
    super.key,
    required this.productDetailsModel,
  });
  final ProductDetailsModel productDetailsModel;

  @override
  Widget build(BuildContext context) {
    final rows = <ProductDetailsScreenInfoRowData>[
      ProductDetailsScreenInfoRowData(
        titleKey: 'product_details_ad_info_values_category',
        valueKey: productDetailsModel.category ??
            'product_details_ad_info_values_category',
      ),
      ProductDetailsScreenInfoRowData(
        titleKey: 'ad_type',
        valueKey: productDetailsModel.postType ?? 'ad_type',
      ),
      // ProductDetailsScreenInfoRowData(
      //   titleKey: 'product_details_ad_info_values_type',
      //   valueKey:
      //       productDetailsModel.title ?? 'product_details_ad_info_values_type',
      // ),
      // ProductDetailsScreenInfoRowData(
      //   titleKey: 'product_details_ad_info.type',
      //   // valueKey: 'product_details_ad_info_values_iphone16_series',
      //   valueKey: productDetailsModel.
      // ),
      ProductDetailsScreenInfoRowData(
        titleKey: 'product_details_ad_info_values_sub_category',
        valueKey: productDetailsModel.subcategory ??
            'product_details_ad_info_values_sub_category',
      ),
      ProductDetailsScreenInfoRowData(
        titleKey: 'product_details_ad_info_values_city',
        valueKey:
            productDetailsModel.city ?? 'product_details_ad_info_values_city',
      ),
      ProductDetailsScreenInfoRowData(
        titleKey: 'product_details_ad_info_values_condition',
        valueKey: productDetailsModel.condition ??
            'product_details_ad_info_values_condition',
      ),
    ];

    return ProductDetailsScreenAdInfoCard(rows: rows);
  }
}

class ProductDetailsScreenAdInfoCard extends StatelessWidget {
  final List<ProductDetailsScreenInfoRowData> rows;

  const ProductDetailsScreenAdInfoCard({super.key, required this.rows});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      child: Column(
        children: [
          for (int i = 0; i < rows.length; i++) ...[
            ProductDetailsScreenInfoRow(data: rows[i]),
            if (i != rows.length - 1)
              const Divider(height: 24, color: AppColors.dividerColor),
          ],
        ],
      ),
    );
  }
}

class ProductDetailsScreenInfoRowData {
  final String titleKey; // label (يمين)
  final String valueKey; // value (يسار)

  const ProductDetailsScreenInfoRowData({
    required this.titleKey,
    required this.valueKey,
  });
}

class ProductDetailsScreenInfoRow extends StatelessWidget {
  final ProductDetailsScreenInfoRowData data;

  const ProductDetailsScreenInfoRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // ✅ العنوان (يمين)
        Expanded(
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              data.titleKey.tr(),
              // AppTextStyle.rubikMedium14.copyWith(color: AppColors.primary),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              data.valueKey.tr(),
              // AppTextStyle.rubikRegular14.copyWith(color: const Color(0xFF191210)),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF191210),
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ],
    );
  }
}
