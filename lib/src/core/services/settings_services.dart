import 'dart:async';

import '../../features/auth/auth.dart';

abstract interface class SettingsServices {
  Future<void> initialize();

  Future<void> clearSettings();

  User? get user;

  bool get keepMeSignedIn;

  String get accessToken;

  String get refreshToken;

  bool get isLoggedIn;

  Future<void> saveKeepSinged(bool keepSinged);

  Future<void> saveProfile(User user);

  Future<void> saveTokens(String accessToken, String refreshToken);
}
