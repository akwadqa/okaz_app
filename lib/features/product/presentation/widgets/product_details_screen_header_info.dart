import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_action_chips.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_contact_bar.dart';
import 'package:okaz/src/core/utils/extenssions/time_extension.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

import '../../../../gen/assets.gen.dart';

class ProductDetailsScreenHeaderInfo extends StatelessWidget {
  const ProductDetailsScreenHeaderInfo({
    super.key,
    required this.productDetailsModel,
  });
  final ProductDetailsModel productDetailsModel;

  @override
  Widget build(BuildContext context) {
    final local = context.locale.languageCode;
    return Column(
      children: [
        const SizedBox(height: 12),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                (local == 'ar'
                        ? productDetailsModel.titleAr
                        : productDetailsModel.title) ??
                    'title',
               style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.icons.oclockIc.svg(),
                      const SizedBox(width: 6),
                      Text(
                        DateTime.parse(
                          productDetailsModel.createdOn ??
                              DateTime.now().toString(),
                        ).timeAgo(),
                    
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.grayHint,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Text(
                      '${productDetailsModel.price} ${productDetailsModel.currency}',
                     textAlign: TextAlign.end,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFB8502E),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Chips: Views / Likes / Report
              ProductDetailsScreenActionChips(
                productDetailsModel: productDetailsModel,
              ),

              const SizedBox(height: 18),
            ],
          ),
        ),

        // شريط تواصل (Call/WhatsApp + رقم)
        ProductDetailsScreenContactBar(
          productDetailsModel: productDetailsModel,
        ),

        const SizedBox(height: 10),
      ],
    );
  }
}
