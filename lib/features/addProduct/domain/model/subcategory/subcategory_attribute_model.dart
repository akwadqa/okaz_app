import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory_attribute_model.freezed.dart';
part 'subcategory_attribute_model.g.dart';

@freezed
abstract class SubcategoryAttributeModel with _$SubcategoryAttributeModel {
  const factory SubcategoryAttributeModel({
    @JsonKey(name: 'attribute') required String attributeId,
    required String title,
    @JsonKey(name: 'data_type') required String dataType,
    @JsonKey(name: 'is_main_filter') required int isMainFilter,
    @JsonKey(name: 'is_filterable') required int isFilterable,
    @Default([]) List<String> values,
  }) = _SubcategoryAttributeModel;

  factory SubcategoryAttributeModel.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryAttributeModelFromJson(json);
}