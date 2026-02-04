import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_action_chips.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_contact_bar.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

import '../../../../gen/assets.gen.dart';

class ProductDetailsScreenHeaderInfo extends StatelessWidget {
  const ProductDetailsScreenHeaderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // المسافة تحت الصورة
        const SizedBox(height: 12),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // عنوان المنتج
              Text(
                'product_details.product_title'.tr(),
                // AppTextStyle.rubikBold18.copyWith(color: AppColors.text),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              // سعر + وقت
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.icons.oclockIc.svg(),
                      // Icon(Icons.access_time, size: 18, color: AppColors.grayHint),
                      const SizedBox(width: 6),
                      Text(
                        'product_details.hours_ago'.tr(
                          namedArgs: {'hours': '4'},
                        ),
                        // AppTextStyle.rubikRegular14.copyWith(color: AppColors.muted),
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.grayHint,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Text(
                      'product_details.price'.tr(namedArgs: {'value': '6800'}),
                      textAlign: TextAlign.end,
                      // AppTextStyle.rubikSemiBold18.copyWith(color: AppColors.primary),
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
              const ProductDetailsScreenActionChips(),

              const SizedBox(height: 18),
            ],
          ),
        ),

        // شريط تواصل (Call/WhatsApp + رقم)
        const ProductDetailsScreenContactBar(),

        const SizedBox(height: 10),
      ],
    );
  }
}
