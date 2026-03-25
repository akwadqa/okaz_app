import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/update_post/data/datasource/update_post_remote_data_source.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../src/infrastructure/network/exception/dio_exceptions.dart';


part 'update_post_respository.g.dart';
@Riverpod(keepAlive: true)
UpdatePostRespository updatePostReposirory(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return UpdatePostRespository(UpdatePostRemoteDataSource(networkService));
}

class UpdatePostRespository {
  final UpdatePostRemoteDataSource _remoteDataSource;

  UpdatePostRespository(this._remoteDataSource);

  Future<ApiResponse> updatePost(ProductDetailsModel post) async {
    final response = await _remoteDataSource.updatePost(post);
  
    if (response.status == 200) {
      return response;
    }
  
    throw AppException(response.message);
  }

}