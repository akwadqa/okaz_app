import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_search_field.dart';
import 'package:okaz/features/search/presentation/widgets/search_screen/search_screen_icon_button.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

import '../../../../../gen/assets.gen.dart';

class SearchScreenSearchBar extends StatelessWidget {
  const SearchScreenSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HomeScreenSearchFiled(
            title: 'search_for_product'.tr(),
            withPadding: false,
          ),
        ),
        const SizedBox(width: 12),
        SearchScreenIconButton(icon: Assets.icons.filterIc, onTap: () {}),
      ],
    ).symmetricPadding(horizontal: 16);
  }
}
