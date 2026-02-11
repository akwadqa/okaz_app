import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_search_field.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.background,
      child: Column(
        spacing: 23,
        children: [
          23.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'الأقسام',
                style: AppTextStyle.rubikBold18.copyWith(
                  color: AppColors.textDart,
                ),
              ),
              IconButton(
                onPressed: () => context.pop(),
                icon: Icon(Icons.close),
              ),
            ],
          ).symmetricPadding(horizontal: 22),
          HomeScreenSearchFiled(title: 'search_by_section'.tr()),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => 5.verticalSpace,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  'عقارات تجارية للبيع',
                  style: AppTextStyle.rubikRegular16,
                ),
                tileColor: AppColors.white,
                trailing: Icon(Icons.arrow_forward_ios),
              ),

              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
