// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentState {
  final AsyncValue? createComment;

  CommentState({this.createComment});

  factory CommentState.init() => CommentState(createComment: null);

  CommentState copyWith({AsyncValue? createComment}) {
    return CommentState(createComment: createComment ?? this.createComment);
  }
}
