import 'package:dio/dio.dart';

import '../secure_storage/secure_storage_keys.dart';
import '../services/secure_storage.dart';
import 'network_config.dart';

final class NetworkInterceptor extends Interceptor {
  NetworkInterceptor(this._secureStorage);

  final SecureStorage _secureStorage;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final String token =
        await _secureStorage.read(SecureStorageKeys.accessTokenKey) ?? '';

    options.headers.addAll(NetworkConfig.requestOptions);
    options.headers[NetworkConfig.authorizationKey] = 'Bearer $token';

    super.onRequest(options, handler);
  }
}
