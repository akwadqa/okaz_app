import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class HomeScreenAddItem extends StatelessWidget {
  const HomeScreenAddItem({super.key, required this.bannerModel});
  final BannerModel bannerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 300,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [AppColors.white, AppColors.black]),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(
            ServicesUrls.imageUrl + (bannerModel.image ?? ''),
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
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
              bannerModel.categoryName ?? 'Category',
              // 'ساعة كلاسيكية',
              style: AppTextStyle.interBold18.copyWith(color: AppColors.white),
            ),
            // Text(
            //   'ارفع من مستوى أناقتك مع الساعات الفاخرة',
            //   style: AppTextStyle.interRegular14.copyWith(
            //     color: AppColors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
