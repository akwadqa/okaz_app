import 'package:freezed_annotation/freezed_annotation.dart';

part 'ocation_type_model.freezed.dart';
part 'ocation_type_model.g.dart';

@freezed
abstract class OcationTypeModel with _$OcationTypeModel {
  const factory OcationTypeModel({
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'name') required String title,
  }) = _OcationTypeModel;

  factory OcationTypeModel.fromJson(Map<String, dynamic> json) =>
      _$OcationTypeModelFromJson(json);
}