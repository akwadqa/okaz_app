import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:okaz/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class HomeScreenCategoryTitle extends StatelessWidget {
  const HomeScreenCategoryTitle({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    Dev.logLine(icon);
    return Row(
      spacing: 10,
      children: [
        Container(
          width: 31,
          height: 31,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightRedBackground,
          ),
          child: CachedNetworkImage(
            imageUrl: ServicesUrls.imageUrl + icon,
          ),
        ),
        Text(
          title,
          style: AppTextStyle.rubikSemiBold18.copyWith(
            color: AppColors.textDart,
          ),
        ),
      ],
    );
  }
}
