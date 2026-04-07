import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/filter/presentation/controller/filter_controller.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_product_item.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/profile/domain/profile_item.dart';
import 'package:okaz/features/search/presentation/controller/search_controller.dart';
import 'package:okaz/features/search/presentation/screens/search_screen.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/core/shared_widgets/app_error_widget.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/core/shared_widgets/app_pagination_widget.dart';

class ProductsScreenProductsGrid extends ConsumerWidget {
  const ProductsScreenProductsGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.watch(filterControllerProvider.select((val) => val.value!.posts));

    return controller.when(
        data: (data) {
          if (data?.isEmpty ?? true) {
            return SearchSceeenEmptyContent();
          }
          return buildPostsGrid(data!, ref, false);
        },
        error: (e, st) => AppErrorWidget(),
        loading: () => AppLoader());
  }
}

Widget buildPostsGrid(
    List<ProductDetailsModel> posts, WidgetRef ref, bool isFromSearch) {
  return AppPaginationWidget(
    onLoading: (page) {
      if (isFromSearch) {
        return ref.read(searchControllerProvider.notifier).loadNextPage();
      } else {
        return ref.read(filterControllerProvider.notifier).onLoadMoreProducts();
      }
    },
    child: GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 22),
      itemCount: posts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.45,
      ),
      itemBuilder: (context, index) =>
          ProductsScreenProductItem(item: posts[index]),
    ),
  );
}
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:okaz/features/filter/presentation/controller/filter_controller.dart';
// import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_product_item.dart';
// import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
// import 'package:okaz/features/profile/domain/profile_item.dart';
// import 'package:okaz/gen/assets.gen.dart';
// import 'package:okaz/src/core/shared_widgets/app_error_widget.dart';
// import 'package:okaz/src/core/shared_widgets/app_loader.dart';

// class ProductsScreenProductsGrid extends ConsumerWidget {
//   const ProductsScreenProductsGrid({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final controller =
//         ref.watch(filterControllerProvider.select((val) => val.value!.posts));

//     return controller.when(
//         data: (data) {
//           if (data?.isEmpty ?? true) {
//             return SliverToBoxAdapter(
//               child: Center(
//                 child: Assets.images.emptySearchIm.image(),
//               ),
//             );
//           }
//           return _buildPostsGrid(data!);
//         },
//         error: (e, st) => SliverToBoxAdapter(
//               child: AppErrorWidget(),
//             ),
//         loading: () => SliverToBoxAdapter(child: AppLoader()));
//   }

//   SliverPadding _buildPostsGrid(List<ProductDetailsModel> posts) {
//     return SliverPadding(
//       padding: EdgeInsets.symmetric(horizontal: 22),
//       sliver: SliverGrid.builder(
//         itemCount: posts.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 16,
//           mainAxisSpacing: 16,
//           childAspectRatio: 0.45,
//         ),
//         itemBuilder: (context, index) =>
//             ProductsScreenProductItem(item: posts[index]),
//       ),
//     );
//   }
// }
