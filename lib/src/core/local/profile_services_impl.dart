import 'dart:convert';

import '../../common/common.dart';

import '../../features/auth/auth.dart';
import '../core.dart';

final class ProfileServicesImpl implements ProfileServices {
  const ProfileServicesImpl(this._storage);

  final SecureStorage _storage;

  @override
  Future<void> clearStorageProfile() async =>
      await _storage.delete(SecureStorageKeys.profileStorageKey);

  @override
  Future<User?> getStorageProfile() async {
    final jsonString =
        await _storage.read(SecureStorageKeys.profileStorageKey);
    if (jsonString == null || jsonString.isEmpty) return null;

    final Map<String, dynamic> jsonValue =
        json.decode(jsonString) as Map<String, dynamic>;
    return User.fromJson(jsonValue);
  }

  @override
  Future<void> saveProfileToStorage(User user) async {
    final Map<String, dynamic> jsonValue = user.toJson();
    final String jsonString = json.encode(jsonValue);
    await _storage.write(SecureStorageKeys.profileStorageKey, jsonString);
  }

  @override
  Future<bool> isLogged() async {
    final jsonString =
        await _storage.read(SecureStorageKeys.profileStorageKey);
    return !(jsonString == null || jsonString.isEmpty);
  }
}
