import 'package:flutter/material.dart';
import '../../domain/model/product_details_model/product_details_model.dart';
import '../../../../src/infrastructure/api/endpoint/api_endpoints.dart';
import '../../../../src/infrastructure/api/response/api_response.dart';
import '../../../../src/infrastructure/network/services/network_service.dart';
import '../../../../src/logger/log_services/dev_logger.dart';

class ProductRemoteDataSource {
  final NetworkService _networkService;

  ProductRemoteDataSource(this._networkService);

  // Future<ApiResponse> addProductToFavorite(String productId) async {
  //   try {
  //     final response = await _networkService.post(
  //       ApiEndPoints.addProductToFavorite,
  //       // data: data,
  //       queryParameters: {},
  //     );

  //     if (response.data == null || response.statusCode != 200) {
  //       throw Exception('Request failed');
  //     }

  //     return ApiResponse.fromJson(
  //       response.data as Map<String, dynamic>,
  //       (json) {},
  //     );
  //   } catch (e) {
  //     Dev.logLine('Error in submitData: e');
  //     rethrow;
  //   }
  // }

  Future<ApiResponse<ProductDetailsModel>> getProductDetails(
    String productId,
  ) async {
    try {
      final body = {'post_id': productId};
      final response = await _networkService.get(
        ApiEndPoints.productDetails,
        data: body,
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to load data');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => ProductDetailsModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      debugPrint('Error in getData: e');
      rethrow;
    }
  }

  Future<ApiResponse<String>> deletePost(String productId) async {
    try {
      final body = {'post_id': productId};
      final response = await _networkService.delete(
        ApiEndPoints.deletePost,
        data: body,
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to load data');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => (json as Map<String, dynamic>)['post_id'],
      );
    } catch (e) {
      debugPrint('Error in getData: e');
      rethrow;
    }
  }

  Future<ApiResponse<bool>> addPostToFavorite(String postId) async {
    try {
      final data = {'post_id': postId};
      final response = await _networkService.put(
        ApiEndPoints.addPostToFavorite,
        data: data,
        queryParameters: {},
      );

      if (response.data == null || response.statusCode > 201) {
        throw Exception('Request failed');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => (json as Map<String, dynamic>)['is_favorite'] as bool,
      );
    } catch (e) {
      Dev.logLine('Error in submitData: e');
      rethrow;
    }
  }

  Future<ApiResponse<bool>> likePost(String postId) async {
    try {
      final data = {'post_id': postId};
      final response = await _networkService.put(
        ApiEndPoints.likePost,
        data: data,
        queryParameters: {},
      );

      if (response.data == null || response.statusCode > 201) {
        throw Exception('Request failed');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => (json as Map<String, dynamic>)['is_liked'],
      );
    } catch (e) {
      Dev.logLine('Error in submitData: e');
      rethrow;
    }
  }

  Future<ApiResponse> updatePostViews(String postId) async {
    try {
      final data = {'post_id': postId};
      final response = await _networkService.put(
        ApiEndPoints.updatePostViews,
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

  Future<ApiResponse> sendReport(String postId, String title) async {
    try {
      final data = {'post_id': postId, 'reason': title};
      final response = await _networkService.put(
        ApiEndPoints.sendReport,
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
