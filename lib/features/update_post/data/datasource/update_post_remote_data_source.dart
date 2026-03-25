import 'package:dio/dio.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/network_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';

class UpdatePostRemoteDataSource {
  final NetworkService _networkService;

  UpdatePostRemoteDataSource(this._networkService);

  Future<ApiResponse> updatePost(ProductDetailsModel post) async {
    try {
      final data = FormData.fromMap({
        'post_id': post.name,
        'title': post.title,
        'title_ar': post.titleAr,
        'description': post.description,
        'description_ar': post.descriptionAr,
        'price': post.price,
        'images': await Future.wait(post.images
                ?.where((image) => image.isFromDevice ?? false)
                .map((deviceImage) =>
                    MultipartFile.fromFile(deviceImage.image ?? '')) ??
            Iterable.empty())
      });
      final response = await _networkService.put(
        ApiEndPoints.updatePost,
        data: data,
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
}
