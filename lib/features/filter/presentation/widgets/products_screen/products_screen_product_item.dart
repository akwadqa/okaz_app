import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_hero.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

import '../../../../profile/domain/profile_item.dart';

class ProductsScreenProductItem extends StatelessWidget {
  final ProfileItem? item;

  const ProductsScreenProductItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRoutes.productDetailsScreen),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      left: 0,
                      child: Assets.images.iponeImage.image(fit: BoxFit.cover),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: ProductDetailsScreenIconCircleButton(
                        icon: Assets.icons.starIc,
                        toProduct: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
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
                      item?.title ?? "iphone",
                      style: AppTextStyle.rubikSemiBold16.copyWith(
                        color: AppColors.textDart,
                      ),
                    ),
                    Text(
                      item?.condition ?? "new ",
                      style: AppTextStyle.rubikRegular12.copyWith(
                        color: AppColors.grayHint,
                      ),
                    ),
                    Text(
                      '${item?.price ?? 44} ر.ق',
                      style: AppTextStyle.rubikMedium14.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        Assets.icons.commentsDarkIc.svg(),

                        Text(
                          '${item?.comments ?? 1}',
                          style: AppTextStyle.rubikRegular12.copyWith(
                            color: AppColors.grayHint,
                          ),
                        ),
                        10.horizontalSpace,
                        Assets.icons.likesDarkIc.svg(),

                        Text(
                          '${item?.likes ?? 5}',
                          style: AppTextStyle.rubikRegular12.copyWith(
                            color: AppColors.grayHint,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
