// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentState {
  final AsyncValue? createComment;
  final AsyncValue? updateComment;
  final AsyncValue? deleteComment;

  CommentState({this.createComment, this.updateComment, this.deleteComment});

  factory CommentState.init() =>
      CommentState(createComment: null, updateComment: null);

  CommentState copyWith({
    AsyncValue? createComment,
    AsyncValue? updateComment,
    AsyncValue? deleteComment,
  }) {
    return CommentState(
      createComment: createComment ?? this.createComment,
      updateComment: updateComment ?? this.updateComment,
      deleteComment: deleteComment ?? this.deleteComment,
    );
  }
}
