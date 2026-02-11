import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_comments.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_header_info.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_hero.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_message_composer.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_tabs.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_tabs_switcher.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  // ارتفاع حقل الإدخال (تقريبًا) + safe area
  static const double _composerHeight = 99;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      // تحديث المحتوى أسفل التاب عند تغيير التبويب
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: ProductDetailsScreenHero()),
            const SliverToBoxAdapter(child: ProductDetailsScreenHeaderInfo()),

            /// ✅ Tabs pinned (تثبت في أعلى الشاشة أثناء السحب)
            SliverPersistentHeader(
              pinned: true,
              delegate: _ProductDetailsScreenTabsHeaderDelegate(
                child: ProductDetailsScreenTabs(controller: _tabController),
              ),
            ),

            /// ✅ محتوى التبويب الحالي (يتغير حسب التاب)
            SliverToBoxAdapter(
              child: ProductDetailsScreenTabSwitcher(
                controller: _tabController,
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'product_details.description_label'.tr(),
                      style: AppTextStyle.rubikSemiBold16.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                    Text(
                      'product_details.description_text'.tr(),
                      style: AppTextStyle.rubikRegular16,
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),

            /// ✅ التعليقات جزء من السحب وتظهر بعد ما تنزل تحت
            const SliverToBoxAdapter(
              child: ProductDetailsScreenCommentsSection(),
            ),

            /// ✅ مساحة تحت عشان bottom composer ما يغطي آخر المحتوى
            // SliverToBoxAdapter(
            //   child: SizedBox(
            //     height: _composerHeight + MediaQuery.of(context).padding.bottom,
            //   ),
            // ),
          ],
        ),
      ),

      /// ✅ الثابت الوحيد: حقل الإدخال
      bottomNavigationBar: const ProductDetailsScreenMessageComposer(),
    );
  }
}

class _ProductDetailsScreenTabsHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final Widget child;
  _ProductDetailsScreenTabsHeaderDelegate({required this.child});

  @override
  double get minExtent => 56;

  @override
  double get maxExtent => 56;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(color: AppColors.white, child: child);
  }

  @override
  bool shouldRebuild(
    covariant _ProductDetailsScreenTabsHeaderDelegate oldDelegate,
  ) {
    return oldDelegate.child != child;
  }
}
