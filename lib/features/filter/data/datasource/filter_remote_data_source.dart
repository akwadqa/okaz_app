
import 'package:flutter/material.dart';
import 'package:okaz/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/network_service.dart';
class FilterRemoteDataSource {
  final NetworkService _networkService;

  FilterRemoteDataSource(this._networkService);

  Future<ApiResponse> getProductsByFilter() async {
    try {
      final response = await _networkService.get(
        ApiEndPoints.productsByFilter,
        queryParameters: {},
      );
  
      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to load data');
      }
  
      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) =>{},
      );
    } catch (e) {
      debugPrint('Error in getData: e');
      rethrow;
    }
  }



}