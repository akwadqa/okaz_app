import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../controller/sub_category_controller.dart';
import 'sub_category_item.dart';
import '../../../../home/domain/model/home_model/home_model.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

class SubCategoriesSection extends ConsumerWidget {
  const SubCategoriesSection(this.subCategoryModel, {super.key});
  final SubCategoryModel subCategoryModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(mainSubcategory).mainAttributes?.first.values ?? [];

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 22, right: 22, bottom: 20),
            child: Text(
              subCategoryModel.mainAttributes?.first.title ?? 'title',
              style: AppTextStyle.rubikSemiBold18.copyWith(
                color: AppColors.textDart,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 4 عناصر في كل سطر كما في صورتك
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1, // تتحكم في نسبة الطول للعرض للكارت
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return const SubCategoryItem(title: '');
                }
                final item = items[index - 1];
                return SubCategoryItem(
                  title: item.title ?? '',
                  image: item.image,
                );
              },
              childCount: items.length + 1,
            ),
          ),
        ),
      ],
    );
  }
}
