import 'package:okaz/features/comment/data/repository/comment_repository.dart';
import 'package:okaz/features/comment/domain/model/create_comment/create_comment_model.dart';
import 'package:okaz/features/comment/domain/model/update_comment/update_comment_model.dart';
import 'package:okaz/features/comment/presentation/controller/comment_state.dart';
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
        state.value!.copyWith(deleteComment: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(deleteComment: AsyncError(e, st)),
      );
      return;
    }
  }
}
