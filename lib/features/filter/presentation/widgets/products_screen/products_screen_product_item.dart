
import 'package:flutter/material.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductsScreenProductItem extends StatelessWidget {
  const ProductsScreenProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Assets.images.iponeImage.image(
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
                border: Border.all(color: AppColors.borderGrey2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    'ايفون 15',
                    style: AppTextStyle.rubikSemiBold16.copyWith(
                      color: AppColors.textDart,
                    ),
                  ),
                  Text(
                    'مستعمل - بحالة ممتازة',
                    style: AppTextStyle.rubikRegular12.copyWith(
                      color: AppColors.grayHint,
                    ),
                  ),
                  Text(
                    '1,400 ر.ق',
                    style: AppTextStyle.rubikMedium14.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Assets.icons.commentsDarkIc.svg(),
    
                      Text(
                        '5',
                        style: AppTextStyle.rubikRegular12
                            .copyWith(color: AppColors.grayHint),
                      ),
                      10.horizontalSpace,
                      Assets.icons.likesDarkIc.svg(),
    
                      Text(
                        '0',
                        style: AppTextStyle.rubikRegular12
                            .copyWith(color: AppColors.grayHint),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
