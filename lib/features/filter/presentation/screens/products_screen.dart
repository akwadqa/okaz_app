import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/filter/presentation/controller/filter_controller.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/product_screen_filter_item.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/product_screen_search_type.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_filters.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_filters_button.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_heading.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_product_item.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_products_grid.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_special_item.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:sizer/sizer.dart';

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

class _ProductsScreenContent extends StatelessWidget {
  const _ProductsScreenContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductsScreenHeading(),
        Divider(height: 24, color: AppColors.dividerColor),
        ProductsScreenSearchType(),
        20.verticalSpace,
        ProductsScreenFilters(),
        Divider(height: 24, color: AppColors.dividerColor),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: ProductsScreenSpecialItem()),
              SliverToBoxAdapter(child: 22.verticalSpace),
              ProductsScreenProductsGrid(),
              SliverToBoxAdapter(child: 20.verticalSpace),
            ],
          ),
        ),
      ],
    );
  }
}
