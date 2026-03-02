import 'package:okaz/features/comment/data/repository/comment_repository.dart';
import 'package:okaz/features/comment/domain/model/create_comment_model.dart';
import 'package:okaz/features/comment/presentation/controller/comment_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'comment_controller.g.dart';

@riverpod
class CommentController extends _$CommentController {
  @override
  FutureOr<CommentState> build() {
    return CommentState.init();
  }

  Future<void> deletePost(CreateCommentModel comment) async {
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
        state.value!.copyWith(createComment: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(createComment: AsyncError(e, st)),
      );
      return;
    }
  }
}
