import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../controller/add_product_controller.dart';
import '../../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../../src/core/utils/extenssions/widget_extensions.dart';
import '../../../../../src/infrastructure/storage/local_storage_service.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../add_text_field.dart';
import 'image_grid.dart';

class StepReviewView extends ConsumerWidget {
  const StepReviewView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addProductControllerProvider).value!;
    final controller = ref.read(addProductControllerProvider.notifier);
    final country = ref.watch(localStorageServiceProvider).userInfo.country;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        /// -----------------------------
        /// Product Images
        /// -----------------------------
        const SectionTitle(
          title: 'product_images',
          subtitle: "max_5_images",
          required: true,
        ),
        // const SizedBox(height: 12),

        ImagesGrid(
          images: state.images,
          onAdd: controller.pickImage,
          onRemove: controller.removeImage,
        ),

        12.verticalSpace,

        /// -----------------------------
        /// Arabic Details
        /// -----------------------------
        SectionTitle(title: context.tr('details_ar'), required: true),
        // const SizedBox(height: 12),

        AddTextField(
          hint: context.tr('name_ar'),
          value: state.titleAr,
          onChanged: controller.setTitleAr,
        ),
        // const SizedBox(height: 12),

        AddTextField(
          hint: context.tr('description_ar'),
          maxLines: 4,
          value: state.descAr,
          onChanged: controller.setDescAr,
        ),

        // const SizedBox(height: 24),

        /// -----------------------------
        /// English Details
        /// -----------------------------
        SectionTitle(title: context.tr('details_en'), required: true),
        // const SizedBox(height: 12),

        AddTextField(
          hint: context.tr('name_en'),
          value: state.titleEn,
          onChanged: controller.setTitleEn,
        ),
        // const SizedBox(height: 12),

        AddTextField(
          hint: context.tr('description_en'),
          maxLines: 4,
          value: state.descEn,
          onChanged: controller.setDescEn,
        ),

        // const SizedBox(height: 24),

        /// -----------------------------
        /// Price
        /// -----------------------------
        SectionTitle(title: context.tr('price'), required: true),
        // const SizedBox(height: 12),

        AddTextField(
          hint: context.tr('enter_price'),
          keyboardType: TextInputType.number,
          suffixText:
              country == 'Qatar' ? 'currency_qr'.tr() : 'currency_sar'.tr(),
          // ? Assets.icons.qatarFlagIc.svg().symmetricPadding(horizontal: 10)
          // : Assets.icons.saudiFlagIc.svg().symmetricPadding(horizontal: 10),
          value: state.price?.toString(),
          onChanged: (v) => controller.setPrice(int.tryParse(v)),
        ),

        // const SizedBox(height: 24),

        /// -----------------------------
        /// Featured Ad
        /// -----------------------------
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: AppColors.grayBorder),
          ),
          child: SwitchListTile(
            contentPadding: EdgeInsets.zero,
            thumbColor: WidgetStatePropertyAll(AppColors.white),
            inactiveTrackColor: AppColors.stoneGray,
            activeTrackColor: AppColors.primary,
            value: state.isFeatured,
            title: Text(context.tr('featured_ad')),
            subtitle: Text(context.tr('featured_ad_desc')),
            onChanged: controller.setFeatured,
          ),
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    this.subtitle,
    this.required = false,
  });

  final String title;
  final String? subtitle;
  final bool required;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              title.tr(),
              style: AppTextStyle.nunitoSemibold16,
            ),
            if (required) const Text(' *', style: TextStyle(color: Colors.red)),
          ],
        ),
        if (subtitle != null) ...[
          Text(
            subtitle!.tr(),
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ],
    ).symmetricPadding(vertical: 16);
  }
}
