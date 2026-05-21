import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import '../../controller/filter_controller.dart';
import 'product_screen_filter_item.dart';
import 'products_screen_filters_button.dart';
import '../../../../../src/core/shared_widgets/app_loader.dart';
import '../../../../../src/core/utils/extenssions/int_extenssion.dart';

class ProductsScreenFilters extends ConsumerStatefulWidget {
  const ProductsScreenFilters({
    super.key,
  });

  @override
  ConsumerState<ProductsScreenFilters> createState() =>
      _ProductsScreenFiltersState();
}

class _ProductsScreenFiltersState extends ConsumerState<ProductsScreenFilters> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(filterControllerProvider.notifier).getAttributes();
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(filterControllerProvider
        .select((value) => value.value!.subCategoryAttributes));
    return SizedBox(
        height: 34,
        width: double.infinity,
        child: controller!.when(
            data: (data) => _buildFilterItems(data
                .where((attr) => attr.values.isNotEmpty)
                // .where((attr) =>
                //     attr.values.isNotEmpty && attr.attributeId != 'City')
                .toList()),
            error: (e, st) => const SizedBox(),
            loading: () => const AppLoader())

        // _buildFilterItems(),
        );
  }

  ListView _buildFilterItems(List<SubcategoryAttributeModel> attributes) {
    return ListView.separated(
      separatorBuilder: (context, index) => 8.horizontalSpace,
      padding: EdgeInsets.symmetric(horizontal: 21),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (index == 0) {
          return ProductsScreenFiltersButton();
        }
        return ProductScreenFilterItem(
            subcategoryAttributeModel: attributes[index - 1]);
      },
      itemCount: attributes.length + 1,
    );
  }
}
