import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/product/presentation/controller/favorite_product_contrller.dart';
import 'package:okaz/features/product/presentation/controller/product_controller.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_comment_section/product_details_screen_comments_section.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_header_info.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_hero.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_message_composer.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_tabs.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_tabs_switcher.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/core/shared_widgets/app_error_widget.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/core/utils/functions/helper_methods.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductDetailsScreen extends ConsumerStatefulWidget {
  const ProductDetailsScreen(this.postId, {super.key});
  final String postId;

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
          .getProductDetails(widget.postId);
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
      productControllerProvider
          .select((val) => val.value?.productDetailsModel ?? AsyncLoading()),
    );

    ref.listen(
        productControllerProvider
            .select((val) => val.value?.productDetailsModel), (previous, next) {
      if (next is AsyncData) {
        ref
            .read(productControllerProvider.notifier)
            .updatePostViews(next?.value?.name ?? 'id');
      }
    });
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        // if (didPop) {
        //   context.goNamed(AppRoutes.mainScreen);
        // }
        if (didPop) return;

        if (context.canPop()) {
          context.pop();
        } else {
          context.goNamed(AppRoutes.mainScreen);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.background,

        body: controller.when(
          data: (data) {
            return _buildProductDetailsBody(data);
          },
          error: (e, st) => AppErrorWidget(
            withBackButton: true,
            onTap: () => ref
                .read(productControllerProvider.notifier)
                .getProductDetails(widget.postId),
          ),
          loading: () => AppLoader(),
        ),

        bottomNavigationBar: controller.whenOrNull(
          data: (data) => Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: ProductDetailsScreenMessageComposer(
              postId: data.name ?? 'id',
            ),
          ),
        ),
        // bottomNavigationBar:  ProductDetailsScreenMessageComposer(),
      ),
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
                  'product_details_description_label'.tr(),
                  style: AppTextStyle.rubikSemiBold16.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  translate(
                    productDetailsModel.descriptionAr ?? 'وصف',
                    productDetailsModel.description ?? 'description',
                    context,
                  ),
                  // 'product_details.description_text'.tr(),
                  style: AppTextStyle.rubikRegular16,
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(
          child: ProductDetailsScreenCommentsSection(
            productDetailsModel: productDetailsModel,
          ),
        ),
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
