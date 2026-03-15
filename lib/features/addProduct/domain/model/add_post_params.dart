// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddPostParams {
  final String title;
  final String titleAr;
  final String description;
  final String descriptionAr;
  final String subcategory;
  final String postType;
  final String city;
  final String price;
  final String attributes; // JSON string
  final List<File> images;
  final String condition;
final int isFeatured;
final LatLng latLng;
  AddPostParams({
    required this.title,
    required this.description,
    required this.subcategory,
    required this.postType,
    required this.city,
    required this.price,
    required this.attributes,
    required this.images,
    required this.condition, required this.isFeatured, required this.latLng, required this.titleAr, required this.descriptionAr,
  });

  AddPostParams copyWith({
    String? title,
    String? titleAr,
    String? description,
    String? descriptionAr,
    String? subcategory,
    String? postType,
    String? city,
    String? price,
    String? attributes,
    List<File>? images,
    String? condition,
    int? isFeatured,
    LatLng? latLng,
  }) {
    return AddPostParams(
      title: title ?? this.title,
      titleAr: titleAr ?? this.titleAr,
      description: description ?? this.description,
      descriptionAr: descriptionAr ?? this.descriptionAr,
      subcategory: subcategory ?? this.subcategory,
      postType: postType ?? this.postType,
      city: city ?? this.city,
      price: price ?? this.price,
      attributes: attributes ?? this.attributes,
      images: images ?? this.images,
      condition: condition ?? this.condition,
      isFeatured: isFeatured ?? this.isFeatured,
      latLng: latLng ?? this.latLng,
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
      condition.hashCode ^
      isFeatured.hashCode;
  }

  @override
  String toString() {
    return 'AddPostParams(title: $title, description: $description, subcategory: $subcategory, postType: $postType, city: $city, price: $price, attributes: $attributes, images: $images, condition: $condition, isFeatured: $isFeatured, latLng: $latLng)';
  }
}
