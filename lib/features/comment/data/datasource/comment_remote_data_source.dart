import 'package:okaz/features/comment/domain/model/create_comment/create_comment_model.dart';
import 'package:okaz/features/comment/domain/model/update_comment/update_comment_model.dart';
import 'package:okaz/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/network_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';

class CommentRemoteDataSource {
  final NetworkService _networkService;

  CommentRemoteDataSource(this._networkService);

  Future<ApiResponse> createComment(CreateCommentModel comment) async {
    try {
      final response = await _networkService.post(
        ApiEndPoints.createComment,
        data: comment.toJson(),
        queryParameters: {},
      );

      if (response.data == null || response.statusCode > 201) {
        throw Exception('Request failed');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) {},
      );
    } catch (e) {
      Dev.logLine('Error in submitData: e');
      rethrow;
    }
  }

  Future<ApiResponse> updateComment(UpdateCommentModel comment) async {
    try {
      final response = await _networkService.put(
        ApiEndPoints.updateComment,
        data: comment.toJson(),
        queryParameters: {},
      );

      if (response.data == null || response.statusCode > 201) {
        throw Exception('Request failed');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) {},
      );
    } catch (e) {
      Dev.logLine('Error in submitData: e');
      rethrow;
    }
  }

  Future<ApiResponse> deleteComment(String commentId) async {
    try {
      final data = {'comment_id': commentId};
      final response = await _networkService.delete(
        ApiEndPoints.deleteComment,
        data: data,
        queryParameters: {},
      );

      if (response.data == null || response.statusCode > 201) {
        throw Exception('Request failed');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) {},
      );
    } catch (e) {
      Dev.logLine('Error in submitData: e');
      rethrow;
    }
  }
}
