import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class HomeScreenSubCategoryItem extends StatelessWidget {
  const HomeScreenSubCategoryItem({super.key, required this.subCategoryModel});
  final SubCategoryModel subCategoryModel;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => context.pushNamed(
        AppRoutes.searchSubCategoryScreen,
        extra: subCategoryModel,
      ),
      child: Container(
        width: width / 4.5,
        height: width / 3.5,
        decoration: BoxDecoration(
          color: AppColors.lightRedBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          spacing: 4,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: ServicesUrls.imageUrl + (subCategoryModel.image ?? ''),
              height: width / 7,
            ),
            // Assets.images.phoneImage.image(height: width / 7),
            Text(
              subCategoryModel.categoryName ?? 'Subcategory',
              // 'هاتف',
              textAlign: TextAlign.center,
              style: AppTextStyle.rubikMedium14.copyWith(
                color: AppColors.textDart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
