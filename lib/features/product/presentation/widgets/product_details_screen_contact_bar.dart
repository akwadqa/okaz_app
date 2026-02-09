import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductDetailsScreenContactBar extends StatelessWidget {
  const ProductDetailsScreenContactBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'product_details.contact_label'.tr(),
                    style: AppTextStyle.rubikSemiBold16,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '97455552222',
                    // AppTextStyle.rubikRegular16.copyWith(color: AppColors.text),
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 12),
          ProductDetailsScreenPrimaryContactChip(
            icon: Assets.icons.callIc,
            textKey: 'product_details.call',
            onTap: () {},
          ),
          const SizedBox(width: 10),
          ProductDetailsScreenPrimaryContactChip(
            icon: Assets.icons.whatsappIc,
            textKey: 'product_details.whatsapp',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class ProductDetailsScreenPrimaryContactChip extends StatelessWidget {
  final SvgGenImage icon;
  final String textKey;
  final VoidCallback? onTap;

  const ProductDetailsScreenPrimaryContactChip({
    super.key,
    required this.icon,
    required this.textKey,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      shape: StadiumBorder(
        side: BorderSide(color: AppColors.lightRedBackground),
      ),
      child: InkWell(
        onTap: onTap,
        customBorder: const StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                textKey.tr(),
                style: AppTextStyle.rubikMedium14.copyWith(
                  color: AppColors.primary,
                ),
                // style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.primary),
              ),
              const SizedBox(width: 8),
              icon.svg(),
            ],
          ),
        ),
      ),
    );
  }
}
