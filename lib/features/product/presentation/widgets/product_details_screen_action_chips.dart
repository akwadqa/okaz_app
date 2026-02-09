import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductDetailsScreenActionChips extends StatelessWidget {
  const ProductDetailsScreenActionChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProductDetailsScreenOutlinedChip(
          icon: Assets.icons.eyeIc,
          label: '50',
          onTap: () {},
        ),
        const Spacer(),
        ProductDetailsScreenOutlinedChip(
          icon: Assets.icons.likeLightIc,
          label: '4',
          onTap: () {},
        ),
        const Spacer(),
        ProductDetailsScreenOutlinedChip(
          icon: Assets.icons.reportIc,
          label: 'product_details.report_ad'.tr(),
          onTap: () {},
          minWidth: 138,
        ),
      ],
    );
  }
}

class ProductDetailsScreenOutlinedChip extends StatelessWidget {
  final SvgGenImage icon;
  final String label;
  final VoidCallback? onTap;
  final double? minWidth;

  const ProductDetailsScreenOutlinedChip({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
    this.minWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: minWidth ?? 85),
      child: Material(
        color: AppColors.white,
        shape: StadiumBorder(side: BorderSide(color: AppColors.chipBorder)),
        child: InkWell(
          onTap: onTap,
          customBorder: const StadiumBorder(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(icon, size: 16, color: AppColors.grayHint),
                Text(
                  label,
                  style: AppTextStyle.rubikMedium14.copyWith(
                    color: AppColors.grayHint,
                  ),
                  // style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.muted),
                ),
                const SizedBox(width: 6),
                icon.svg(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
