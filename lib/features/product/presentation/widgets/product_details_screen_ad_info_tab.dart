import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

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
        titleKey: 'product_details.ad_info.category',
        valueKey: productDetailsModel.category ?? 'Category',
      ),
      ProductDetailsScreenInfoRowData(
        titleKey: 'product_details.ad_info.ad_type',
        valueKey: productDetailsModel.listingType ?? 'Type',
      ),
      ProductDetailsScreenInfoRowData(
        titleKey: 'product_details.ad_info.type',
        valueKey: 'product_details.ad_info_values.iphone16_series',
      ),
      ProductDetailsScreenInfoRowData(
        titleKey: 'product_details.ad_info.sub_category',
        valueKey: productDetailsModel.subcategory ?? 'SubCategory',
      ),
      ProductDetailsScreenInfoRowData(
        titleKey: 'product_details.ad_info.city',
        valueKey: productDetailsModel.city ?? 'City',
      ),
      ProductDetailsScreenInfoRowData(
        titleKey: 'product_details.ad_info.condition',
        valueKey: productDetailsModel.condition ?? 'Condition',
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
