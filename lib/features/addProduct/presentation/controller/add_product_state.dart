// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:okaz/features/addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';

class AddProductState extends Equatable {
  final int step;

  // Step 1
  final String? category;
  final SubCategoryModel? subCategory;
  // Step 2
  final String? adType;
  final String? condition;
  final String? mainSubCategoryType;
  final String? city;

  // Step 3 (dynamic specs)
  final Map<String, dynamic> specs;
final List<SubcategoryAttributeModel> attributes;

  // Step 4
  final List<String> images;
  final String? titleAr;
  final String? descAr;
  final String? titleEn;
  final String? descEn;
  final double? price;
  final bool isFeatured;
  final LatLng? latLng;

  const AddProductState({
    required this.step,
    this.category,
    this.condition,
    this.subCategory,
    this.adType,
    this.mainSubCategoryType,
    this.city,
    required this.specs,
    required this.images,
    this.titleAr,
    this.descAr,
    this.titleEn,
    this.descEn,
    this.price,
    required this.isFeatured, required this.attributes,  this.latLng,
  });

  /// Initial state
  factory AddProductState.init() {
    return  AddProductState(
      step: 1,
      specs: {},
      images: [],
      attributes: [],
      // latLng:LatLng(25.2854, 51.5310),
      isFeatured: false,
    );
  }

  /// FULL copyWith (nothing missing)
  AddProductState copyWith({
    int? step,
    String? category,
    SubCategoryModel? subCategory,
    String? adType,
    String? condition,
    String? mainSubCategoryType,
    String? city,
    Map<String, dynamic>? specs,
    List<SubcategoryAttributeModel>? attributes,
    List<String>? images,
    String? titleAr,
    String? descAr,
    String? titleEn,
    String? descEn,
    double? price,
    bool? isFeatured,
    LatLng? latLng,
  }) {
    return AddProductState(
      step: step ?? this.step,
      category: category ?? this.category,
      subCategory: subCategory ?? this.subCategory,
      adType: adType ?? this.adType,
      condition: condition ?? this.condition,
      mainSubCategoryType: mainSubCategoryType ?? this.mainSubCategoryType,
      city: city ?? this.city,
      specs: specs ?? this.specs,
      attributes: attributes ?? this.attributes,
      images: images ?? this.images,
      titleAr: titleAr ?? this.titleAr,
      descAr: descAr ?? this.descAr,
      titleEn: titleEn ?? this.titleEn,
      descEn: descEn ?? this.descEn,
      price: price ?? this.price,
      isFeatured: isFeatured ?? this.isFeatured,
      latLng: latLng ?? this.latLng,
    );
  }

  /// VERY IMPORTANT: include EVERYTHING
  @override
  List<Object?> get props => [
        step,
        category,
        condition,
        subCategory,
        adType,
        city,
        specs,
        images,
        titleAr,
        descAr,
        titleEn,
        descEn,
        price,
        isFeatured,
        mainSubCategoryType,
        latLng,
      ];
}
