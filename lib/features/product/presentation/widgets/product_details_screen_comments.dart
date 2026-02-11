import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

import '../../../../gen/assets.gen.dart';

class ProductDetailsScreenCommentsSection extends StatelessWidget {
  const ProductDetailsScreenCommentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final comments = <ProductDetailsScreenCommentData>[
      ProductDetailsScreenCommentData(
        name: 'Mariam',
        message: 'Great deal!',
        when: '1 hour',
        avatarAsset: 'assets/images/avatars/a1.png',
      ),
      ProductDetailsScreenCommentData(
        name: 'Omar',
        message: 'Is it still available?',
        when: '1 hour',
        avatarAsset: 'assets/images/avatars/a2.png',
      ),
      ProductDetailsScreenCommentData(
        name: 'Sara',
        message: 'Can you share more photos?',
        when: '1 hour',
        avatarAsset: 'assets/images/avatars/a3.png',
      ),
    ];

    return Container(
      color: AppColors.white,
      child: Column(
        children: [
          const Divider(height: 1, color: AppColors.dividerColor),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
            child: Row(
              children: [
                Text(
                  'product_details.comments_title'.tr(),
                  style: AppTextStyle.rubikSemiBold16.copyWith(
                    color: AppColors.primary,
                  ),
                  // style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.primary),
                ),
                const Spacer(),
                Text(
                  'product_details.view_all'.tr(),
                  style: AppTextStyle.rubikMedium12,
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: AppColors.dividerColor),

          ...comments.map(
            (c) => Column(
              children: [
                ProductDetailsScreenCommentTile(data: c),
                const Divider(height: 1, color: AppColors.dividerColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDetailsScreenCommentData {
  final String name;
  final String message;
  final String when;
  final String avatarAsset;

  ProductDetailsScreenCommentData({
    required this.name,
    required this.message,
    required this.when,
    required this.avatarAsset,
  });
}

class ProductDetailsScreenCommentTile extends StatelessWidget {
  final ProductDetailsScreenCommentData data;
  const ProductDetailsScreenCommentTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      child: Row(
        children: [
          // كان الأخير (CircleAvatar) أصبح الأول
          CircleAvatar(
            radius: 22,
            backgroundImage: Assets.images.iponeImage.image().image,
          ),

          const SizedBox(width: 12),

          // العنصر الأوسط (Expanded) يبقى مكانه لكن بترتيب منطقي للـ Row
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(data.name, style: AppTextStyle.rubikMedium16),
                    Spacer(),
                    Icon(Icons.more_horiz, color: AppColors.grayHint),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      data.message,
                      style: AppTextStyle.rubikRegular14.copyWith(
                        color: AppColors.grayHint,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    Spacer(),
                    Text(
                      data.when,
                      style: AppTextStyle.rubikRegular12.copyWith(
                        color: AppColors.grayHint,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
