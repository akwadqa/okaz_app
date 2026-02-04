import 'package:okaz/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:okaz/src/infrastructure/api/response/api_response.dart';
import 'package:okaz/src/infrastructure/network/services/network_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:okaz/src/infrastructure/network/services/network_service.dart';
class ProductRemoteDataSource {
  final NetworkService _networkService;

  ProductRemoteDataSource(this._networkService);

}