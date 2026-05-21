import '../datasource/comment_remote_data_source.dart';
import '../../domain/model/create_comment/create_comment_model.dart';
import '../../domain/model/update_comment/update_comment_model.dart';
import '../../../../src/infrastructure/api/response/api_response.dart';
import '../../../../src/infrastructure/network/exception/dio_exceptions.dart';
import '../../../../src/infrastructure/network/services/dio_client.dart';
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

    if ((response.status ?? 0) <= 201) {
      return response;
    }

    throw AppException(response.message);
  }

  Future<ApiResponse> updateComment(UpdateCommentModel comment) async {
    final response = await _remoteDataSource.updateComment(comment);

    if (response.status! <= 201) {
      return response;
    }

    throw AppException(response.message);
  }

  Future<ApiResponse> deleteComment(String commentId) async {
    final response = await _remoteDataSource.deleteComment(commentId);

    if (response.status! <= 201) {
      return response;
    }

    throw AppException(response.message);
  }
}
