// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:okaz/features/addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';

class FilterState {
  final AsyncValue<List<SubcategoryAttributeModel>>? subCategoryAttributes;
  final AsyncValue<List<ProductDetailsModel>?> posts;
  final Map<String, dynamic> selectedAttributes;
  final Map<String, dynamic> tempAttributes;
  FilterState({
    required this.subCategoryAttributes,
    required this.posts,
    required this.selectedAttributes,
    required this.tempAttributes,
  });
  factory FilterState.init() {
    return FilterState(
        posts: AsyncLoading(),
        tempAttributes: {},
        subCategoryAttributes: AsyncLoading(),
        selectedAttributes: {});
  }

  FilterState copyWith({
    AsyncValue<List<SubcategoryAttributeModel>>? subCategoryAttributes,
    AsyncValue<List<ProductDetailsModel>?>? posts,
    Map<String, dynamic>? selectedAttributes,
    Map<String, dynamic>? tempAttributes,
  }) {
    return FilterState(
      subCategoryAttributes: subCategoryAttributes ?? this.subCategoryAttributes,
      posts: posts ?? this.posts,
      selectedAttributes: selectedAttributes ?? this.selectedAttributes,
      tempAttributes: tempAttributes ?? this.tempAttributes,
    );
  }
}
