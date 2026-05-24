import '../../data/repository/comment_repository.dart';
import '../../domain/model/create_comment/create_comment_model.dart';
import '../../domain/model/update_comment/update_comment_model.dart';
import 'comment_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'comment_controller.g.dart';

@riverpod
class CommentController extends _$CommentController {
  @override
  FutureOr<CommentState> build() {
    return CommentState.init();
  }

  Future<void> createComment(CreateCommentModel comment) async {
    try {
      state = AsyncData(state.value!.copyWith(createComment: AsyncLoading()));
      final repo = ref.read(commentRepositoryProvider);
      final response = await repo.createComment(comment);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            createComment: AsyncError(
              response.message ?? 'Something went wrong',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return;
      }

      state = AsyncData(
        state.value!.copyWith(createComment: AsyncData(response)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(createComment: AsyncError(e, st)),
      );
      return;
    }
  }

  Future<void> updateComment(UpdateCommentModel comment) async {
    try {
      state = AsyncData(state.value!.copyWith(updateComment: AsyncLoading()));
      final repo = ref.read(commentRepositoryProvider);
      final response = await repo.updateComment(comment);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            updateComment: AsyncError(
              response.message ?? 'Something went wrong',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return;
      }

      state = AsyncData(
        state.value!.copyWith(updateComment: AsyncData(response)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(updateComment: AsyncError(e, st)),
      );
      return;
    }
  }

  Future<void> deleteComment(String commentId) async {
    try {
      state = AsyncData(state.value!.copyWith(deleteComment: AsyncLoading()));
      final repo = ref.read(commentRepositoryProvider);
      final response = await repo.deleteComment(commentId);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            deleteComment: AsyncError(
              response.message ?? 'Something went wrong',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return;
      }

      state = AsyncData(
        state.value!.copyWith(deleteComment: AsyncData(response)),
      );
      return;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(deleteComment: AsyncError(e, st)),
      );
      return;
    }
  }
}
