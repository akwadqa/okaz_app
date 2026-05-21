
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/products_screen/product_screen_search_type.dart';
import '../widgets/products_screen/products_screen_filters.dart';
import '../widgets/products_screen/products_screen_heading.dart';
import '../widgets/products_screen/products_screen_products_grid.dart';
import '../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: _ProductsScreenContent(),
    );
  }
}

class _ProductsScreenContent extends ConsumerWidget {
  const _ProductsScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ProductsScreenHeading(),
        Divider(height: 24, color: AppColors.dividerColor),
        ProductsScreenSearchType(),
        20.verticalSpace,
        ProductsScreenFilters(),
        Divider(height: 24, color: AppColors.dividerColor),
        Expanded(
            child: ProductsScreenProductsGrid())
        // Expanded(
        //   child: AppPaginationWidget(
        //     enableLoadingOnScrollStart: true,
        //     onLoading: (page) => ref
        //         .read(filterControllerProvider.notifier)
        //         .onLoadMoreProducts(),
        //     child: CustomScrollView(
        //       slivers: [
        //         SliverToBoxAdapter(child: ProductsScreenSpecialItem()),
        //         SliverToBoxAdapter(child: 22.verticalSpace),
        //         ProductsScreenProductsGrid(),
        //         SliverToBoxAdapter(child: 20.verticalSpace),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
