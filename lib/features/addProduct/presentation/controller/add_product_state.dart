import 'package:equatable/equatable.dart';

class AddProductState extends Equatable {
  final int step;

  // Step 1
  final String? category;
  final String? subCategory;

  // Step 2
  final String? adType;
  final String? city;

  // Step 3 (dynamic specs)
  final Map<String, dynamic> specs;

  // Step 4
  final List<String> images;
  final String? titleAr;
  final String? descAr;
  final String? titleEn;
  final String? descEn;
  final double? price;
  final bool isFeatured;

  const AddProductState({
    required this.step,
    this.category,
    this.subCategory,
    this.adType,
    this.city,
    required this.specs,
    required this.images,
    this.titleAr,
    this.descAr,
    this.titleEn,
    this.descEn,
    this.price,
    required this.isFeatured,
  });

  /// Initial state
  factory AddProductState.init() {
    return const AddProductState(
      step: 1,
      specs: {},
      images: [],
      isFeatured: false,
    );
  }

  /// FULL copyWith (nothing missing)
  AddProductState copyWith({
    int? step,
    String? category,
    String? subCategory,
    String? adType,
    String? city,
    Map<String, dynamic>? specs,
    List<String>? images,
    String? titleAr,
    String? descAr,
    String? titleEn,
    String? descEn,
    double? price,
    bool? isFeatured,
  }) {
    return AddProductState(
      step: step ?? this.step,
      category: category ?? this.category,
      subCategory: subCategory ?? this.subCategory,
      adType: adType ?? this.adType,
      city: city ?? this.city,
      specs: specs ?? this.specs,
      images: images ?? this.images,
      titleAr: titleAr ?? this.titleAr,
      descAr: descAr ?? this.descAr,
      titleEn: titleEn ?? this.titleEn,
      descEn: descEn ?? this.descEn,
      price: price ?? this.price,
      isFeatured: isFeatured ?? this.isFeatured,
    );
  }

  /// VERY IMPORTANT: include EVERYTHING
  @override
  List<Object?> get props => [
        step,
        category,
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
      ];
}
