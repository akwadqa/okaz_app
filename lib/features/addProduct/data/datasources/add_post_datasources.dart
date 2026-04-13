import 'package:dio/dio.dart';
import 'package:okaz/features/addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/exception/dio_exceptions.dart';

import '../../../../src/infrastructure/network/services/network_service.dart';
import '../../../../src/logger/log_services/dev_logger.dart';
import '../../domain/model/add_post_params.dart';

class AddPostDatasources {
  final NetworkService _networkService;

  AddPostDatasources(this._networkService);

  Future<ApiResponse> createPost(AddPostParams params) async {
    try {
      final formData = FormData.fromMap({
        "title": params.title,
        "title_ar": params.titleAr,
        "is_featured" : params.isFeatured,
        "description": params.description,
        "description_ar": params.descriptionAr,
        "subcategory": params.subcategory,
        "post_type": params.postType,
        "city": params.city,
        "price": params.price,
        "attributes": params.attributes,
        "condition": params.condition,
        "images": await Future.wait(
          params.images.map(
            (file) => MultipartFile.fromFile(
              file.path,
              filename: file.path.split('/').last,
            ),
          ),
        ),
        "latitude":params.latLng.latitude,
        "longitude":params.latLng.longitude,
      });

      final response = await _networkService.post(
        ApiEndPoints.createPost,
        data: formData,
        // queryParameters: {},
      );

      if (response.data == null || response.statusCode != 201) {
        throw AppException('Request failed');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => Null,
      );
    } catch (e) {
      Dev.logLine('Error in submitData: e');
      rethrow;
    }
  }

  Future<ApiResponse<List<SubcategoryAttributeModel>>> getSubCategoryList(
      String subCategoryId) async {
    try {
      Dev.logLine(subCategoryId);

      final response = await _networkService.post(
        ApiEndPoints.subCategoryAttributes,
        data: {
          "subcategory_id": subCategoryId,
        },
      );

      return ApiResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) =>
                SubcategoryAttributeModel.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } catch (e) {
      throw ApiResponse.error(message: e.toString());
    }
  }
}
