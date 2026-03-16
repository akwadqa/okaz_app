import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/profile/domain/model/post_model.dart';

extension PostModelMapper on PostModel {
  ProductDetailsModel toProductDetails() {
    return ProductDetailsModel(
      name: name,
      title: title,
      titleAr: titleAr??"",
      description: description,
      descriptionAr: descriptionAr??"",
      price: price,
      currency: currency,
      condition: condition,
      image: image,
      likes: 0,
      comments: 0,
    );
  }
}
extension PostModelListMapper on List<PostModel> {
  List<ProductDetailsModel> toProductDetailsList() {
    return map((e) => e.toProductDetails()).toList();
  }
}