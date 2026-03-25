import 'dart:async';

import 'package:flutter_riverpod/legacy.dart';
import 'package:okaz/features/addProduct/data/repositories/add_post_repositories.dart';
import 'package:okaz/features/addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import 'package:okaz/features/filter/data/repo/filter_repository.dart';
import 'package:okaz/features/filter/presentation/controller/filter_state.dart';
import 'package:okaz/features/filter/presentation/controller/sub_category_controller.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/features/product/domain/model/get_posts_request/get_posts_request.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_controller.g.dart';

@riverpod
class FilterController extends _$FilterController {
  @override
  FutureOr<FilterState> build() {
    return FilterState.init();
  }

  void selectFilter(
      SubcategoryAttributeModel subcategoryAttributeModel, dynamic filter) {
    final currentFilters = state.value!.selectedAttributes;
    if (currentFilters[subcategoryAttributeModel.title] == filter) {
      if (subcategoryAttributeModel.isMainFilter != 0)
        ref.read(selectedSubCategoryProvider.notifier).state = ' ';
      state = AsyncData(
        state.value!.copyWith(
            selectedAttributes: Map.from(
                currentFilters..remove(subcategoryAttributeModel.title))),
      );
    } else {
      state = AsyncData(
        state.value!.copyWith(
            selectedAttributes: Map.from(currentFilters
              ..addAll({subcategoryAttributeModel.title: filter}))),
      );
    }
  }

  Future<List<SubcategoryAttributeModel>?> getAttributes() async {
    try {
      final subCategory = ref.watch(mainSubcategory);

      state = AsyncData(
        state.value!.copyWith(subCategoryAttributes: AsyncLoading()),
      );
      final repo = ref.read(addPostRepositoriesProvider);
      final response = await repo.getSubCategoryList(
          subCategoryId: subCategory.name ?? 'id');

      state = AsyncData(
        state.value!.copyWith(
          subCategoryAttributes: AsyncData(response),
        ),
      );

      final attribute = response.firstWhere((e) => e.isMainFilter == 1);

      final title = ref.read(selectedSubCategoryProvider);

      selectFilter(attribute, title);
      getPosts();
      return response;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(subCategoryAttributes: AsyncError(e, st)),
      );
      return null;
    }
  }

  String search = '';

  Future<List<ProductDetailsModel>?> getPosts() async {
    try {
      final attributes = <RequestAttribute>[];

      state.value!.selectedAttributes.forEach((k, v) {
        attributes.add(RequestAttribute(title: k, value: v.toString()));
      });

      final subCategory = ref.watch(mainSubcategory);

      final postType = ref.read(searchTypeProvider) == 0 ? 'Sale' : 'Wanted';

      final request = GetPostsRequest(
          titleAr: search,
          postType: postType,
          attributes: attributes,
          subcategories: [subCategory.name ?? '']);

      state = AsyncData(
        state.value!.copyWith(posts: AsyncLoading()),
      );
      final repo = ref.read(filterRepositoryProvider);
      final response = await repo.getProductsByFilter(request);

      state = AsyncData(
        state.value!.copyWith(
          posts: AsyncData(response),
        ),
      );
      return response;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(posts: AsyncError(e, st)),
      );
      return null;
    }
  }

  void getAttributesIntoTemp() {
    final currentAttr = state.value!.selectedAttributes;
    state = AsyncData(
      state.value!.copyWith(
        tempAttributes: Map.from(currentAttr),
      ),
    );
  }

  void applyTempAttributes() {
    final currentAttr = state.value!.tempAttributes;
    final currentTitle = ref.read(selectedSubCategoryProvider);
    ref.read(selectedSubCategoryProvider.notifier).state =
        tempAttribute ?? currentTitle;
    state = AsyncData(
      state.value!.copyWith(
        selectedAttributes: Map.from(currentAttr),
      ),
    );
  }

  // void clearTempAttributes() {
  //   final mainFilter = ref.read(selectedSubCategoryProvider.notifier).state;
  //   final tempWithMainFilter = state.value!.tempAttributes
  //     ..removeWhere((k, v) {
  //       return k == mainFilter;
  //     });
  //   state = AsyncData(
  //     state.value!.copyWith(
  //       tempAttributes: Map.from(tempWithMainFilter),
  //     ),
  //   );
  // }

  void clearTempAttributes() {
    final currentState = state.value;
    if (currentState == null) return;

    final mainFilter = ref.read(mainSubcategory).mainAttributes?.first.title;
    ref.read(selectedSubCategoryProvider.notifier).state = '';

    final mainFilterValue = currentState.tempAttributes[mainFilter];
    final Map<String, dynamic> newTempAttributes = {};

    // if (mainFilterValue != null) {
    //   newTempAttributes[mainFilter!] = mainFilterValue;
    // }

    // 4. تحديث الحالة
    state = AsyncData(
      currentState.copyWith(tempAttributes: newTempAttributes),
    );
  }

  String? tempAttribute;

  void selectFilterIntoTemp(
      SubcategoryAttributeModel subcategoryAttributeModel, dynamic filter) {
    final currentFilters = state.value!.tempAttributes;
    if (currentFilters[subcategoryAttributeModel.title] == filter) {
      if (subcategoryAttributeModel.isMainFilter != 0) {
        tempAttribute = filter;
        return;
      }
      state = AsyncData(
        state.value!.copyWith(
            tempAttributes: Map.from(
                currentFilters..remove(subcategoryAttributeModel.title))),
      );
    } else {
      if (subcategoryAttributeModel.isMainFilter != 0) {
        tempAttribute = filter;
      }
      state = AsyncData(
        state.value!.copyWith(
            tempAttributes: Map.from(currentFilters
              ..addAll({subcategoryAttributeModel.title: filter}))),
      );
    }
  }
}

final searchTypeProvider = StateProvider<int>((ref) {
  return 0;
});
