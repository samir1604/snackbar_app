import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../../common/common.dart';
import '../../features/auth/auth.dart';
import '../core.dart';
import 'in_memory_cache.dart';

final class LocalSettingsServices implements SettingsServices {
  const LocalSettingsServices(
    this._profileService,
    this._tokenService,
    this._storageService,
    this._cache,
  );

  final ProfileServices _profileService;
  final TokenServices _tokenService;
  final SecureStorage _storageService;
  final InMemoryCache _cache;

  @override
  Future<void> initialize() async {
    await _getKeepSinged();

    debugPrint('Initialize: $keepMeSignedIn');

    if (keepMeSignedIn) {
      Future.wait([
        _getProfile(),
        _getTokens(),
      ]);
    }
  }

  @override
  Future<void> clearSettings() async {
    _cache.clear();

    await Future.wait([
      _profileService.clearStorageProfile(),
      _tokenService.clearStorageTokens(),
      _clearKeepSignedIn(),
    ]);
  }

  @override
  User? get user => _cache.read(SecureStorageKeys.profileStorageKey);

  @override
  bool get keepMeSignedIn =>
      _cache.read(SecureStorageKeys.keepMeSingedInKey)?.toLowerCase() == 'true';

  @override
  String get accessToken =>
      _cache.read(SecureStorageKeys.accessTokenStorageKey) ?? '';

  @override
  String get refreshToken =>
      _cache.read(SecureStorageKeys.refreshTokenStorageKey) ?? '';

  @override
  bool get isLoggedIn => accessToken.isNotEmpty && refreshToken.isNotEmpty;

  @override
  Future<void> saveProfile(User user) async {
    _cache.write(key: SecureStorageKeys.profileStorageKey, value: user);

    if (keepMeSignedIn) {
      _profileService.saveProfileToStorage(user);
    }
  }

  Future<void> _getProfile() async => _cache.write(
      key: SecureStorageKeys.profileStorageKey,
      value: await _profileService.getStorageProfile());

  @override
  Future<void> saveKeepSinged(bool keepSinged) async {
    _cache.write(
        key: SecureStorageKeys.keepMeSingedInKey, value: keepSinged.toString());

    await _storageService.write(
        SecureStorageKeys.keepMeSingedInKey, keepSinged.toString());
  }

  Future<void> _getKeepSinged() async => _cache.write(
      key: SecureStorageKeys.keepMeSingedInKey,
      value: await _storageService.read(SecureStorageKeys.keepMeSingedInKey));

  @override
  Future<void> saveTokens(String accessToken, String refreshToken) async {
    _cache.write(
        key: SecureStorageKeys.accessTokenStorageKey, value: accessToken);
    _cache.write(
        key: SecureStorageKeys.refreshTokenStorageKey, value: refreshToken);

    if (keepMeSignedIn) {
      await _tokenService.saveTokensToStorage(accessToken, refreshToken);
    }
  }

  Future<void> _getTokens() async {
    _cache.write(
        key: SecureStorageKeys.accessTokenStorageKey,
        value: await _tokenService.getStorageAccessToken());
    _cache.write(
        key: SecureStorageKeys.refreshTokenStorageKey,
        value: await _tokenService.getStorageRefreshToken());
  }

  Future<void> _clearKeepSignedIn() =>
      _storageService.delete(SecureStorageKeys.keepMeSingedInKey);
}
