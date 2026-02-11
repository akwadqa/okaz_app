import 'package:flutter/material.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_product_item.dart';
import 'package:okaz/features/profile/domain/profile_item.dart';

class ProductsScreenProductsGrid extends StatelessWidget {
  const ProductsScreenProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      sliver: SliverGrid.builder(
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio:0.55,
        ),
        itemBuilder: (context, index) => ProductsScreenProductItem(item: null),
      ),
    );
  }
}
