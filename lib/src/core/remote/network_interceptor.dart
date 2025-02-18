import 'dart:io';
import 'package:dio/dio.dart';

import '../../common/common.dart';
import '../../features/auth/auth.dart';
import '../core.dart';

final class NetworkInterceptor extends Interceptor {
  NetworkInterceptor(this._dio, this._tokenServices, this._profileServices);

  final Dio _dio;
  final TokenServices _tokenServices;
  final ProfileServices _profileServices;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final String token = await _tokenServices.getStorageAccessToken() ?? '';

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
      try {
        final token = await _tokenServices.getStorageRefreshToken();
        final User? user = await _profileServices.getStorageProfile();
        if (user == null || token == null) return handler.next(err);

        final (accessToken, refreshToken) =
            await _getRefreshToken(user.id, token);

        await _tokenServices.saveTokensToStorage(accessToken, refreshToken);

        err.requestOptions.headers[NetworkSettings.authorizationKey] =
            'Bearer $accessToken';

        return handler.resolve(await _dio.fetch(err.requestOptions));
      } on DioException catch (e) {
        if (e.response?.statusCode == HttpStatusCode.invalidToken) {
          await _tokenServices.clearStorageTokens();
          err.response?.statusCode == HttpStatusCode.invalidToken;
          return handler.next(err);
        }
        return handler.next(err);
      }
    }
    return handler.next(err);
  }

  Future<(String token, String refrehToken)> _getRefreshToken(
    int id,
    String token,
  ) async {
    final response = await _tokenServices.getRefreshToken(
      id.toString(),
      token,
    );

    return (response.accessToken, response.accessToken);
  }
}
