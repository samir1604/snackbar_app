import 'dart:io';

import 'package:dio/dio.dart';

import '../../../common/constants/app_api.dart';
import '../../../common/constants/app_network_settings.dart';
import '../../../common/constants/app_secure_storage_keys.dart';
import '../../../common/dtos/refresh_tokens/refresh_token_response.dart';
import '../../services/secure_storage.dart';
import '../../services/token_services.dart';

final class TokenServiceImpl implements TokenServices {
  const TokenServiceImpl(this._dio, this._secureStorage);

  final Dio _dio;
  final SecureStorage _secureStorage;

  @override
  Future<String?> getAccessToken() async =>
      await _secureStorage.read(AppSecureStorageKeys.accessTokenKey);

  @override
  Future<String?> getRefreshToken() async =>
      await _secureStorage.read(AppSecureStorageKeys.refreshTokenKey);

  @override
  Future<RefreshTokenResponse> refreshToken(String? refreshToken) async {
    final response = await _dio.post<Map<String, dynamic>>(
        AppApi.refreshTokenEndpoint,
        data: {AppNetworkSettings.refreshTokenKey: refreshToken});

    if (response.statusCode == HttpStatus.ok) {
      return RefreshTokenResponse.fromJson(response.data ?? {});
    } else {
      throw DioException(
          requestOptions: response.requestOptions, response: response);
    }
  }

  @override
  Future<void> saveTokens(String accessToken, String refreshToken) =>
      Future.wait([
        _secureStorage.write(AppSecureStorageKeys.accessTokenKey, accessToken),
        _secureStorage.write(
            AppSecureStorageKeys.refreshTokenKey, refreshToken),
      ]);

  @override
  Future<void> clearTokens() => Future.wait([
        _secureStorage.delete(AppSecureStorageKeys.accessTokenKey),
        _secureStorage.delete(AppSecureStorageKeys.refreshTokenKey),
      ]);
}
