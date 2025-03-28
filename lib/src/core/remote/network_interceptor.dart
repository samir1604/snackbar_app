import 'dart:io';
import 'package:dio/dio.dart';
import 'package:snackbar_ui/snackbar_ui.dart';

import '../../common/common.dart';
import '../../features/auth/auth.dart';
import '../core.dart';

final class NetworkInterceptor extends Interceptor {
  NetworkInterceptor(this._dio,
      this._settingsServices); //this._tokenServices, this._profileServices);

  final Dio _dio;

  //final TokenServices _tokenServices;
  //final ProfileServices _profileServices;
  final SettingsServices _settingsServices;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
//    final String token = await _tokenServices.getStorageAccessToken() ?? '';
    final String token = _settingsServices.accessToken; // await  _tokenServices.getStorageAccessToken() ?? '';

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
    AppLoggerUtils.error('Dio Error: ${err.message}', err.error);

    if (err.response?.statusCode == HttpStatus.unauthorized &&
        err.requestOptions.path != EndpointStrings.loginEndpoint) {
      try {
        //final storageToken = await _tokenServices.getStorageRefreshToken();
        //final User? user = await _profileServices.getStorageProfile();
        final refreshToken = _settingsServices.refreshToken;
        final User? user = _settingsServices.user;
        if (user == null || refreshToken.isEmpty) return handler.next(err);

        final (newAccessToken, newRefreshToken) = await _renewTokens(_dio, {
          'id': user.id.toString(),
          NetworkSettings.refreshTokenKey: refreshToken,
        });

        _settingsServices.saveTokens(newAccessToken, newRefreshToken);
        //await _tokenServices.saveTokensToStorage(accessToken, refreshToken);

        err.requestOptions.headers[NetworkSettings.authorizationKey] =
            'Bearer $newAccessToken';

        return handler.resolve(await _dio.fetch(err.requestOptions));
      } on DioException catch (e) {
        AppLoggerUtils.error('Refresh Token Exception: ${e.message}', e.error);

        if (e.response?.statusCode == HttpStatusCode.invalidToken) {
          //await _tokenServices.clearStorageTokens();
          _settingsServices.clearSettings();
          err.response?.statusCode == HttpStatusCode.invalidToken;
          return handler.next(err);
        }
        return handler.next(err);
      }
    }
    return handler.next(err);
  }

  Future<(String, String)> _renewTokens(
      Dio dio, Map<String, dynamic> data) async {
    final response = await _dio.post<Map<String, dynamic>>(
        EndpointStrings.refreshTokenEndpoint,
        data: data);

    if (response.statusCode == HttpStatus.ok) {
      final result = RefreshTokenModel.fromJson(response.data ?? {});
      return (result.accessToken, result.refreshToken);
    } else {
      throw DioException(
          requestOptions: response.requestOptions, response: response);
    }

    /*
    final response = await _tokenServices.getRefreshToken(
      id.toString(),
      token,
    );

    return (response.accessToken, response.accessToken);

     */
  }
}
