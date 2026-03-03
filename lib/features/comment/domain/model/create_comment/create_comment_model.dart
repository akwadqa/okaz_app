import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_comment_model.freezed.dart';
part 'create_comment_model.g.dart';

@freezed
abstract class CreateCommentModel with _$CreateCommentModel {
  const factory CreateCommentModel({
    @JsonKey(name: 'post_id') String? postId,
    String? content,
    @JsonKey(name: 'parent_comment') String? parentComment,
  }) = _CreateCommentModel;

  factory CreateCommentModel.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentModelFromJson(json);
}