import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/filter/presentation/controller/sub_category_controller.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/features/home/presentation/controller/home_controller.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_search_field.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_error_widget.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/core/utils/functions/helper_methods.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class HomeScreenDrawer extends ConsumerStatefulWidget {
  const HomeScreenDrawer({super.key});

  @override
  ConsumerState<HomeScreenDrawer> createState() => _HomeScreenDrawerState();
}

class _HomeScreenDrawerState extends ConsumerState<HomeScreenDrawer> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeControllerProvider.notifier).filterCategories("");
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(
      homeControllerProvider.select((val) => val.value!.homeModel),
    );
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
                'sections'.tr(),
                style: AppTextStyle.rubikBold18.copyWith(
                  color: AppColors.textDart,
                ),
              ).symmetricPadding(horizontal: 22),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () => context.pop(),
                icon: Icon(Icons.close),
              ),
            ],
          ),
          HomeScreenSearchFiled(
            title: 'search_by_section'.tr(),
            onChanged: (val) =>
                ref.read(homeControllerProvider.notifier).filterCategories(val),
          ),
          // _buildDrawerBody(),
          controller.when(
            data: (homeModel) => _DrawerCategoryList(
                // categories: homeModel.categories ?? [],
                // ),
                categories:
                    ref.watch(homeControllerProvider).value!.filterdCategories),
            error: (e, st) => AppErrorWidget(),
            loading: () => AppLoader(),
          ),
        ],
      ),
    );
  }
}

class _DrawerCategoryList extends StatefulWidget {
  const _DrawerCategoryList({required this.categories});

  final List<CategoryModel?> categories;

  @override
  State<_DrawerCategoryList> createState() => _DrawerCategoryListState();
}

class _DrawerCategoryListState extends State<_DrawerCategoryList>
    with SingleTickerProviderStateMixin {
  final Set<int> _expandedIndexes = <int>{};

  void _toggleExpanded(int index) {
    setState(() {
      if (_expandedIndexes.contains(index)) {
        _expandedIndexes.remove(index);
      } else {
        _expandedIndexes.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        separatorBuilder: (context, index) => 5.verticalSpace,
        itemBuilder: (context, index) {
          final category = widget.categories[index];
          final isExpanded = _expandedIndexes.contains(index);
          final subcategories =
              category?.subcategories ?? const <SubCategoryModel?>[];

          return Column(
            children: [
              _buildCategoryTile(
                context: context,
                category: category,
                isExpanded: isExpanded,
                onTap: () => _toggleExpanded(index),
              ),
              isExpanded ? 4.verticalSpace : SizedBox(),
              AnimatedSize(
                duration: const Duration(milliseconds: 220),
                curve: Curves.easeInOut,
                alignment: Alignment.topCenter,
                child: isExpanded && subcategories.isNotEmpty
                    ? _buildSubcategoryList(context, subcategories)
                    : const SizedBox.shrink(),
              ),
            ],
          );
        },
        itemCount: widget.categories.length,
      ),
    );
  }

  Widget _buildCategoryTile({
    required BuildContext context,
    required CategoryModel? category,
    required bool isExpanded,
    required VoidCallback onTap,
  }) {
    // final isRtl = Directionality.of(context) == ui.TextDirection.rtl;

    return Material(
      color: AppColors.white,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        onTap: onTap,
        title: Text(
          translate(
            category?.categoryNameAr ?? '',
            category?.categoryName ?? '',
            context,
          ),
          style: AppTextStyle.rubikRegular16,
        ),
        trailing: AnimatedRotation(
          turns: isExpanded ? 0.25 : 0.0,
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeInOut,
          child: Icon(
            // isRtl ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
            Icons.arrow_forward_ios,
            color: AppColors.gray02,
            size: 18,
          ),
        ),
      ),
    );
  }

  Widget _buildSubcategoryList(
    BuildContext context,
    List<SubCategoryModel?> subcategories,
  ) {
    return Column(
      children: subcategories
          .map(
            (subcategory) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Material(
                shape: Border(
                  bottom: BorderSide(width: 4, color: AppColors.background),
                ),
                color: AppColors.white,
                child: Consumer(builder: (context, ref, _) {
                  return ListTile(
                    onTap: () {
                      ref.read(mainSubcategory.notifier).state = subcategory!;
                      context.pushNamed(
                        AppRoutes.searchSubCategoryScreen,
                        extra: subcategory,
                      );
                      //   context.pushNamed(
                      //   AppRoutes.searchSubCategoryScreen,
                      //   extra: subcategory,
                      // );
                    },
                    dense: true,
                    visualDensity: const VisualDensity(vertical: -2),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                    leading: SizedBox(),
                    title: Text(
                      translate(
                        subcategory?.categoryNameAr ?? '',
                        subcategory?.categoryName ?? '',
                        context,
                      ),
                      style: AppTextStyle.rubikRegular14.copyWith(
                        color: AppColors.textDart,
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
          .toList(),
    );
  }
}
