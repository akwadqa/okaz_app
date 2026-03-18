import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'app_text_styles.dart';

class SettingsItemCard extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;
  final SvgGenImage icon;
  // final bool showLeading;

  const SettingsItemCard({
    super.key,
    required this.title,
    this.trailing,
    // this.showLeading = true,
    this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
          // height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            // boxShadow: const [
            //   BoxShadow(
            //     color: AppColors.shadow,
            //     blurRadius: 4,
            //   ),
            // ],
          ),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.primaryOpacity.withAlpha(100),
                child: icon.svg(color: AppColors.primary)),
            title: Text(
              title.tr(),
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(
                  color: AppColors.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            trailing: trailing ??
                Icon(Icons.arrow_forward_ios,
                    size: 20, color: AppColors.primary),
          )),
    );
  }
}
