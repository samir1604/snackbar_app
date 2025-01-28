import 'dart:io';

import 'package:dio/dio.dart';

import '../../common/constants/endpoint_strings.dart';
import '../../common/constants/network_settings.dart';
import '../../common/constants/secure_storage_keys.dart';
import '../../features/auth/data/models/response/refresh_token_response.dart';
import '../services/secure_storage.dart';
import '../services/token_services.dart';

final class TokenServiceImpl implements TokenServices {
  const TokenServiceImpl(this._dio, this._secureStorage);

  final Dio _dio;
  final SecureStorage _secureStorage;

  @override
  Future<String?> getAccessToken() async =>
      await _secureStorage.read(SecureStorageKeys.accessTokenKey);

  @override
  Future<String?> getRefreshToken() async =>
      await _secureStorage.read(SecureStorageKeys.refreshTokenKey);

  @override
  Future<RefreshTokenResponse> refreshToken(String? refreshToken) async {
    final response = await _dio.post<Map<String, dynamic>>(
        EndpointStrings.refreshTokenEndpoint,
        data: {NetworkSettings.refreshTokenKey: refreshToken});

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
        _secureStorage.write(SecureStorageKeys.accessTokenKey, accessToken),
        _secureStorage.write(
            SecureStorageKeys.refreshTokenKey, refreshToken),
      ]);

  @override
  Future<void> clearTokens() => Future.wait([
        _secureStorage.delete(SecureStorageKeys.accessTokenKey),
        _secureStorage.delete(SecureStorageKeys.refreshTokenKey),
      ]);
}
