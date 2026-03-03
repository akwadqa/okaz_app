

import 'package:dio/dio.dart';
import 'package:okaz/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';

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
      "description": params.description,
      "subcategory": params.subcategory,
      "post_type": params.postType,
      "city": params.city,
      "price": params.price,
      "attributes": params.attributes,
      "status": params.status,
      "condition": params.condition,
      "images": await Future.wait(
        params.images.map(
          (file) => MultipartFile.fromFile(
            file.path,
            filename: file.path.split('/').last,
          ),
        ),
      ),
    });

      final response = await _networkService.post(
        ApiEndPoints.createPost,
        data: formData,
        // queryParameters: {},
      );
  
       if (response.data == null || response.statusCode != 200) {
      throw Exception('Request failed');
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

}