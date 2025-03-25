import 'dart:async';

import '../../features/auth/auth.dart';

abstract interface class SettingsServices {
  Future<void> clearSettings();

  Future<User?> get user;

  Future<String> get token;

  Future<String> get refreshToken;

  Future<bool> get keepMeSignedIn;

  Future<bool> get isLoggedIn;

  Future<void> saveKeepSinged(bool keepSinged);

  Future<void> initialize();

  void setLoginTimeStamp();

  DateTime? get loginTimeStamp;
}
