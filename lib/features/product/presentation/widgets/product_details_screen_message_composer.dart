import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

import '../../../../gen/assets.gen.dart';

class ProductDetailsScreenMessageComposer extends StatelessWidget {
  const ProductDetailsScreenMessageComposer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
      child: SizedBox(
        height: 43,
        child: TextFormField(
          textAlign: TextAlign.right,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            hintText: 'product_details.message_placeholder'.tr(),
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.grey97,
            ),
            filled: true,
            fillColor: AppColors.background,
            contentPadding: const EdgeInsetsDirectional.only(start: 16, end: 8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            suffixIcon: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Assets.icons.sendCommentIc.svg(),
              ),
            ),
            suffixIconConstraints: const BoxConstraints(
              minWidth: 36,
              minHeight: 36,
            ),
          ),
        ),
      ),
    );
  }
}
