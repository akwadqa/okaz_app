// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateCommentModel _$UpdateCommentModelFromJson(Map<String, dynamic> json) =>
    _UpdateCommentModel(
      commentId: json['comment_id'] as String?,
      updatedContent: json['updated_content'] as String?,
    );

Map<String, dynamic> _$UpdateCommentModelToJson(_UpdateCommentModel instance) =>
    <String, dynamic>{
      'comment_id': instance.commentId,
      'updated_content': instance.updatedContent,
    };
