import 'package:okaz/src/logger/failure/exceptions/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../src/infrastructure/network/services/dio_client.dart';
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

Future<void> submitData(params) async {
  final response = await _remoteDataSource.createPost(params);

  if (response.status == 200) {
    return response.data!;
  }

  throw AppException(message:  response.message);
}
}