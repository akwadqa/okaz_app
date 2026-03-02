import 'package:flutter/material.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/network_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:okaz/src/infrastructure/network/services/network_service.dart';

class ProductRemoteDataSource {
  final NetworkService _networkService;

  ProductRemoteDataSource(this._networkService);

  Future<ApiResponse> addProductToFavorite(String productId) async {
    try {
      final response = await _networkService.post(
        ApiEndPoints.addProductToFavorite,
        // data: data,
        queryParameters: {},
      );

      if (response.data == null || response.statusCode != 200) {
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

  Future<ApiResponse<String>> deletePost(
    String productId,
  ) async {
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
}
