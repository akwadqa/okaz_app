// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';

class UpdatePostState {
  final ProductDetailsModel? updatedPost;
  final AsyncValue<void>? updatePostData;

  UpdatePostState({required this.updatedPost, required this.updatePostData});

  factory UpdatePostState.init() =>
      UpdatePostState(updatedPost: ProductDetailsModel(), updatePostData: null);

  UpdatePostState copyWith({
    ProductDetailsModel? updatedPost,
    AsyncValue<void>? updatePostData,
  }) {
    return UpdatePostState(
      updatedPost: updatedPost ?? this.updatedPost,
      updatePostData: updatePostData ?? this.updatePostData,
    );
  }
}
