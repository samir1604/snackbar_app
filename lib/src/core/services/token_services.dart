import '../../features/auth/data/models/response/refresh_token_response.dart';

abstract interface class TokenServices {
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<RefreshTokenResponse> refreshToken(String? refreshToken);
  Future<void> saveTokens(String accessToken, String refreshToken);
  Future<void> clearTokens();
}