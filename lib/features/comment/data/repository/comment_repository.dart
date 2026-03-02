import 'package:okaz/features/comment/data/datasource/comment_remote_data_source.dart';
import 'package:okaz/features/comment/domain/model/create_comment_model.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/exception/dio_exceptions.dart';
import 'package:okaz/src/infrastructure/network/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_repository.g.dart';

@Riverpod(keepAlive: true)
CommentRepository commentRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return CommentRepository(CommentRemoteDataSource(networkService));
}

class CommentRepository {
  final CommentRemoteDataSource _remoteDataSource;

  CommentRepository(this._remoteDataSource);

  Future<ApiResponse> createComment(CreateCommentModel comment) async {
    final response = await _remoteDataSource.createComment(comment);

    if (response.status! > 201) {
      return response.data!;
    }

    throw AppException(response.message);
  }
}
