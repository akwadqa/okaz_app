import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_comment_model.freezed.dart';
part 'update_comment_model.g.dart';

@freezed
abstract class UpdateCommentModel with _$UpdateCommentModel {
  const factory UpdateCommentModel({
    @JsonKey(name: 'comment_id') String? commentId,
    @JsonKey(name: 'updated_content') String? updatedContent,
  }) = _UpdateCommentModel;

  factory UpdateCommentModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateCommentModelFromJson(json);
}
