import 'package:flutter/material.dart';
import '../../../product/domain/model/get_posts_request/get_posts_request.dart';
import '../../../product/domain/model/product_details_model/product_details_model.dart';
import '../../../../src/infrastructure/api/endpoint/api_endpoints.dart';
import '../../../../src/infrastructure/api/response/api_response.dart';
import '../../../../src/infrastructure/network/services/network_service.dart';

class FilterRemoteDataSource {
  final NetworkService _networkService;

  FilterRemoteDataSource(this._networkService);

  Future<ApiResponse<List<ProductDetailsModel>>> getProductsByFilter(
      GetPostsRequest request,
      int page,
      String country,
      String? area,
      String? city) async {
    try {
      final updatedRequest = request.copyWith(
        attributes: request.attributes
            ?.where((attr) =>
                attr.title != 'City' &&
                attr.title != 'المدينة' &&
                attr.title != 'Area' &&
                attr.title != 'المنطقة')
            .toList(),
      );
      final requestData = updatedRequest.toJson();
      requestData.removeWhere((k, v) => v == null);
      final response = await _networkService.get(ApiEndPoints.productsByFilter,
          // data: {...request.toJson(), 'page': page, 'limit': 4});
          data: {
            ...requestData,
            'page': page,
            'limit': 6,
            if (country.isNotEmpty) 'country': country,
            if (area != null && area.isNotEmpty) 'area': area,
            if (city != null && city.isNotEmpty) 'city': city,
          });

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Failed to load getProductsByFilter');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => (json as List)
            .map((item) =>
                ProductDetailsModel.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } catch (e) {
      debugPrint('Error in getProductsByFilter: $e');
      rethrow;
    }
  }
}
