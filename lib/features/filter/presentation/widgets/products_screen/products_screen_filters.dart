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

    Future.delayed(const Duration(milliseconds: 350), () {
      if (mounted) {
        ref.read(filterControllerProvider.notifier).getAttributes();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(filterControllerProvider
        .select((value) => value.value?.subCategoryAttributes ?? AsyncLoading()));
    return SizedBox(
        height: 34,
        width: double.infinity,
        child: controller.when(
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
    final selectedCity = ref.watch(filterControllerProvider.select((val) =>
        val.value!.selectedAttributes['المدينة'] ??
        val.value!.selectedAttributes['City']));

    final List<Widget> filterWidgets = [
      const ProductsScreenFiltersButton(),
    ];

    for (var attr in attributes) {
      if (attr.title == 'Area' || attr.title == 'المنطقة') {
        if (selectedCity != null) {
          final filteredAreas = attr.values
              .where((area) => area.contains(selectedCity))
              .map((area) => area.replaceAll('$selectedCity - ', ''))
              .toList();

          if (filteredAreas.isNotEmpty) {
            filterWidgets.add(
              ProductScreenFilterItem(
                subcategoryAttributeModel: attr.copyWith(values: filteredAreas),
              ),
            );
          }
        }
      } else {
        filterWidgets.add(
          ProductScreenFilterItem(subcategoryAttributeModel: attr),
        );
      }
    }

    return ListView.separated(
      separatorBuilder: (context, index) => 8.horizontalSpace,
      padding: const EdgeInsets.symmetric(horizontal: 21),
      scrollDirection: Axis.horizontal,
      itemCount: filterWidgets.length,
      itemBuilder: (context, index) {
        return filterWidgets[index];
      },
    );
  }
}
