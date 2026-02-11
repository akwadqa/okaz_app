import 'package:flutter/material.dart';
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

  Future<ApiResponse> getProductDetails(String productId) async {
    try {
      final response = await _networkService.get(
        ApiEndPoints.productDetails,
        queryParameters: {},
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to load data');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => {},
      );
    } catch (e) {
      debugPrint('Error in getData: e');
      rethrow;
    }
  }
}
