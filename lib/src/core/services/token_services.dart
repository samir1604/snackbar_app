import '../../features/auth/data/models/refresh_token_model.dart';

abstract interface class TokenServices {
  Future<String?> getStorageAccessToken();
  Future<String?> getStorageRefreshToken();
  Future<RefreshTokenModel> getRefreshToken(String userId, String? refreshToken);
  Future<void> saveTokensToStorage(String accessToken, String refreshToken);
  Future<void> clearStorageTokens();
}