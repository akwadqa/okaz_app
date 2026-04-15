import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/product/presentation/controller/favorite_product_contrller.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_hero.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/core/shared_widgets/app_toast.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

import '../../../../profile/domain/profile_item.dart';

class ProductsScreenProductItem extends ConsumerWidget {
  // final ProfileItem? item;
  final ProductDetailsModel item;
  final void Function()? onLongPress;

  const ProductsScreenProductItem(
      {super.key, required this.item, this.onLongPress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
        favoriteProductContrllerProvider(
            item.name.toString(), item?.isFavorited ?? false), (prev, next) {
      if (next is AsyncError) {
        // showErrorDialog(context, next.error.toString());
        AppToast.errorToast(next.error.toString());
      }
    });
    return GestureDetector(
      onLongPress: onLongPress,
      onTap: () =>
          context.push(AppRoutes.productDetailsScreen, extra: item.name),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                // height: double.infinity,
                color: AppColors.white,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      left: 0,
                      top: 0,
                      bottom: 0,
                      // child: Assets.images.iponeImage.image(fit: BoxFit.cover),
                      child: CachedNetworkImage(
                        imageUrl: ServicesUrls.imageUrl +
                            (item.image ?? item.images!.first.image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: ProductDetailsScreenIconCircleButton(
                        icon: Assets.icons.starIc,
                        productDetailsModel: item,
                        toProduct: true,
                      ),
                    ),
                    if (item.isFeatured == 1)
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          padding: EdgeInsetsDirectional.fromSTEB(13, 9, 18, 9),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          child: Text(
                            'distinctive'.tr(),
                            style: AppTextStyle.rubikRegular10.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Flexible(
              // flex: 2,
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
                      item?.title ?? 'iphone'.tr(),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.rubikSemiBold16.copyWith(
                        color: AppColors.textDart,
                      ),
                    ),
                    Text(
                      item?.condition ?? 'new'.tr(),
                      style: AppTextStyle.rubikRegular12.copyWith(
                        color: AppColors.grayHint,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '${item?.price ?? 44} ${'currency_qr'.tr()}',
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
