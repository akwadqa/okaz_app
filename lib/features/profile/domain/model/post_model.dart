import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';



@freezed
abstract class PostModel with _$PostModel {
    const factory PostModel({
        required String name,
        required String title,
      @JsonKey(name: "title_ar")  required String? titleAr,
        required String description,
     @JsonKey(name: "description_ar")   required String? descriptionAr,
        required double price,
        required String currency,
        required String condition,
        required int likes,
        required int comments,
        required String? image,
    }) = _PostModel;

    factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
}
