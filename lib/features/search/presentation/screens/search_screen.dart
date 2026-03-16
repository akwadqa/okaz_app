import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/features/search/presentation/widgets/search_screen/search_screen_filter_chip.dart';
import 'package:okaz/features/search/presentation/widgets/search_screen/search_screen_recent_header.dart';
import 'package:okaz/features/search/presentation/widgets/search_screen/search_screen_recent_item.dart';
import 'package:okaz/features/search/presentation/widgets/search_screen/search_screen_search_bar.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

import '../../../../gen/assets.gen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          'search'.tr(),
          style: AppTextStyle.rubikSemiBold18.copyWith(
            color: AppColors.textDart,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: _SearchScreenContent(),
    );
  }
}

class _SearchScreenContent extends StatelessWidget {
  const _SearchScreenContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        12.verticalSpace,
        SearchScreenSearchBar(),
        Divider(height: 24, color: AppColors.dividerColor),
        // SearchScreenNoSearchContent(),
        SearchScreenSearchContent(),
        // SearchSceeenEmptyContent(),
      ],
    );
  }
}

class SearchSceeenEmptyContent extends StatelessWidget {
  const SearchSceeenEmptyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        80.verticalSpace,
        Assets.images.noSearchImage.image(),
        40.verticalSpace,
        Text(
          'no_result_search'.tr(),
          textAlign: TextAlign.center,
          style: AppTextStyle.rubikBold22.copyWith(color: AppColors.black),
        ),
      ],
    );
  }
}

class SearchScreenSearchContent extends StatelessWidget {
  const SearchScreenSearchContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 22),
        itemBuilder: (context, index) => GestureDetector(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              spacing: 8,
              children: [
                Expanded(
                  child: Text(
                    'search_result_title'.tr(),
                    textAlign: TextAlign.right,
                    style: AppTextStyle.rubikMedium16,
                  ),
                ),
                Icon(Icons.arrow_outward_rounded, color: AppColors.grayHint),
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) =>
            Divider(height: 0, color: AppColors.dividerColor),
        itemCount: 4,
      ),
    );
  }
}

class SearchScreenNoSearchContent extends StatelessWidget {
  const SearchScreenNoSearchContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          SearchScreenRecentHeader(
            title: 'recent_searches'.tr(),
            actionTitle: 'delete_all'.tr(),
            onTap: () {},
          ),
          16.verticalSpace,
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 22),
            itemBuilder: (context, index) =>
                SearchScreenRecentItem(title: 'iphone'.tr()),
            separatorBuilder: (context, index) =>
                Divider(height: 0, color: AppColors.dividerColor),
            itemCount: 3,
          ),

          20.verticalSpace,
          Text(
            'most_searched'.tr(),
            style: AppTextStyle.rubikSemiBold14.copyWith(
              color: AppColors.black900,
            ),
          ).symmetricPadding(horizontal: 22),
          14.verticalSpace,
          SizedBox(
            height: 35,
            child: ListView.separated(
              separatorBuilder: (context, index) => 12.horizontalSpace,
              itemCount: 5,
              padding: EdgeInsets.symmetric(horizontal: 22),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  SearchScreenFilterChip(title: 'phones'.tr()),
            ),
          ),
          // const Spacer(),
        ],
      ),
    );
  }
}
