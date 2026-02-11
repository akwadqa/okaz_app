
import 'package:flutter/material.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/product_screen_filter_item.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_filters_button.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';

class ProductsScreenFilters extends StatelessWidget {
  const ProductsScreenFilters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      width: double.infinity,
      child: ListView.separated(
        separatorBuilder: (context, index) => 8.horizontalSpace,
        padding: EdgeInsets.symmetric(horizontal: 21),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return ProductsScreenFiltersButton();
          }
          return ProductScreenFilterItem(index: index);
        },
        itemCount: 7,
      ),
    );
  }
}

