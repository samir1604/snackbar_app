import '../../common/constants/secure_storage_keys.dart';
import '../services/secure_storage.dart';
import '../services/token_services.dart';

final class TokenStorageServices implements TokenServices {
  const TokenStorageServices(this._secureStorage);

  final SecureStorage _secureStorage;

  @override
  Future<String?> getStorageAccessToken() async =>
      await _secureStorage.read(SecureStorageKeys.accessTokenStorageKey);

  @override
  Future<String?> getStorageRefreshToken() async =>
      await _secureStorage.read(SecureStorageKeys.refreshTokenStorageKey);

  /*
  @override
  Future<RefreshTokenModel> getRefreshToken(String userId, String? refreshToken) async {
    final response = await _dio.post<Map<String, dynamic>>(
        EndpointStrings.refreshTokenEndpoint,
        data: {
          'id': userId,
          NetworkSettings.refreshTokenKey: refreshToken,
        });

    if (response.statusCode == HttpStatus.ok) {
      return RefreshTokenModel.fromJson(response.data ?? {});
    } else {
      throw DioException(
          requestOptions: response.requestOptions, response: response);
    }
  }

   */

  @override
  Future<void> saveTokensToStorage(String accessToken, String refreshToken) =>
      Future.wait([
        _secureStorage.write(
            SecureStorageKeys.accessTokenStorageKey, accessToken),
        _secureStorage.write(
            SecureStorageKeys.refreshTokenStorageKey, refreshToken),
      ]);

  @override
  Future<void> clearStorageTokens() => Future.wait([
        _secureStorage.delete(SecureStorageKeys.accessTokenStorageKey),
        _secureStorage.delete(SecureStorageKeys.refreshTokenStorageKey),
      ]);
}
