import 'package:okaz/features/addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/logger/failure/exceptions/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../src/infrastructure/network/services/dio_client.dart';
import '../../domain/model/add_post_params.dart';
import '../datasources/add_post_datasources.dart';
part 'add_post_repositories.g.dart';

@Riverpod(keepAlive: true)
AddPostRepositories addPostRepositories(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return AddPostRepositories(AddPostDatasources(networkService));
}
class AddPostRepositories {
  final AddPostDatasources _remoteDataSource;

  AddPostRepositories(this._remoteDataSource);

Future<void> createPost(AddPostParams params) async {
  final response = await _remoteDataSource.createPost(params);

  if (response.hasFailed) {
  throw AppException(message:  response.message);

    // return response.data!;
  }

}
Future<List<SubcategoryAttributeModel>> getSubCategoryList({required String subCategoryId , required String country}) async {
  try {
    final result = await _remoteDataSource.getSubCategoryList(subCategoryId , country);

    if (result.hasFailed) {
      throw AppException(message:  result.message ?? 'Failed to fetch data');
    }

    return result.data ?? [];
  } catch (e) {
    throw AppException(message:  'Failed to fetch SubCategoryModel: $e');
  }
}
}