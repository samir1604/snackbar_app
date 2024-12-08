import 'dart:io';
import 'package:dio/dio.dart';

import '../../../common/constants/app_network_settings.dart';
import '../../services/token_services.dart';

final class NetworkInterceptor extends Interceptor {
  NetworkInterceptor(this._dio, this._tokenServices);

  final Dio _dio;
  final TokenServices _tokenServices;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final String token = await _tokenServices.getAccessToken() ?? '';

    options.headers.addAll(AppNetworkSettings.requestOptions);
    options.headers[AppNetworkSettings.authorizationKey] = 'Bearer $token';

    super.onRequest(options, handler);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      final token = await _tokenServices.getRefreshToken();

      try {
        final response = await _tokenServices.refreshToken(token);
        final accessToken = response.accessToken;
        final refreshToken = response.refreshToken;

        await _tokenServices.saveTokens(accessToken, refreshToken);
        err.requestOptions.headers[AppNetworkSettings.authorizationKey] =
            'Bearer $accessToken';

        return handler.resolve(await _dio.fetch(err.requestOptions));
      } on DioException catch (e) {
        if (e.response?.statusCode == AppNetworkSettings.invalidToken) {
          await _tokenServices.clearTokens();
          err.response?.statusCode == AppNetworkSettings.invalidToken;
          return handler.next(err);
        }
        return handler.next(err);
      }
    }
    return handler.next(err);
  }
}
