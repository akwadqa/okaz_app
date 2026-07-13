
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/core/shared_widgets/custom_app_bar.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/infrastructure/storage/local_storage_service.dart';
import '../../domain/model/product_details_model/product_details_model.dart';
import '../controller/product_controller.dart';
import '../widgets/product_details_comment_section/product_details_screen_comments_section.dart';
import '../widgets/product_details_screen_header_info.dart';
import '../widgets/product_details_screen_hero.dart';
import '../widgets/product_details_screen_message_composer.dart';
import '../widgets/product_details_screen_tabs.dart';
import '../widgets/product_details_screen_tabs_switcher.dart';
import '../../../../src/application/router/app_routes.dart';
import '../../../../src/core/shared_widgets/app_error_widget.dart';
import '../../../../src/core/shared_widgets/app_loader.dart';
import '../../../../src/core/utils/functions/helper_methods.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../src/resourses/font_manager/app_text_style.dart';

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
    final isAuth = ref.watch(isAuthenticatedProvider).value ?? false;

    final controller = ref.watch(
      productControllerProvider
          .select((val) => val.value?.productDetailsModel ?? AsyncLoading()),
    );

    ref.listen(
        productControllerProvider
            .select((val) => val.value?.productDetailsModel), (previous, next) {
      if (next is AsyncData) {
        if (isAuth) {
          ref
              .read(productControllerProvider.notifier)
              .updatePostViews(next?.value?.name ?? 'id');
        }
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

        appBar: AppBar(
          centerTitle: true,
          surfaceTintColor: Colors.transparent,
          title: Text(
            'product_details_screen'.tr(),
            style: AppTextStyle.rubikSemiBold20.copyWith(
              color: AppColors.primary,
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              if (context.canPop()) {
                context.pop();
              } else {
                context.goNamed(AppRoutes.mainScreen);
              }
            },
            child: Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(100),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.1),
                //     blurRadius: 1,
                //     offset: const Offset(0, 2),
                //   ),
                // ]
              ),
              child:
                  Icon(Icons.arrow_back_ios_rounded, color: AppColors.primary),
            ),
          ),
          actions: [
            if (controller.value != null)
              ProductDetailsScreenIconCircleButton(
                icon: Assets.icons.starIc,
                productDetailsModel: controller.value!,
              ).symmetricPadding(horizontal: 20),
          ],
        ),
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
