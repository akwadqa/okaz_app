
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductsScreenSpecialItem extends StatelessWidget {
  const ProductsScreenSpecialItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22),
      // width: 300,
      height: 168,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [AppColors.white, AppColors.black],
        ),
        image: DecorationImage(
          image: Assets.images.watchImage.image().image,
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: AlignmentGeometry.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.white.withValues(alpha: .15),
                  AppColors.black.withValues(alpha: .35),
                ],
              ),
            ),
            child: Column(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'classic_watch_title'.tr(),
                  style: AppTextStyle.interBold18.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  'classic_watch_subtitle'.tr(),
                  style: AppTextStyle.interRegular16.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
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
    );
  }
}
