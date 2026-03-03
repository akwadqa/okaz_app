// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/foundation.dart';

class AddPostParams {
  final String title;
  final String description;
  final String subcategory;
  final String postType;
  final String city;
  final String price;
  final String attributes; // JSON string
  final List<File> images;
  final String status;
  final String condition;
final int isFeatured;
  AddPostParams({
    required this.title,
    required this.description,
    required this.subcategory,
    required this.postType,
    required this.city,
    required this.price,
    required this.attributes,
    required this.images,
    required this.status,
    required this.condition, required this.isFeatured,
  });

  AddPostParams copyWith({
    String? title,
    String? description,
    String? subcategory,
    String? postType,
    String? city,
    String? price,
    String? attributes,
    List<File>? images,
    String? status,
    String? condition,
    int? isFeatured,
  }) {
    return AddPostParams(
      title: title ?? this.title,
      description: description ?? this.description,
      subcategory: subcategory ?? this.subcategory,
      postType: postType ?? this.postType,
      city: city ?? this.city,
      price: price ?? this.price,
      attributes: attributes ?? this.attributes,
      images: images ?? this.images,
      status: status ?? this.status,
      condition: condition ?? this.condition,
      isFeatured: isFeatured ?? this.isFeatured,
    );
  }

  @override
  bool operator ==(covariant AddPostParams other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.description == description &&
      other.subcategory == subcategory &&
      other.postType == postType &&
      other.city == city &&
      other.price == price &&
      other.attributes == attributes &&
      listEquals(other.images, images) &&
      other.status == status &&
      other.condition == condition &&
      other.isFeatured == isFeatured;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      description.hashCode ^
      subcategory.hashCode ^
      postType.hashCode ^
      city.hashCode ^
      price.hashCode ^
      attributes.hashCode ^
      images.hashCode ^
      status.hashCode ^
      condition.hashCode ^
      isFeatured.hashCode;
  }
}
