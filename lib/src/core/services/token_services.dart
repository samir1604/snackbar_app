abstract interface class TokenServices {
  Future<String?> getStorageAccessToken();

  Future<String?> getStorageRefreshToken();

  Future<void> saveTokensToStorage(String accessToken, String refreshToken);

  Future<void> clearStorageTokens();
}
