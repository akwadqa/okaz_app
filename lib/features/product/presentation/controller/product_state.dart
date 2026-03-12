// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';

class ProductState {
  final AsyncValue<ProductDetailsModel>? productDetailsModel;
  final AsyncValue<String>? deletePost;
  final AsyncValue? sendReport;
  final bool? favoritePost;
  final bool? likePost;

  factory ProductState.init() => ProductState(
    productDetailsModel: AsyncLoading(),
    deletePost: AsyncLoading(),
    likePost: false,
  );

  ProductState({
    this.productDetailsModel,
    this.deletePost,
    this.favoritePost,
    this.sendReport,
    this.likePost,
  });

  ProductState copyWith({
    AsyncValue<ProductDetailsModel>? productDetailsModel,
    AsyncValue<String>? deletePost,
    AsyncValue? sendReport,
    bool? favoritePost,
    bool? likePost,
  }) {
    return ProductState(
      productDetailsModel: productDetailsModel ?? this.productDetailsModel,
      deletePost: deletePost ?? this.deletePost,
      sendReport: sendReport ?? this.sendReport,
      favoritePost: favoritePost ?? this.favoritePost,
      likePost: likePost ?? this.likePost,
    );
  }
}
