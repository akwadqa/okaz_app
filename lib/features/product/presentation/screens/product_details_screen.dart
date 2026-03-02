import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/product/presentation/controller/product_controller.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_comments.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_header_info.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_hero.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_message_composer.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_tabs.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_tabs_switcher.dart';
import 'package:okaz/src/core/shared_widgets/app_error_widget.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductDetailsScreen extends ConsumerStatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  ConsumerState<ProductDetailsScreen> createState() =>
      _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends ConsumerState<ProductDetailsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  static const double _composerHeight = 99;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (mounted) setState(() {});
    });

    Future(() {
      ref
          .read(productControllerProvider.notifier)
          .getProductDetails('07acht7r0u');
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(
      productControllerProvider.select((val) => val.value?.productDetailsModel),
    );
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        top: false,
        child: controller!.when(
          data: (data) => _buildProductDetailsBody(data),
          error: (e, st) => AppErrorWidget(),
          loading: () => AppLoader(),
        ),
      ),

      bottomNavigationBar: const ProductDetailsScreenMessageComposer(),
    );
  }

  Widget _buildProductDetailsBody(ProductDetailsModel productDetailsModel) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: ProductDetailsScreenHero(
            productDetailsModel: productDetailsModel,
          ),
        ),
        SliverToBoxAdapter(
          child: ProductDetailsScreenHeaderInfo(
            productDetailsModel: productDetailsModel,
          ),
        ),

        SliverPersistentHeader(
          pinned: true,
          delegate: _ProductDetailsScreenTabsHeaderDelegate(
            child: ProductDetailsScreenTabs(controller: _tabController),
          ),
        ),

        SliverToBoxAdapter(
          child: ProductDetailsScreenTabSwitcher(
            controller: _tabController,
            productDetailsModel: productDetailsModel,
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
                  productDetailsModel.description ?? 'Description',
                  // 'product_details.description_text'.tr(),
                  style: AppTextStyle.rubikRegular16,
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),

        const SliverToBoxAdapter(child: ProductDetailsScreenCommentsSection()),
      ],
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
