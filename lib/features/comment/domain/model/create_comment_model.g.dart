// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCommentModel _$CreateCommentModelFromJson(Map<String, dynamic> json) =>
    _CreateCommentModel(
      postId: json['post_id'] as String?,
      content: json['content'] as String?,
      parentComment: json['parent_comment'] as String?,
    );

Map<String, dynamic> _$CreateCommentModelToJson(_CreateCommentModel instance) =>
    <String, dynamic>{
      'post_id': instance.postId,
      'content': instance.content,
      'parent_comment': instance.parentComment,
    };
