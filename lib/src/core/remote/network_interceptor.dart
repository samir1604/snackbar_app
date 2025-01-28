import 'dart:io';
import 'package:dio/dio.dart';

import '../../common/common.dart';
import '../core.dart';


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

    options.headers.addAll(NetworkSettings.requestOptions);
    if (token.isNotEmpty) {
      options.headers[NetworkSettings.authorizationKey] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  /*
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.requestOptions.path == AppApi.signInEndpoint &&
        response.statusCode == HttpStatus.ok) {
      final data =
          SignInResponse.fromJson(response.data as Map<String, dynamic>);
      if (data.accessToken.isNotEmpty && data.refreshToken.isNotEmpty) {
        await _tokenServices.saveTokens(data.accessToken, data.refreshToken);
      }
    }
    super.onResponse(response, handler);
  }
   */

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == HttpStatus.unauthorized &&
        err.requestOptions.path != EndpointStrings.loginEndpoint) {
      final token = await _tokenServices.getRefreshToken();

      try {
        final response = await _tokenServices.refreshToken(token);
        final accessToken = response.accessToken;
        final refreshToken = response.refreshToken;

        await _tokenServices.saveTokens(accessToken, refreshToken);
        err.requestOptions.headers[NetworkSettings.authorizationKey] =
            'Bearer $accessToken';

        return handler.resolve(await _dio.fetch(err.requestOptions));
      } on DioException catch (e) {
        if (e.response?.statusCode == NetworkSettings.invalidToken) {
          await _tokenServices.clearTokens();
          err.response?.statusCode == NetworkSettings.invalidToken;
          return handler.next(err);
        }
        return handler.next(err);
      }
    }
    return handler.next(err);
  }
}
