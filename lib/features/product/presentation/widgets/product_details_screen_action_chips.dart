import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/product/presentation/controller/product_controller.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductDetailsScreenActionChips extends ConsumerWidget {
  const ProductDetailsScreenActionChips({
    super.key,
    required this.productDetailsModel,
  });
  final ProductDetailsModel productDetailsModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(productControllerProvider, (prev, next) {
      if (next is AsyncError) {
        showErrorDialog(context, next.error.toString());
      }
    });
    final isLike = ref.watch(
      productControllerProvider.select((val) => val.value!.likePost),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProductDetailsScreenOutlinedChip(
          icon: Assets.icons.eyeIc,
          label: productDetailsModel.views.toString(),
          onTap: () {},
        ),
        const Spacer(),
        ProductDetailsScreenOutlinedChip(
          isLike: isLike ?? false,
          icon: Assets.icons.likeLightIc,
          label: productDetailsModel.likes.toString(),
          onTap: () {
            (isLike ?? false)
                ? ref
                      .read(productControllerProvider.notifier)
                      .unLikePost('goqg36nmh5')
                : ref
                      .read(productControllerProvider.notifier)
                      .likePost('goqg36nmh5');
          },
        ),
        const Spacer(),
        ProductDetailsScreenOutlinedChip(
          icon: Assets.icons.reportIc,
          label: 'product_details.report_ad'.tr(),
          onTap: () {
            showReportDialog(context);
          },
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
  final bool isLike;

  const ProductDetailsScreenOutlinedChip({
    super.key,
    required this.icon,
    required this.label,
    this.isLike = false,
    this.onTap,
    this.minWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: minWidth ?? 85),
      child: Material(
        color: AppColors.white,
        shape: StadiumBorder(
          side: BorderSide(
            color: isLike ? AppColors.primary : AppColors.chipBorder,
          ),
        ),
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
                    color: isLike ? AppColors.primary : AppColors.grayHint,
                  ),
                  // style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.muted),
                ),
                const SizedBox(width: 6),
                icon.svg(
                  colorFilter: isLike
                      ? ColorFilter.mode(AppColors.primary, BlendMode.srcIn)
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
