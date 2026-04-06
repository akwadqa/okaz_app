import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/filter/presentation/controller/filter_controller.dart';
import 'package:okaz/features/filter/presentation/controller/sub_category_controller.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class SubCategoryItem extends ConsumerWidget {
  final String? title;
  final String? image;

  const SubCategoryItem({
    super.key,
    this.title,
    this.image,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final category = ref.watch(selectedSubCategoryProvider);
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        if (title != null && (title?.trim().isNotEmpty ?? false)) {
          ref.read(selectedSubCategoryProvider.notifier).state = title!;
        } else {
          ref.read(selectedSubCategoryProvider.notifier).state = '';
          // ref.read(filterControllerProvider.notifier)
          //   ..clearTempAttributes()
          //   ..applyTempAttributes();
        }
        context.push(AppRoutes.productsScreen);
      },
      child: Container(
        // width: 104,
        // height: 40,
        width: width / 4.5,
        // height: width / 3.5,
        height: width / 4.5,
        padding: EdgeInsets.all(4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: title == category ? AppColors.primary : AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: .05),
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              CachedNetworkImage(
                imageUrl: ServicesUrls.imageUrl + image!,
                height: width / 7,
              ),
            FittedBox(
              child: Text(
                title == null
                    ? 'title'
                    : (title?.trim().isNotEmpty ?? false)
                        ? title!
                        : 'product_details_view_all'.tr(),
                textAlign: TextAlign.center,
                style: AppTextStyle.rubikMedium14.copyWith(
                  color:
                      title == category ? AppColors.white : AppColors.textDart,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
