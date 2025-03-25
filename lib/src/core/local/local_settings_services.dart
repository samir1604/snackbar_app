import 'dart:async';

import '../../common/common.dart';
import '../../features/auth/auth.dart';
import '../core.dart';

final class LocalSettingsServices implements SettingsServices {
  const LocalSettingsServices(this._profile, this._tokens, this._storage);

  final ProfileServices _profile;
  final TokenServices _tokens;
  final SecureStorage _storage;

  static User? _currentUser;
  static String _token = '';
  static String _refreshToken = '';
  static String? _keepMeSingIn;
  static DateTime? _loginTimeStamp;

  @override
  Future<void> clearSettings() async {
    _currentUser = null;
    _token = '';
    _refreshToken = '';
    _keepMeSingIn = null;

    Future.wait([
      _profile.clearStorageProfile(),
      _tokens.clearStorageTokens(),
    ]);
  }

  @override
  Future<void> initialize() async {
    Future.wait([
      _getProfile(),
      _isSigned(),
      _getToken(),
      _getRefreshToken(),
    ]);
  }

  @override
  Future<User?> get user async => await _getProfile();

  Future<User?> _getProfile() async =>
      _currentUser ??= await _profile.getStorageProfile();

  @override
  Future<bool> get keepMeSignedIn async => await _isSigned();

  @override
  Future<bool> get isLoggedIn async {
    final isToken = await _getToken();
    return isToken.isNotEmpty;
  }

  Future<bool> _isSigned() async {
    _keepMeSingIn ??= await _storage.read(SecureStorageKeys.keepMeSingInKey);
    return _keepMeSingIn?.toLowerCase() == 'true';
  }

  @override
  Future<String> get token async => _getToken();

  Future<String> _getToken() async {
    if (_token.isEmpty) {
      _token = await _tokens.getStorageAccessToken() ?? '';
    }
    return _token;
  }

  @override
  Future<String> get refreshToken async => _getRefreshToken();

  Future<String> _getRefreshToken() async {
    if (_refreshToken.isEmpty) {
      _refreshToken = await _tokens.getStorageRefreshToken() ?? '';
    }
    return _refreshToken;
  }

  @override
  Future<void> saveKeepSinged(bool keepSinged) async {
    _keepMeSingIn = keepSinged.toString();
    await _storage.write(
        SecureStorageKeys.keepMeSingInKey, keepSinged.toString());
  }

  @override
  void setLoginTimeStamp() {
    _loginTimeStamp = DateTime.now();
  }

  @override
  DateTime? get loginTimeStamp => _loginTimeStamp;
}
